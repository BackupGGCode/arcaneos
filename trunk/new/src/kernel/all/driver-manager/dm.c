#include <dm.h>
#include <vfs.h>
#include <console.h>

extern struct vfs_filesystem_driver devfs_fsdriver;

void dm_init()
{
    if(vfs_open_filesystem(&devfs_fsdriver,0,"/devices")){
        console_puts_protected("DEVICE MANAGER: DevFS successfully mounted to /devices.\n");
    }
}


void dm_register_class(struct dm_class* dclass)
{

}

void dm_unregister_class(struct dm_class* dclass)
{

}


void dm_register_driver(struct dm_driver* driver)
{

}

void dm_unregister_driver(struct dm_driver* driver)
{
    
}


void dm_register_device(struct dm_device* device)
{

}

void dm_unregister_device(struct dm_device* device)
{

}