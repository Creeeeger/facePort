.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final whitelist FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final whitelist FLAG_EDITOR_ACTION:I = 0x10

.field public static final whitelist FLAG_FALLBACK:I = 0x400

.field public static final blacklist FLAG_FROM_KEY_CUSTOMIZATION:I = 0x10000000

.field public static final whitelist FLAG_FROM_SYSTEM:I = 0x8

.field public static final blacklist FLAG_FROM_WFD:I = 0x8000000

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final whitelist FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final whitelist FLAG_LONG_PRESS:I = 0x80

.field public static final blacklist FLAG_NOT_RESET_USER_ACTIVITY_TIMEOUT:I = 0x1000000

.field public static final greylist-max-o FLAG_PREDISPATCH:I = 0x20000000

.field public static final whitelist FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final greylist-max-o FLAG_START_TRACKING:I = 0x40000000

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final whitelist FLAG_TRACKING:I = 0x200

.field public static final whitelist FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final whitelist FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEYCODE_0:I = 0x7

.field public static final whitelist KEYCODE_1:I = 0x8

.field public static final whitelist KEYCODE_11:I = 0xe3

.field public static final whitelist KEYCODE_12:I = 0xe4

.field public static final whitelist KEYCODE_2:I = 0x9

.field public static final whitelist KEYCODE_3:I = 0xa

.field public static final whitelist KEYCODE_3D_MODE:I = 0xce

.field public static final blacklist KEYCODE_3FINGER_BOTTOM:I = 0x440

.field public static final blacklist KEYCODE_3FINGER_LEFT:I = 0x43d

.field public static final blacklist KEYCODE_3FINGER_RELEASE:I = 0x441

.field public static final blacklist KEYCODE_3FINGER_RIGHT:I = 0x43e

.field public static final blacklist KEYCODE_3FINGER_TOP:I = 0x43f

.field public static final blacklist KEYCODE_3G:I = 0x40c

.field public static final whitelist KEYCODE_4:I = 0xb

.field public static final whitelist KEYCODE_5:I = 0xc

.field public static final whitelist KEYCODE_6:I = 0xd

.field public static final whitelist KEYCODE_7:I = 0xe

.field public static final whitelist KEYCODE_8:I = 0xf

.field public static final whitelist KEYCODE_9:I = 0x10

.field public static final whitelist KEYCODE_A:I = 0x1d

.field public static final whitelist KEYCODE_ALL_APPS:I = 0x11c

.field public static final whitelist KEYCODE_ALT_LEFT:I = 0x39

.field public static final whitelist KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final blacklist KEYCODE_ANC:I = 0x438

.field public static final whitelist KEYCODE_APOSTROPHE:I = 0x4b

.field public static final blacklist KEYCODE_APPLICATION:I = 0x3ea

.field public static final blacklist KEYCODE_APP_SHORTCUT_1:I = 0x442

.field public static final blacklist KEYCODE_APP_SHORTCUT_2:I = 0x443

.field public static final blacklist KEYCODE_APP_SHORTCUT_3:I = 0x444

.field public static final whitelist KEYCODE_APP_SWITCH:I = 0xbb

.field public static final whitelist KEYCODE_ASSIST:I = 0xdb

.field public static final whitelist KEYCODE_AT:I = 0x4d

.field public static final whitelist KEYCODE_AVR_INPUT:I = 0xb6

.field public static final whitelist KEYCODE_AVR_POWER:I = 0xb5

.field public static final whitelist KEYCODE_B:I = 0x1e

.field public static final whitelist KEYCODE_BACK:I = 0x4

.field public static final whitelist KEYCODE_BACKSLASH:I = 0x49

.field public static final blacklist KEYCODE_BLUETOOTH:I = 0x40d

.field public static final whitelist KEYCODE_BOOKMARK:I = 0xae

.field public static final whitelist KEYCODE_BREAK:I = 0x79

.field public static final whitelist KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final whitelist KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final whitelist KEYCODE_BUTTON_1:I = 0xbc

.field public static final whitelist KEYCODE_BUTTON_10:I = 0xc5

.field public static final whitelist KEYCODE_BUTTON_11:I = 0xc6

.field public static final whitelist KEYCODE_BUTTON_12:I = 0xc7

.field public static final whitelist KEYCODE_BUTTON_13:I = 0xc8

.field public static final whitelist KEYCODE_BUTTON_14:I = 0xc9

.field public static final whitelist KEYCODE_BUTTON_15:I = 0xca

.field public static final whitelist KEYCODE_BUTTON_16:I = 0xcb

.field public static final whitelist KEYCODE_BUTTON_2:I = 0xbd

.field public static final whitelist KEYCODE_BUTTON_3:I = 0xbe

.field public static final whitelist KEYCODE_BUTTON_4:I = 0xbf

.field public static final whitelist KEYCODE_BUTTON_5:I = 0xc0

.field public static final whitelist KEYCODE_BUTTON_6:I = 0xc1

.field public static final whitelist KEYCODE_BUTTON_7:I = 0xc2

.field public static final whitelist KEYCODE_BUTTON_8:I = 0xc3

.field public static final whitelist KEYCODE_BUTTON_9:I = 0xc4

.field public static final whitelist KEYCODE_BUTTON_A:I = 0x60

.field public static final whitelist KEYCODE_BUTTON_B:I = 0x61

.field public static final whitelist KEYCODE_BUTTON_C:I = 0x62

.field public static final blacklist KEYCODE_BUTTON_GAME:I = 0x41a

.field public static final whitelist KEYCODE_BUTTON_L1:I = 0x66

.field public static final whitelist KEYCODE_BUTTON_L2:I = 0x68

.field public static final whitelist KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final whitelist KEYCODE_BUTTON_R1:I = 0x67

.field public static final whitelist KEYCODE_BUTTON_R2:I = 0x69

.field public static final whitelist KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final whitelist KEYCODE_BUTTON_START:I = 0x6c

.field public static final whitelist KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final whitelist KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final whitelist KEYCODE_BUTTON_X:I = 0x63

.field public static final whitelist KEYCODE_BUTTON_Y:I = 0x64

.field public static final whitelist KEYCODE_BUTTON_Z:I = 0x65

.field public static final whitelist KEYCODE_C:I = 0x1f

.field public static final whitelist KEYCODE_CALCULATOR:I = 0xd2

.field public static final whitelist KEYCODE_CALENDAR:I = 0xd0

.field public static final whitelist KEYCODE_CALL:I = 0x5

.field public static final whitelist KEYCODE_CAMERA:I = 0x1b

.field public static final whitelist KEYCODE_CAPS_LOCK:I = 0x73

.field public static final whitelist KEYCODE_CAPTIONS:I = 0xaf

.field public static final whitelist KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final whitelist KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final whitelist KEYCODE_CLEAR:I = 0x1c

.field public static final blacklist KEYCODE_CLOSE_CNP_FROM_IME:I = 0x44e

.field public static final whitelist KEYCODE_COMMA:I = 0x37

.field public static final whitelist KEYCODE_CONTACTS:I = 0xcf

.field public static final whitelist KEYCODE_COPY:I = 0x116

.field public static final whitelist KEYCODE_CTRL_LEFT:I = 0x71

.field public static final whitelist KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final whitelist KEYCODE_CUT:I = 0x115

.field public static final whitelist KEYCODE_D:I = 0x20

.field public static final whitelist KEYCODE_DEL:I = 0x43

.field public static final whitelist KEYCODE_DEMO_APP_1:I = 0x12d

.field public static final whitelist KEYCODE_DEMO_APP_2:I = 0x12e

.field public static final whitelist KEYCODE_DEMO_APP_3:I = 0x12f

.field public static final whitelist KEYCODE_DEMO_APP_4:I = 0x130

.field public static final blacklist KEYCODE_DEX_ON_OFF:I = 0x43c

.field public static final blacklist KEYCODE_DOUBLE_TAP:I = 0x436

.field public static final whitelist KEYCODE_DPAD_CENTER:I = 0x17

.field public static final whitelist KEYCODE_DPAD_DOWN:I = 0x14

.field public static final whitelist KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final whitelist KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final whitelist KEYCODE_DPAD_LEFT:I = 0x15

.field public static final whitelist KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final whitelist KEYCODE_DPAD_UP:I = 0x13

.field public static final whitelist KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final whitelist KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final whitelist KEYCODE_DVR:I = 0xad

.field public static final whitelist KEYCODE_E:I = 0x21

.field public static final whitelist KEYCODE_EISU:I = 0xd4

.field public static final blacklist KEYCODE_EMAIL:I = 0x3f0

.field public static final blacklist KEYCODE_END:I = 0x40b

.field public static final whitelist KEYCODE_ENDCALL:I = 0x6

.field public static final whitelist KEYCODE_ENTER:I = 0x42

.field public static final whitelist KEYCODE_ENVELOPE:I = 0x41

.field public static final whitelist KEYCODE_EQUALS:I = 0x46

.field public static final whitelist KEYCODE_ESCAPE:I = 0x6f

.field public static final whitelist KEYCODE_EXPLORER:I = 0x40

.field public static final whitelist KEYCODE_F:I = 0x22

.field public static final whitelist KEYCODE_F1:I = 0x83

.field public static final whitelist KEYCODE_F10:I = 0x8c

.field public static final whitelist KEYCODE_F11:I = 0x8d

.field public static final whitelist KEYCODE_F12:I = 0x8e

.field public static final whitelist KEYCODE_F2:I = 0x84

.field public static final whitelist KEYCODE_F3:I = 0x85

.field public static final whitelist KEYCODE_F4:I = 0x86

.field public static final whitelist KEYCODE_F5:I = 0x87

.field public static final whitelist KEYCODE_F6:I = 0x88

.field public static final whitelist KEYCODE_F7:I = 0x89

.field public static final whitelist KEYCODE_F8:I = 0x8a

.field public static final whitelist KEYCODE_F9:I = 0x8b

.field public static final whitelist KEYCODE_FEATURED_APP_1:I = 0x129

.field public static final whitelist KEYCODE_FEATURED_APP_2:I = 0x12a

.field public static final whitelist KEYCODE_FEATURED_APP_3:I = 0x12b

.field public static final whitelist KEYCODE_FEATURED_APP_4:I = 0x12c

.field public static final blacklist KEYCODE_FN_LOCK:I = 0x44c

.field public static final blacklist KEYCODE_FN_UNLOCK:I = 0x44d

.field public static final whitelist KEYCODE_FOCUS:I = 0x50

.field public static final whitelist KEYCODE_FORWARD:I = 0x7d

.field public static final whitelist KEYCODE_FORWARD_DEL:I = 0x70

.field public static final whitelist KEYCODE_FUNCTION:I = 0x77

.field public static final whitelist KEYCODE_G:I = 0x23

.field public static final whitelist KEYCODE_GRAVE:I = 0x44

.field public static final whitelist KEYCODE_GUIDE:I = 0xac

.field public static final whitelist KEYCODE_H:I = 0x24

.field public static final whitelist KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final whitelist KEYCODE_HELP:I = 0x103

.field public static final whitelist KEYCODE_HENKAN:I = 0xd6

.field public static final whitelist KEYCODE_HOME:I = 0x3

.field public static final whitelist KEYCODE_I:I = 0x25

.field public static final whitelist KEYCODE_INFO:I = 0xa5

.field public static final whitelist KEYCODE_INSERT:I = 0x7c

.field public static final whitelist KEYCODE_J:I = 0x26

.field public static final whitelist KEYCODE_K:I = 0x27

.field public static final whitelist KEYCODE_KANA:I = 0xda

.field public static final whitelist KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final whitelist KEYCODE_L:I = 0x28

.field public static final whitelist KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final whitelist KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final blacklist KEYCODE_LAUNCH_HONEY_VOICE:I = 0x44f

.field public static final whitelist KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final whitelist KEYCODE_M:I = 0x29

.field public static final whitelist KEYCODE_MANNER_MODE:I = 0xcd

.field public static final whitelist KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final whitelist KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final whitelist KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final whitelist KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final whitelist KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final whitelist KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final whitelist KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final whitelist KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final whitelist KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final whitelist KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final whitelist KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final whitelist KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final whitelist KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final whitelist KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final whitelist KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final whitelist KEYCODE_MEDIA_STOP:I = 0x56

.field public static final whitelist KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final whitelist KEYCODE_MENU:I = 0x52

.field public static final whitelist KEYCODE_META_LEFT:I = 0x75

.field public static final whitelist KEYCODE_META_RIGHT:I = 0x76

.field public static final whitelist KEYCODE_MINUS:I = 0x45

.field public static final blacklist KEYCODE_MOUSE_ACTION:I = 0x424

.field public static final blacklist KEYCODE_MOUSE_APP_SHORTCUT_1:I = 0x445

.field public static final blacklist KEYCODE_MOUSE_APP_SHORTCUT_2:I = 0x446

.field public static final blacklist KEYCODE_MOUSE_APP_SHORTCUT_3:I = 0x447

.field public static final blacklist KEYCODE_MOUSE_APP_SHORTCUT_4:I = 0x448

.field public static final whitelist KEYCODE_MOVE_END:I = 0x7b

.field public static final whitelist KEYCODE_MOVE_HOME:I = 0x7a

.field public static final whitelist KEYCODE_MUHENKAN:I = 0xd5

.field public static final blacklist KEYCODE_MULTI_WINDOW:I = 0x425

.field public static final whitelist KEYCODE_MUSIC:I = 0xd1

.field public static final whitelist KEYCODE_MUTE:I = 0x5b

.field public static final whitelist KEYCODE_N:I = 0x2a

.field public static final whitelist KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final whitelist KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final whitelist KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final whitelist KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final blacklist KEYCODE_NETWORK_SEL:I = 0x417

.field public static final whitelist KEYCODE_NOTIFICATION:I = 0x53

.field public static final whitelist KEYCODE_NUM:I = 0x4e

.field public static final whitelist KEYCODE_NUMPAD_0:I = 0x90

.field public static final whitelist KEYCODE_NUMPAD_1:I = 0x91

.field public static final whitelist KEYCODE_NUMPAD_2:I = 0x92

.field public static final whitelist KEYCODE_NUMPAD_3:I = 0x93

.field public static final whitelist KEYCODE_NUMPAD_4:I = 0x94

.field public static final whitelist KEYCODE_NUMPAD_5:I = 0x95

.field public static final whitelist KEYCODE_NUMPAD_6:I = 0x96

.field public static final whitelist KEYCODE_NUMPAD_7:I = 0x97

.field public static final whitelist KEYCODE_NUMPAD_8:I = 0x98

.field public static final whitelist KEYCODE_NUMPAD_9:I = 0x99

.field public static final whitelist KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final whitelist KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final whitelist KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final whitelist KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final whitelist KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final whitelist KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final whitelist KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final whitelist KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final whitelist KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final whitelist KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final whitelist KEYCODE_NUM_LOCK:I = 0x8f

.field public static final whitelist KEYCODE_O:I = 0x2b

.field public static final whitelist KEYCODE_P:I = 0x2c

.field public static final whitelist KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final whitelist KEYCODE_PAGE_UP:I = 0x5c

.field public static final whitelist KEYCODE_PAIRING:I = 0xe1

.field public static final whitelist KEYCODE_PASTE:I = 0x117

.field public static final whitelist KEYCODE_PERIOD:I = 0x38

.field public static final whitelist KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final whitelist KEYCODE_PLUS:I = 0x51

.field public static final whitelist KEYCODE_POUND:I = 0x12

.field public static final whitelist KEYCODE_POWER:I = 0x1a

.field public static final whitelist KEYCODE_PROFILE_SWITCH:I = 0x120

.field public static final whitelist KEYCODE_PROG_BLUE:I = 0xba

.field public static final whitelist KEYCODE_PROG_GREEN:I = 0xb8

.field public static final whitelist KEYCODE_PROG_RED:I = 0xb7

.field public static final whitelist KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final whitelist KEYCODE_Q:I = 0x2d

.field public static final blacklist KEYCODE_QPANEL_ON_OFF:I = 0x3eb

.field public static final blacklist KEYCODE_QUICK_SETTINGS:I = 0x44a

.field public static final whitelist KEYCODE_R:I = 0x2e

.field public static final blacklist KEYCODE_RECENT_APPS:I = 0x3e9

.field public static final whitelist KEYCODE_REFRESH:I = 0x11d

.field public static final blacklist KEYCODE_RESET:I = 0x43b

.field public static final whitelist KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final whitelist KEYCODE_RO:I = 0xd9

.field public static final whitelist KEYCODE_S:I = 0x2f

.field public static final blacklist KEYCODE_SCREEN_CAPTURE:I = 0x3ec

.field public static final whitelist KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final whitelist KEYCODE_SEARCH:I = 0x54

.field public static final whitelist KEYCODE_SEMICOLON:I = 0x4a

.field public static final whitelist KEYCODE_SETTINGS:I = 0xb0

.field public static final blacklist KEYCODE_SFINDER:I = 0x428

.field public static final whitelist KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final whitelist KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final blacklist KEYCODE_SIM:I = 0x418

.field public static final blacklist KEYCODE_SIP_ON_OFF:I = 0x3ee

.field public static final whitelist KEYCODE_SLASH:I = 0x4c

.field public static final whitelist KEYCODE_SLEEP:I = 0xdf

.field public static final whitelist KEYCODE_SOFT_LEFT:I = 0x1

.field public static final whitelist KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final whitelist KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final whitelist KEYCODE_SPACE:I = 0x3e

.field public static final whitelist KEYCODE_STAR:I = 0x11

.field public static final whitelist KEYCODE_STB_INPUT:I = 0xb4

.field public static final whitelist KEYCODE_STB_POWER:I = 0xb3

.field public static final whitelist KEYCODE_STEM_1:I = 0x109

.field public static final whitelist KEYCODE_STEM_2:I = 0x10a

.field public static final whitelist KEYCODE_STEM_3:I = 0x10b

.field public static final whitelist KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final whitelist KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final whitelist KEYCODE_SYM:I = 0x3f

.field public static final whitelist KEYCODE_SYSRQ:I = 0x78

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_DOWN:I = 0x119

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_LEFT:I = 0x11a

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_RIGHT:I = 0x11b

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_UP:I = 0x118

.field public static final whitelist KEYCODE_T:I = 0x30

.field public static final whitelist KEYCODE_TAB:I = 0x3d

.field public static final blacklist KEYCODE_TA_CHARGING:I = 0x435

.field public static final whitelist KEYCODE_THUMBS_DOWN:I = 0x11f

.field public static final whitelist KEYCODE_THUMBS_UP:I = 0x11e

.field public static final blacklist KEYCODE_TOUCHPAD_OFF:I = 0x434

.field public static final blacklist KEYCODE_TOUCHPAD_ON:I = 0x433

.field public static final whitelist KEYCODE_TV:I = 0xaa

.field public static final whitelist KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final whitelist KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final whitelist KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final whitelist KEYCODE_TV_INPUT:I = 0xb2

.field public static final whitelist KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final whitelist KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final whitelist KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final whitelist KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final whitelist KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final whitelist KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final whitelist KEYCODE_TV_NETWORK:I = 0xf1

.field public static final whitelist KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final whitelist KEYCODE_TV_POWER:I = 0xb1

.field public static final whitelist KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final whitelist KEYCODE_TV_SATELLITE:I = 0xed

.field public static final whitelist KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final whitelist KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final whitelist KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final whitelist KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final whitelist KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final whitelist KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final whitelist KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final whitelist KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final whitelist KEYCODE_U:I = 0x31

.field public static final whitelist KEYCODE_UNKNOWN:I = 0x0

.field public static final whitelist KEYCODE_V:I = 0x32

.field public static final whitelist KEYCODE_VIDEO_APP_1:I = 0x121

.field public static final whitelist KEYCODE_VIDEO_APP_2:I = 0x122

.field public static final whitelist KEYCODE_VIDEO_APP_3:I = 0x123

.field public static final whitelist KEYCODE_VIDEO_APP_4:I = 0x124

.field public static final whitelist KEYCODE_VIDEO_APP_5:I = 0x125

.field public static final whitelist KEYCODE_VIDEO_APP_6:I = 0x126

.field public static final whitelist KEYCODE_VIDEO_APP_7:I = 0x127

.field public static final whitelist KEYCODE_VIDEO_APP_8:I = 0x128

.field public static final blacklist KEYCODE_VIEW_NOTIFICATION:I = 0x449

.field public static final blacklist KEYCODE_VIRTUALEYE_BUTTON:I = 0x413

.field public static final blacklist KEYCODE_VOICEMEMO_BUTTON:I = 0x414

.field public static final whitelist KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final blacklist KEYCODE_VOICE_WAKEUP:I = 0x426

.field public static final blacklist KEYCODE_VOICE_WAKEUP_LPSD:I = 0x427

.field public static final whitelist KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final whitelist KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final whitelist KEYCODE_VOLUME_UP:I = 0x18

.field public static final whitelist KEYCODE_W:I = 0x33

.field public static final whitelist KEYCODE_WAKEUP:I = 0xe0

.field public static final blacklist KEYCODE_WATCH:I = 0x419

.field public static final blacklist KEYCODE_WATCH_BUTTON_1:I = 0x44b

.field public static final whitelist KEYCODE_WINDOW:I = 0xab

.field public static final whitelist KEYCODE_X:I = 0x34

.field public static final whitelist KEYCODE_Y:I = 0x35

.field public static final whitelist KEYCODE_YEN:I = 0xd8

.field public static final whitelist KEYCODE_Z:I = 0x36

.field public static final whitelist KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final whitelist KEYCODE_ZOOM_IN:I = 0xa8

.field public static final whitelist KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field public static final greylist-max-o LAST_KEYCODE:I = 0x130

.field public static final whitelist MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-r META_ALL_MASK:I = 0x7770ff

.field public static final whitelist META_ALT_LEFT_ON:I = 0x10

.field public static final greylist-max-r META_ALT_LOCKED:I = 0x200

.field public static final whitelist META_ALT_MASK:I = 0x32

.field public static final whitelist META_ALT_ON:I = 0x2

.field public static final whitelist META_ALT_RIGHT_ON:I = 0x20

.field public static final whitelist META_CAPS_LOCK_ON:I = 0x100000

.field public static final greylist-max-r META_CAP_LOCKED:I = 0x100

.field public static final whitelist META_CTRL_LEFT_ON:I = 0x2000

.field public static final whitelist META_CTRL_MASK:I = 0x7000

.field public static final whitelist META_CTRL_ON:I = 0x1000

.field public static final whitelist META_CTRL_RIGHT_ON:I = 0x4000

.field public static final whitelist META_FUNCTION_ON:I = 0x8

.field private static final greylist-max-r META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final greylist-max-r META_LOCK_MASK:I = 0x700000

.field public static final whitelist META_META_LEFT_ON:I = 0x20000

.field public static final whitelist META_META_MASK:I = 0x70000

.field public static final whitelist META_META_ON:I = 0x10000

.field public static final whitelist META_META_RIGHT_ON:I = 0x40000

.field private static final greylist-max-r META_MODIFIER_MASK:I = 0x770ff

.field public static final whitelist META_NUM_LOCK_ON:I = 0x200000

.field public static final whitelist META_SCROLL_LOCK_ON:I = 0x400000

.field public static final greylist-max-r META_SELECTING:I = 0x800

.field public static final whitelist META_SHIFT_LEFT_ON:I = 0x40

.field public static final whitelist META_SHIFT_MASK:I = 0xc1

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SHIFT_RIGHT_ON:I = 0x80

.field private static final greylist-max-r META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final greylist-max-r META_SYM_LOCKED:I = 0x400

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-r META_SYNTHETIC_MASK:I = 0xf00

.field private static final blacklist SAMSUNG_INPUTKEYCODE:I = 0x3e8

.field private static final blacklist SAMSUNG_LAST_KEYCODE:I = 0x44f

.field private static final blacklist SAMSUNG_START_KEYCODE:I = 0x3e8

.field public static final whitelist SEM_FLAG_IGNORE_FAKE_FOCUS:I = 0x4000000

.field public static final blacklist SEM_FLAG_SKIP_IME_STAGE:I = 0x2000000

.field public static final whitelist SEM_KEYCODE_ALT_GR:I = 0x3f2

.field public static final whitelist SEM_KEYCODE_APPLICATION:I = 0x3ea

.field public static final whitelist SEM_KEYCODE_CLIPBOARD:I = 0x3f1

.field public static final whitelist SEM_KEYCODE_EMAIL:I = 0x3f0

.field public static final whitelist SEM_KEYCODE_LANG:I = 0x3ed

.field public static final whitelist SEM_KEYCODE_LOCK:I = 0x3f3

.field public static final whitelist SEM_KEYCODE_MINIMODE_ON_OFF:I = 0x3e8

.field public static final whitelist SEM_KEYCODE_QPANEL_ON_OFF:I = 0x3eb

.field public static final whitelist SEM_KEYCODE_QUESTION:I = 0x3f6

.field public static final whitelist SEM_KEYCODE_RECENT_APPS:I = 0x3e9

.field public static final whitelist SEM_KEYCODE_SCREEN_CAPTURE:I = 0x3ec

.field public static final whitelist SEM_KEYCODE_SIP_ON_OFF:I = 0x3ee

.field public static final whitelist SEM_KEYCODE_SPEAKER:I = 0x3f4

.field public static final whitelist SEM_KEYCODE_TEXT:I = 0x3f5

.field public static final whitelist SEM_KEYCODE_USER:I = 0x3f7

.field public static final whitelist SEM_KEYCODE_USER_TOP:I = 0x437

.field public static final whitelist SEM_KEYCODE_VOICE_SEARCH:I = 0x3ef

.field public static final whitelist SEM_KEYCODE_WINK:I = 0x43a

.field public static final whitelist SEM_KEYCODE_WPS_BUTTON:I = 0x412

.field public static final whitelist SEM_META_ALT_GR_ON:I = 0x8000

.field static final greylist-max-o TAG:Ljava/lang/String; = "KeyEvent"

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/KeyEvent;

.field private static greylist-max-o gRecyclerUsed:I


# instance fields
.field private greylist-max-r mAction:I

.field private greylist-max-r mCharacters:Ljava/lang/String;

.field private greylist-max-r mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mDownTime:J

.field private blacklist mEventTime:J

.field private greylist mFlags:I

.field private blacklist mHmac:[B

.field private blacklist mId:I

.field private greylist-max-r mKeyCode:I

.field private greylist-max-r mMetaState:I

.field private greylist-max-o mNext:Landroid/view/KeyEvent;

.field private greylist-max-r mRepeatCount:I

.field private greylist-max-r mScanCode:I

.field private greylist-max-p mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I
    .locals 0

    iget p0, p0, Landroid/view/KeyEvent;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V
    .locals 0

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 32

    .line 1262
    const-string v0, "META_SHIFT_ON"

    const-string v1, "META_ALT_ON"

    const-string v2, "META_SYM_ON"

    const-string v3, "META_FUNCTION_ON"

    const-string v4, "META_ALT_LEFT_ON"

    const-string v5, "META_ALT_RIGHT_ON"

    const-string v6, "META_SHIFT_LEFT_ON"

    const-string v7, "META_SHIFT_RIGHT_ON"

    const-string v8, "META_CAP_LOCKED"

    const-string v9, "META_ALT_LOCKED"

    const-string v10, "META_SYM_LOCKED"

    const-string v11, "0x00000800"

    const-string v12, "META_CTRL_ON"

    const-string v13, "META_CTRL_LEFT_ON"

    const-string v14, "META_CTRL_RIGHT_ON"

    const-string v15, "0x00008000"

    const-string v16, "META_META_ON"

    const-string v17, "META_META_LEFT_ON"

    const-string v18, "META_META_RIGHT_ON"

    const-string v19, "0x00080000"

    const-string v20, "META_CAPS_LOCK_ON"

    const-string v21, "META_NUM_LOCK_ON"

    const-string v22, "META_SCROLL_LOCK_ON"

    const-string v23, "0x00800000"

    const-string v24, "0x01000000"

    const-string v25, "0x02000000"

    const-string v26, "0x04000000"

    const-string v27, "0x08000000"

    const-string v28, "0x10000000"

    const-string v29, "0x20000000"

    const-string v30, "0x40000000"

    const-string v31, "0x80000000"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1762
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3784
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 1863
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "code"    # I

    .line 1872
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1873
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1874
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1875
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1876
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1877
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1878
    return-void
.end method

.method public constructor whitelist <init>(JJIII)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .line 1894
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1895
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1896
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1897
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1898
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1899
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1900
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1901
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1902
    return-void
.end method

.method public constructor whitelist <init>(JJIIII)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .line 1919
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1920
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1921
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1922
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1923
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1924
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1925
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1926
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1927
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1928
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIII)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .line 1948
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1949
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1950
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1951
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1952
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1953
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1954
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1955
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1956
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1957
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1958
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIIII)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .line 1979
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1980
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 1981
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1982
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1983
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1984
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1985
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1986
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1987
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1988
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1989
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1990
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIIIII)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .line 2012
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2013
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2014
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2015
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2016
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2017
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2018
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2019
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2020
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2021
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2022
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2023
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2024
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2025
    return-void
.end method

.method public constructor blacklist <init>(JJIIIIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I

    .line 2052
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2053
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2054
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2055
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2056
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2057
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2058
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2059
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2060
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2061
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2062
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2063
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2064
    iput p13, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2065
    return-void
.end method

.method public constructor whitelist <init>(JLjava/lang/String;II)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .line 2080
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2081
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2082
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2083
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2084
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2085
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2086
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2087
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2088
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2089
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2090
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2091
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2092
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3803
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 3805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3808
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 3809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3815
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3816
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3817
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 3818
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .line 2097
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2098
    iget v0, p1, Landroid/view/KeyEvent;->mId:I

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2099
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2100
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2101
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2102
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2103
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2104
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2105
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2106
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2107
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2108
    iget-object v0, p1, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2109
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2110
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2111
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .line 2321
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2322
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2323
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2324
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2325
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2326
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2327
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2328
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2329
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2330
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2331
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2333
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2334
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2337
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2126
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2127
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2128
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2129
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2130
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2131
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2132
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2133
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2134
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2135
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2136
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2138
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2139
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2140
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2141
    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .line 3679
    packed-switch p0, :pswitch_data_0

    .line 3687
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3685
    :pswitch_0
    const-string v0, "ACTION_MULTIPLE"

    return-object v0

    .line 3683
    :pswitch_1
    const-string v0, "ACTION_UP"

    return-object v0

    .line 3681
    :pswitch_2
    const-string v0, "ACTION_DOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .line 2347
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static whitelist changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .line 2358
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    move-object p0, v0

    .line 2359
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2360
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2361
    return-object p0
.end method

.method public static whitelist changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .line 2291
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static whitelist changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .line 2307
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2308
    .local v0, "ret":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v1

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2309
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2310
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2311
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2312
    return-object v0
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 3800
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static whitelist getDeadChar(II)I
    .locals 1
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .line 1755
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static whitelist getMaxKeyCode()I
    .locals 1

    .line 1729
    const/16 v0, 0x130

    return v0
.end method

.method public static whitelist getModifierMetaStateMask()I
    .locals 1

    .line 2750
    const v0, 0x770ff

    return v0
.end method

.method public static blacklist getSamsungLastKeyCode()I
    .locals 1

    .line 1745
    const/16 v0, 0x44f

    return v0
.end method

.method public static blacklist getSamsungStartKeyCode()I
    .locals 1

    .line 1738
    const/16 v0, 0x3e8

    return v0
.end method

.method public static final greylist-max-o isAltKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2577
    const/16 v0, 0x39

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final greylist isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2461
    sparse-switch p0, :sswitch_data_0

    .line 2468
    const/4 v0, 0x0

    return v0

    .line 2466
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final whitelist isGamepadButton(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2418
    sparse-switch p0, :sswitch_data_0

    .line 2452
    const/4 v0, 0x0

    return v0

    .line 2450
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static final whitelist isMediaSessionKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2477
    sparse-switch p0, :sswitch_data_0

    .line 2491
    const/4 v0, 0x0

    return v0

    .line 2489
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final greylist-max-o isMetaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2572
    const/16 v0, 0x75

    if-eq p0, v0, :cond_1

    const/16 v0, 0x76

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist isModifierKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2770
    sparse-switch p0, :sswitch_data_0

    .line 2784
    const/4 v0, 0x0

    return v0

    .line 2782
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3f -> :sswitch_0
        0x4e -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final greylist-max-o isSystemKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2498
    sparse-switch p0, :sswitch_data_0

    .line 2533
    const/4 v0, 0x0

    return v0

    .line 2530
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0xde -> :sswitch_0
        0x118 -> :sswitch_0
        0x119 -> :sswitch_0
        0x11a -> :sswitch_0
        0x11b -> :sswitch_0
    .end sparse-switch
.end method

.method public static final greylist-max-o isWakeKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 2538
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 2567
    const/4 v0, 0x0

    return v0

    .line 2546
    :sswitch_0
    return v0

    .line 2554
    :sswitch_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0x109 -> :sswitch_0
        0x10a -> :sswitch_0
        0x10b -> :sswitch_0
        0x419 -> :sswitch_1
        0x43b -> :sswitch_1
    .end sparse-switch
.end method

.method public static whitelist keyCodeFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "symbolicName"    # Ljava/lang/String;

    .line 3720
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3721
    .local v0, "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 3722
    return v0

    .line 3725
    .end local v0    # "keyCode":I
    :cond_0
    goto :goto_0

    .line 3724
    :catch_0
    move-exception v0

    .line 3727
    :goto_0
    const-string v0, "KEYCODE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3728
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3730
    :cond_1
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 3731
    .restart local v0    # "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3732
    return v0

    .line 3734
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist keyCodeIsValid(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 3740
    if-ltz p0, :cond_0

    const/16 v0, 0x130

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_2

    const/16 v0, 0x44f

    if-gt p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist keyCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "keyCode"    # I

    .line 3705
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3706
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static greylist-max-o metaStateFilterDirectionalModifiers(IIIII)I
    .locals 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .line 2910
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2911
    .local v0, "wantBasic":Z
    :goto_0
    or-int v3, p3, p4

    .line 2912
    .local v3, "directional":I
    and-int v4, p1, v3

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2914
    .local v1, "wantLeftOrRight":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2915
    if-nez v1, :cond_2

    .line 2920
    not-int v2, v3

    and-int/2addr v2, p0

    return v2

    .line 2916
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2917
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2918
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2921
    :cond_3
    if-eqz v1, :cond_4

    .line 2922
    not-int v2, p2

    and-int/2addr v2, p0

    return v2

    .line 2924
    :cond_4
    return p0
.end method

.method public static whitelist metaStateHasModifiers(II)Z
    .locals 4
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .line 2889
    const v0, 0x700f00

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 2896
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int p0, v0, v1

    .line 2897
    const/16 v0, 0x40

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2899
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/16 v3, 0x20

    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2901
    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/16 v3, 0x4000

    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2903
    const/high16 v0, 0x10000

    const/high16 v1, 0x20000

    const/high16 v3, 0x40000

    invoke-static {p0, p1, v0, v1, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2905
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2890
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist metaStateHasNoModifiers(I)Z
    .locals 2
    .param p0, "metaState"    # I

    .line 2853
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o metaStateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "metaState"    # I

    .line 3759
    if-nez p0, :cond_0

    .line 3760
    const-string v0, "0"

    return-object v0

    .line 3762
    :cond_0
    const/4 v0, 0x0

    .line 3763
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3764
    .local v1, "i":I
    :goto_0
    if-eqz p0, :cond_5

    .line 3765
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3766
    .local v2, "isSet":Z
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    .line 3767
    if-eqz v2, :cond_4

    .line 3768
    sget-object v3, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 3769
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 3770
    if-nez p0, :cond_2

    .line 3771
    return-object v3

    .line 3773
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_2

    .line 3775
    :cond_3
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3776
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3779
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    nop

    .end local v2    # "isSet":Z
    add-int/lit8 v1, v1, 0x1

    .line 3780
    goto :goto_0

    .line 3781
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native greylist-max-o nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method private static native blacklist nativeNextId()I
.end method

.method public static whitelist normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .line 2813
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    .line 2814
    or-int/lit8 p0, p0, 0x1

    .line 2816
    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    .line 2817
    or-int/lit8 p0, p0, 0x2

    .line 2819
    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    .line 2820
    or-int/lit16 p0, p0, 0x1000

    .line 2822
    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 2823
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2825
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 2826
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2828
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 2829
    or-int/lit8 p0, p0, 0x2

    .line 2831
    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    .line 2832
    or-int/lit8 p0, p0, 0x4

    .line 2834
    :cond_6
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o obtain()Landroid/view/KeyEvent;
    .locals 3

    .line 2145
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_0
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2147
    .local v1, "ev":Landroid/view/KeyEvent;
    if-nez v1, :cond_0

    .line 2148
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v0

    return-object v2

    .line 2150
    :cond_0
    iget-object v2, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v2, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2151
    sget v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2153
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2154
    invoke-virtual {v1}, Landroid/view/KeyEvent;->prepareForReuse()V

    .line 2155
    return-object v1

    .line 2152
    .end local v1    # "ev":Landroid/view/KeyEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static blacklist obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;
    .locals 16
    .param p0, "id"    # I
    .param p1, "downTimeNanos"    # J
    .param p3, "eventTimeNanos"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I
    .param p14, "hmac"    # [B
    .param p15, "characters"    # Ljava/lang/String;

    .line 2167
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2168
    .local v0, "ev":Landroid/view/KeyEvent;
    move/from16 v1, p0

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2169
    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2170
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2171
    move/from16 v6, p5

    iput v6, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2172
    move/from16 v7, p6

    iput v7, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2173
    move/from16 v8, p7

    iput v8, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2174
    move/from16 v9, p8

    iput v9, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2175
    move/from16 v10, p9

    iput v10, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2176
    move/from16 v11, p10

    iput v11, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2177
    move/from16 v12, p11

    iput v12, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2178
    move/from16 v13, p12

    iput v13, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2179
    move/from16 v14, p13

    iput v14, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2180
    move-object/from16 v15, p14

    iput-object v15, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2181
    move-object/from16 v1, p15

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2182
    return-object v0
.end method

.method public static blacklist obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scanCode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "displayId"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .line 2193
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, p0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2194
    .end local p0    # "downTime":J
    .local v0, "downTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v4, p2

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v18

    .line 2195
    .end local p2    # "eventTime":J
    .local v18, "eventTime":J
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    const/16 v16, 0x0

    move-wide v3, v0

    move-wide/from16 v5, v18

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v17, p13

    invoke-static/range {v2 .. v17}, Landroid/view/KeyEvent;->obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-r obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .line 2210
    const/4 v12, -0x1

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 3
    .param p0, "other"    # Landroid/view/KeyEvent;

    .line 2222
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2223
    .local v0, "ev":Landroid/view/KeyEvent;
    iget v1, p0, Landroid/view/KeyEvent;->mId:I

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2224
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2225
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2226
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2227
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2228
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2229
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2230
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2231
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2232
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2233
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2234
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2235
    iget-object v1, p0, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2236
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2237
    return-object v0
.end method


# virtual methods
.method public final greylist-max-o cancel()V
    .locals 1

    .line 3184
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3185
    return-void
.end method

.method public bridge synthetic blacklist copy()Landroid/view/InputEvent;
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/view/KeyEvent;
    .locals 1

    .line 2243
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3487
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .line 3503
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3553
    return v1

    .line 3534
    :pswitch_0
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3535
    .local v0, "count":I
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3536
    .local v2, "code":I
    invoke-interface {p1, v2, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3537
    return v4

    .line 3539
    :cond_0
    if-eqz v2, :cond_2

    .line 3540
    iput v1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3541
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3542
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3543
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 3544
    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3545
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3547
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3548
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3549
    return v1

    .line 3551
    .end local v1    # "handled":Z
    :cond_2
    return v1

    .line 3529
    .end local v0    # "count":I
    .end local v2    # "code":I
    :pswitch_1
    if-eqz p2, :cond_3

    .line 3530
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3532
    :cond_3
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3505
    :pswitch_2
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3508
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3509
    .local v0, "res":Z
    if-eqz p2, :cond_6

    .line 3510
    if-eqz v0, :cond_4

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v1, :cond_4

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 3512
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 3513
    :cond_4
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3515
    :try_start_0
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3517
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3518
    const/4 v0, 0x1

    .line 3521
    :cond_5
    goto :goto_0

    .line 3520
    :catch_0
    move-exception v1

    .line 3524
    :cond_6
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist getAction()I
    .locals 1

    .line 3166
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final whitelist getCharacters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3237
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDeviceId()I
    .locals 1

    .line 2583
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final blacklist getDisplayId()I
    .locals 1

    .line 2601
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getDisplayLabel()C
    .locals 2

    .line 3356
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .locals 4

    .line 3290
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getEventTime()J
    .locals 4

    .line 3302
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final greylist-max-o getEventTimeNano()J
    .locals 2

    .line 3321
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .locals 1

    .line 2700
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 2277
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    return v0
.end method

.method public final whitelist getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .line 3346
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getKeyCode()I
    .locals 1

    .line 3222
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3418
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3332
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public whitelist getMatch([C)C
    .locals 1
    .param p1, "chars"    # [C

    .line 3433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public whitelist getMatch([CI)C
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .line 3446
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .locals 1

    .line 2661
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final whitelist getModifiers()I
    .locals 2

    .line 2681
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getNumber()C
    .locals 2

    .line 3470
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final whitelist getRepeatCount()I
    .locals 1

    .line 3261
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final whitelist getScanCode()I
    .locals 1

    .line 3248
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final whitelist getSource()I
    .locals 1

    .line 2589
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public whitelist getUnicodeChar()I
    .locals 1

    .line 3379
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public whitelist getUnicodeChar(I)I
    .locals 2
    .param p1, "metaState"    # I

    .line 3403
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final whitelist hasModifiers(I)Z
    .locals 1
    .param p1, "modifiers"    # I

    .line 2974
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasNoModifiers()Z
    .locals 1

    .line 2943
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAltPressed()Z
    .locals 1

    .line 2987
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isCanceled()Z
    .locals 1

    .line 3174
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isCapsLockOn()Z
    .locals 2

    .line 3132
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isCtrlPressed()Z
    .locals 1

    .line 3025
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist isDown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2399
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isFunctionPressed()Z
    .locals 1

    .line 3050
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isLongPress()Z
    .locals 1

    .line 3212
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isMetaPressed()Z
    .locals 2

    .line 3038
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isNumLockOn()Z
    .locals 2

    .line 3144
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPrintingKey()Z
    .locals 2

    .line 3479
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isScrollLockOn()Z
    .locals 2

    .line 3156
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isShiftPressed()Z
    .locals 2

    .line 3000
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist isSymPressed()Z
    .locals 1

    .line 3012
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isSystem()Z
    .locals 1

    .line 2405
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isTainted()Z
    .locals 2

    .line 2367
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isTracking()Z
    .locals 1

    .line 3204
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final greylist-max-o isWakeKey()Z
    .locals 1

    .line 2410
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-p recycle()V
    .locals 3

    .line 2256
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2259
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2260
    :try_start_0
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 2261
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2262
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v1, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2263
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2265
    :cond_0
    monitor-exit v0

    .line 2266
    return-void

    .line 2265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist-max-o recycleIfNeededAfterDispatch()V
    .locals 0

    .line 2272
    return-void
.end method

.method public final blacklist semSetAltPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 3081
    if-eqz p1, :cond_0

    .line 3082
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_0

    .line 3084
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3086
    :goto_0
    return-void
.end method

.method public final blacklist semSetCtrlPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 3098
    if-eqz p1, :cond_0

    .line 3099
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_0

    .line 3101
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3103
    :goto_0
    return-void
.end method

.method public final whitelist semSetDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 2622
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 2623
    return-void
.end method

.method public final blacklist semSetMetaPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .line 3115
    if-eqz p1, :cond_0

    .line 3116
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_0

    .line 3118
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3120
    :goto_0
    return-void
.end method

.method public blacklist semSetNonResetUserActivityTimeout()V
    .locals 2

    .line 2384
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2385
    return-void
.end method

.method public final blacklist semSetShiftPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 3064
    if-eqz p1, :cond_0

    .line 3065
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    goto :goto_0

    .line 3067
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3069
    :goto_0
    return-void
.end method

.method public final blacklist setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 2608
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2609
    return-void
.end method

.method public final blacklist setFlags(I)V
    .locals 0
    .param p1, "newFlags"    # I

    .line 2691
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2692
    return-void
.end method

.method public final whitelist setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .line 2595
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2596
    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .locals 2
    .param p1, "tainted"    # Z

    .line 2373
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    if-eqz p1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2374
    return-void
.end method

.method public final blacklist setTime(JJ)V
    .locals 2
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J

    .line 3274
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3275
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3276
    return-void
.end method

.method public final whitelist startTracking()V
    .locals 2

    .line 3195
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3651
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3654
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3655
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3657
    :cond_0
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3659
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3660
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3661
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3662
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3663
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3665
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3822
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3824
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3825
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3826
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3827
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3828
    iget-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3829
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3830
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3831
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3832
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3834
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3835
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3836
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3837
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3838
    return-void
.end method
