#include "cli.h"
#include "ui/ui.h"
#include "ui/programs.h"
#include "video/video.h"

void program_vgatest_start()
{
//Print message
    cli_puts("Welcome to the ArcaneOS VGA Test!\n\n");
    cli_puts("Press enter to start test.\n");
    cli_puts("You can quit the program at any time by pressing Esc.\n");
}

void program_vgatest_runtest()
{
//Start VGA driver
    video_setdriver(video_vga_getdriver());

//Plot a pixel
    video_putpixel(10,10,0x0F);
}

void program_vgatest_kbhandler(unsigned char scancode)
{
//Esc quits an application
    if(scancode==0x01)
        ui_tab_programs_endprogram();

//Enter crashes the kernel
    if(scancode==0x1C)
        program_vgatest_runtest();
}