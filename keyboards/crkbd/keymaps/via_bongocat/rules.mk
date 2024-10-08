MOUSEKEY_ENABLE = no     # Mouse keys
VIA_ENABLE      = yes    # Enable VIA
LTO_ENABLE      = yes

CONVERT_TO      = rp2040_ce

# BEGIN CHANGE
OLED_ENABLE = yes
WPM_ENABLE = yes

# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no    # Breathing sleep LED during USB suspend

# If you want to change the display of OLED, you need to change here
SRC +=  ./lib/rgb_state_reader.c \
        ./lib/layer_state_reader.c \
        ./lib/logo_reader.c \
        ./lib/keylogger.c \
        # ./lib/mode_icon_reader.c \
        # ./lib/host_led_state_reader.c \
        # ./lib/timelogger.c \

# END CHANGE
