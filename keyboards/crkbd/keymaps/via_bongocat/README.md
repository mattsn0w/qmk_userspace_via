# Links

The bongo cat and oled configuration here is from one of the repos below. I am pretty sure it is the first one.

https://github.com/Rwarcards762/lily58_bongocat/tree/master  

https://github.com/nwii/oledbongocat  

https://github.com/pedker/OLED-BongoCat-Revision  

https://github.com/dancarroll/qmk-bongo/tree/main  

https://github.com/Externalizable/bongo.cat  

https://github.com/riiadesign/lily58-kiumi  


## Build notes
This keymap was built in September 2024 after upstream qmk_firmware moved all VIA keymaps to another repo.  

```
# Clone the new qmk_userspace_via repo
git clone https://github.com/the-via/qmk_userspace_via

# Tell QMK to overlay a different directory for compiling keymaps.
qmk config user.overlay_dir="$(realpath qmk_userspace_via)"

# compile upstream qmk_firmware with the via_bongcat keymap overlay.
qmk compile -kb crkbd/rev1 -km via_bongocat
```

## Install firmware
Double tap your reset button (because why wouldn't you solder that on?!) to get the MCU bootloader storage mounted via USB mass storage.  
Copy the built firmware file onto each of the split halves one at a time.  

```
sudo mkdir /mnt/rpiusb && sudo mount /dev/(whater the sd device is) /mnt/rpiusb # orauto mount
sudo cp qmk_userspace_via/crkbd_rev1_via_bongocat.uf2 /mnt/rpiusb/ && sudo umount /mnt/rpiusb
```
