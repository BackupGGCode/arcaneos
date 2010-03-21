#include "sys.h"
#include "cli.h"
#include "ui/ui.h"
#include "boot.h"
#include "video/video.h"
#include "mm.h"
#include "paging.h"
#include "acpi.h"
#include "mt.h"
#include "syscall.h"
#include "real.h"
#include "vesa.h"

extern void start();
extern void kernel_end();

void test()
{
    ui_start();
    for(;;)
        __asm__ __volatile__ ("hlt");
}
int main()
{
//Start video driver (must always be before loading message)
    video_init();
    video_setdriver(video_vgatext_getdriver(),0);

//Put loading message
    cli_puts("ArcaneOS Loading...\n");

//Setup kernel
    gdt_init();
    idt_init();
    isr_init();
    irq_init();
    timer_init();
    kb_init();
    ui_init();
    mm_init(); // Must be called before pg_init()
    pg_init();
    cpuid_init();
    cmos_init();
    rtc_init();
    acpi_init();
    power_init();
    mt_init();
    syscall_init();
    real_init();
    vesa_init();

    __asm__ __volatile__ ("sti");

//Enable ACPI
    acpi_enable();

//Create thread for ui
    mt_create_thread(mt_kernel_process,test,2);

//Endless loop to prevent bugs when all threads are sleeping
    for(;;)
        __asm__ __volatile__ ("hlt");
}
