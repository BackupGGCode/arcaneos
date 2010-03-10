#include "video/video.h"
#include "libs/memory.h"

struct video_driver video_driverlist[2];
struct video_driver* video_currentdriver;


void video_init()
{
//Zero current video driver
    video_currentdriver=0;

//Zero driver list
    memset((unsigned char*)video_driverlist,0,sizeof(struct video_driver)*2);

//Setup driver list
    video_text_init(&video_driverlist[0]);
    video_vga_init(&video_driverlist[1]);
}

void video_setdriver(struct video_driver* Driver)
{
//End current driver
    if(video_currentdriver!=0)
        if(video_currentdriver->end!=0)
            video_currentdriver->end();

//Start new driver
    if(Driver->start!=0)
        Driver->start();

//Set current driver
    video_currentdriver=Driver;
}

void video_putchar(unsigned int x,unsigned int y,char character)
{
//Call put char function
    if(video_currentdriver!=0)
        if(video_currentdriver->putchar!=0)
            video_currentdriver->putchar(x,y,character);
}

char video_getchar(unsigned int x,unsigned int y)
{
//Call get char function
    if(video_currentdriver!=0)
        if(video_currentdriver->getchar!=0)
            return video_currentdriver->getchar(x,y);

//Return nothing
    return 0;
}

void video_positioncursor(unsigned int x,unsigned int y)
{
//Call position cursor function
    if(video_currentdriver!=0)
        if(video_currentdriver->positioncursor!=0)
            video_currentdriver->positioncursor(x,y);
}

void video_putpixel(unsigned int x,unsigned int y,unsigned int colour)
{
//Call put pixel function
    if(video_currentdriver!=0)
        if(video_currentdriver->putpixel!=0)
            video_currentdriver->putpixel(x,y,colour);
}

unsigned int video_getpixel(unsigned int x,unsigned int y)
{
//Call get pixel function
    if(video_currentdriver!=0)
        if(video_currentdriver->getpixel!=0)
            return video_currentdriver->getpixel(x,y);

//Return nothing
    return 0;
}

unsigned int video_getgraphicsrows()
{
//Get graphics rows
    if(video_currentdriver!=0)
        return video_currentdriver->GraphicsRows;

//Return nothing
    return 0;
}

unsigned int video_getgraphicscollumns()
{
//Get graphics collumns
    if(video_currentdriver!=0)
        return video_currentdriver->GraphicsCols;

//Return nothing
    return 0;
}

unsigned int video_gettextrows()
{
//Get text rows
    if(video_currentdriver!=0)
        return video_currentdriver->TextRows;

//Return nothing
    return 0;
}

unsigned int video_gettextcollumns()
{
//Get text collumns
    if(video_currentdriver!=0)
        return video_currentdriver->TextCols;

//Return nothing
    return 0;
}