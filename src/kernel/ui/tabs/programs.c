#include "sys.h"
#include "ui/ui.h"
#include "cli.h"
#include "ui/programs.h"
#include "video/video.h"

struct ui_tab_program_program
{
   char *name;
    unsigned int namelength;
    void (*start)();
    void (*kbhandler)(unsigned char scancode);
};

unsigned int ui_tab_program_programcount;
unsigned int ui_tab_program_currentselectedprogram;
struct ui_tab_program_program ui_tab_program_programlist[5];

void ui_tab_programs_init()
{
//Zero variables
    ui_tab_program_programcount=5;
    ui_tab_program_currentselectedprogram=0;

//Add crashtest
    ui_tab_program_programlist[0].name="Crashtest";
    ui_tab_program_programlist[0].namelength=sizeof("Crashtest");
    ui_tab_program_programlist[0].start=program_crashtest_start;
    ui_tab_program_programlist[0].kbhandler=program_crashtest_kbhandler;

//Add debug info
    ui_tab_program_programlist[1].name="Debug Info";
    ui_tab_program_programlist[1].namelength=sizeof("Debug Info");
    ui_tab_program_programlist[1].start=program_debuginfo_start;
    ui_tab_program_programlist[1].kbhandler=program_debuginfo_kbhandler;

//Add VGA test
    ui_tab_program_programlist[2].name="VGA Test";
    ui_tab_program_programlist[2].namelength=sizeof("VGA Test");
    ui_tab_program_programlist[2].start=program_vgatest_start;
    ui_tab_program_programlist[2].kbhandler=program_vgatest_kbhandler;

//Add CPUID Info
    ui_tab_program_programlist[3].name="CPUID Info";
    ui_tab_program_programlist[3].namelength=sizeof("CPUID Info");
    ui_tab_program_programlist[3].start=program_cpuidinfo_start;
    ui_tab_program_programlist[3].kbhandler=program_cpuidinfo_kbhandler;

//Add floppy test
    ui_tab_program_programlist[4].name="Floppy Test";
    ui_tab_program_programlist[4].namelength=sizeof("Floppy Test");
    ui_tab_program_programlist[4].start=program_floppytest_start;
    ui_tab_program_programlist[4].kbhandler=program_floppytest_kbhandler;
}

void ui_tab_programs_drawlist()
{
//Position cursor at beginning
    cli_positioncursor(0,0);

//Loop through programs
    unsigned int i;
    for(i=0;i<ui_tab_program_programcount;i++)
    {
        cli_putch('\n');
        if(i==ui_tab_program_currentselectedprogram)
        {
            cli_settextcolour(0xF0);
            cli_putch('[');
            cli_puts(ui_tab_program_programlist[i].name);
            cli_putch(']');
            cli_settextcolour(0x0F);
        }else{
            cli_putch('[');
            cli_puts(ui_tab_program_programlist[i].name);
            cli_putch(']');
        }
    }
}

void ui_tab_programs_start()
{
//Draw program list
    ui_tab_programs_drawlist();
}

void ui_tab_programs_runprogram(unsigned int programid)
{
//Clear the screen
    cli_cls();
    cli_setrect(0);
    cli_positioncursor(0,0);

//Set keyboard handler
    kb_setkeyboardhandler(ui_tab_program_programlist[programid].kbhandler);

//Set clock handler
    rtc_setclockhandler(0);

//Call start function
    ui_tab_program_programlist[programid].start();
}

void ui_tab_programs_endprogram()
{
//Set to text mode
    video_setdriver(video_vgatext_getdriver(),0);

//Restart UI
    ui_start();
}

void ui_tab_programs_kbhandler(unsigned char scancode)
{
//Change tab with left and right keys
    if(scancode==0x4D)
        ui_settab(1);

//Select program with up and down keys
    if(scancode==0x50)
    {
        if(ui_tab_program_currentselectedprogram==ui_tab_program_programcount-1){
            ui_tab_program_currentselectedprogram=0;
        }else{
            ui_tab_program_currentselectedprogram++;
        }
        ui_tab_programs_drawlist();
    }
    if(scancode==0x48)
    {
        if(ui_tab_program_currentselectedprogram==0){
            ui_tab_program_currentselectedprogram=ui_tab_program_programcount-1;
        }else{
            ui_tab_program_currentselectedprogram--;
        }
        ui_tab_programs_drawlist();
    }

//Run program with enter key
    if(scancode==0x1C)
        ui_tab_programs_runprogram(ui_tab_program_currentselectedprogram);
}
