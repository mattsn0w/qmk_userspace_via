VIA_ENABLE = yes
RGB_MATRIX_ENABLE = no
ENCODER_MAP_ENABLE = yes

# Space savings
LTO_ENABLE = yes 
CONSOLE_ENABLE = no
COMMAND_ENABLE = no
MOUSEKEY_ENABLE = no
AVR_USE_MINIMAL_PRINTF = yes
#EXTRAKEY_ENABLE = no

# BEGIN CHANGE
OLED_ENABLE = yes
WPM_ENABLE = yes

# Enable if using an rp2040 MCU.
#CONVERT_TO      = rp2040_ce

# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no    # Breathing sleep LED during USB suspend

# If you want to change the display of OLED, you need to change here
SRC +=  ../crkbd/lib/layer_state_reader.c \
        ../crkbd/lib/logo_reader.c \
        # ./lib/keylogger.c \
        # ./lib/mode_icon_reader.c \
        # ./lib/host_led_state_reader.c \
        # ./lib/timelogger.c \

# END CHANGE
