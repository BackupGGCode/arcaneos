#include <x86/sys.h>
#include <console.h>
#include <string.h>
#include <x86/vbe_real.h>
#include <x86/gdt.h>
#include <x86/mt.h>
#include <x86/syscall.h>
#include <vfs.h>
#include <dm.h>

void kload()
{
    console_puts_protected("KERNEL: Loading: GDT");
    gdt_init();
    console_puts_protected(" IDT");
    idt_init();
    console_puts_protected(" ISR");
    isr_init();
    console_puts_protected(" IRQ");
    irq_init();
    console_puts_protected(" CPUID");
    cpuid_init();
    console_puts_protected(" [Finished]\n");

    console_puts_protected("CPUID: Vendor: ");
    struct cpuid_struct* CPUIDStruct=cpuid_getstruct();
    console_puts_protected(CPUIDStruct->vendor);
    console_puts_protected(".\n");

    timer_init();

    pg_init();
    mm_init();
    lm_init();
    
    pg_enable_paging();

    vfs_init();

    dm_init();
    mt_init();
    syscall_init();


    //     .=============================================.
    //     |                   VBE Test                  |
    //     `=============================================`
    // List VBE modes
    /*
    struct vbe_info_block* info = (struct vbe_info_block*)mm_low_alloc(sizeof(struct vbe_info_block));

    vbe_get_controller_info(info);
    
    console_puts_protected("VBE Modes:\n");
    unsigned short* modes = info->video_mode_ptr;
    
    struct vbe_mode_info_block* mode_info=(struct vbe_mode_info_block*)mm_low_alloc(sizeof(struct vbe_mode_info_block));
    while (*modes != 0xFFFF) {
        console_puts_protected("0x");
        int mode=*(modes++);
        console_putu32_protected(mode, 16);
        console_puts_protected(": ");
        vbe_get_mode_info(mode,mode_info);
        console_putu32_protected(mode_info->x_resolution, 10);
        console_puts_protected("x");
        console_putu32_protected(mode_info->y_resolution, 10);
        console_puts_protected("x");
        console_putu32_protected(mode_info->bits_per_pixel, 10);
        console_puts_protected(" @ 0x");
        console_putu32_protected(mode_info->phys_base_addr, 16);
        console_puts_protected("\n");

    }
    mm_low_free((unsigned char*)mode_info);
    console_puts_protected("\n");

    mm_low_free((unsigned char*)info);

//#define VBE_TEST
#ifdef VBE_TEST

    // Set mode to 24-bit 800x600
    vbe_set_mode(0x115, 0);

    struct vbe_mode_info_block* modeinfo = (struct vbe_mode_info_block*)mm_low_alloc(sizeof(struct vbe_mode_info_block));
    vbe_get_mode_info(0x115, modeinfo);

    // Map video memory into virtual memory
    int i;
    for (i = 0; i < ((800*600*3+4095)/4096); i++) {
        void* ptr = (void*)(modeinfo->phys_base_addr + i*4096);
        pg_map_page(pg_kernel_directory, ptr, ptr, 2);
    }

    // Draw cool effect!
    int x, y;
    for (i = -200; i < 600; i++) {
        unsigned char* addr = (unsigned char*)modeinfo->phys_base_addr;
        for (y = 0; y < 600; y++)
            for (x = 0; x < 800; x++)
            {
                // Red
                *(addr++) = 0x00;
                *(addr++) = 0x00;
                *(addr++) = i+y/5 < 0 ? 0 : i+y/5 > 255 ? 255 : i+y/5;
            }
        for (y = 0; y < 1000000; y++)
            x=y;
    }

    mm_low_free((unsigned char*)modeinfo);
    vbe_set_mode(0x3, 0);
#endif

     */
    //     .=============================================.
    //     |               End of VBE Test               |
    //     `=============================================`
}