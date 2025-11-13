.class public final Lcom/android/systemui/util/SystemUIAnalytics;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CONTROL_KEY_ALL_CONTROLS:Ljava/lang/String; = "AllControls"

.field public static final CONTROL_KEY_APP_NAME:Ljava/lang/String; = "AppName"

.field public static final CONTROL_KEY_DEVICE_NAME:Ljava/lang/String; = "Device name"

.field public static final CONTROL_KEY_DEVICE_TYPE:Ljava/lang/String; = "Device type"

.field public static final CONTROL_KEY_NUM_OF_SELECTED_APPS:Ljava/lang/String; = "num of selected apps"

.field public static final CONTROL_KEY_NUM_OF_TOTAL_APPS:Ljava/lang/String; = "num of total apps"

.field public static final CONTROL_KEY_SELECTED_CONTROL:Ljava/lang/String; = "SelectedControl"

.field public static final CONTROL_KEY_STRUCTURE:Ljava/lang/String; = "Structure"

.field public static final CONTROL_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final CONTROL_KEY_ZONE:Ljava/lang/String; = "Zone"

.field public static final CONTROL_PREF_NAME:Ljava/lang/String; = "controls_prefs"

.field private static final DEBUG:Z = true

.field public static final DID_DRAG_ICON_ONLY:Ljava/lang/String; = "Swipe down icon only"

.field public static final DID_NOTI_SELECT_BLOCK:Ljava/lang/String; = "Block"

.field public static final DID_NOTI_SELECT_DEFAULT:Ljava/lang/String; = "Default"

.field public static final DID_NOTI_SELECT_SILENT:Ljava/lang/String; = "Silent"

.field public static final DID_NOTI_SWIPE_DOWN:Ljava/lang/String; = "Noti swipe down"

.field public static final DID_ONE_FINGER_SWIPE:Ljava/lang/String; = "One finger swipe"

.field public static final DID_QUICK_PANEL:Ljava/lang/String; = "Quick panel"

.field public static final DID_TAP_COLLAPSE_BUTTON:Ljava/lang/String; = "Tap collapse button"

.field public static final DID_TAP_EXPAND_BUTTON:Ljava/lang/String; = "Tap expand button"

.field public static final DID_TAP_ICON_ONLY:Ljava/lang/String; = "Tap icon only"

.field public static final DID_TAP_MORE_STRIP:Ljava/lang/String; = "Tap more strip"

.field public static final DID_TWO_FINGER_SWIPE:Ljava/lang/String; = "Two finger swipe"

.field public static final DT_ALARM_PAGE:Ljava/lang/String; = "Next alarm"

.field public static final DT_BOUNCER_POSITION_CENTER:Ljava/lang/String; = "Center"

.field public static final DT_BOUNCER_POSITION_LEFT:Ljava/lang/String; = "Left"

.field public static final DT_BOUNCER_POSITION_RIGHT:Ljava/lang/String; = "Right"

.field public static final DT_CANCEL_RETRY_BY_FACE:Ljava/lang/String; = "2"

.field public static final DT_CANCEL_RETRY_BY_IB:Ljava/lang/String; = "1"

.field public static final DT_CANCEL_RETRY_BY_IRISES:Ljava/lang/String; = "3"

.field public static final DT_CLOCK_PAGE:Ljava/lang/String; = "Clock"

.field public static final DT_COVER_SCREEN_OFF_DOUBLE_TAP:Ljava/lang/String; = "double tap"

.field public static final DT_COVER_SCREEN_OFF_POWER_KEY:Ljava/lang/String; = "side key"

.field public static final DT_COVER_SCREEN_OFF_TIME_OUT:Ljava/lang/String; = "screen timeout"

.field public static final DT_FACE_AUTHENTICATION_ERROR_ON_MASK:Ljava/lang/String; = "5"

.field public static final DT_FACE_AUTHENTICATION_FAIL:Ljava/lang/String; = "2"

.field public static final DT_FACE_AUTHENTICATION_FAIL_TIMEOUT:Ljava/lang/String; = "3"

.field public static final DT_FACE_AUTHENTICATION_NO_FACE_TIMEOUT:Ljava/lang/String; = "4"

.field public static final DT_FACE_AUTHENTICATION_SUCCESS:Ljava/lang/String; = "1"

.field public static final DT_FINGERPRINT_AUTHENTICATION_DIRTY:Ljava/lang/String; = "6"

.field public static final DT_FINGERPRINT_AUTHENTICATION_FAIL:Ljava/lang/String; = "2"

.field public static final DT_FINGERPRINT_AUTHENTICATION_INSUFFICIENT:Ljava/lang/String; = "5"

.field public static final DT_FINGERPRINT_AUTHENTICATION_PARTIAL:Ljava/lang/String; = "4"

.field public static final DT_FINGERPRINT_AUTHENTICATION_PRESS_HARDER:Ljava/lang/String; = "7"

.field public static final DT_FINGERPRINT_AUTHENTICATION_SUCCESS:Ljava/lang/String; = "1"

.field public static final DT_FINGERPRINT_AUTHENTICATION_TOO_FAST:Ljava/lang/String; = "3"

.field public static final DT_GO_TO_EDIT_MODE_ENTER:Ljava/lang/String; = "1"

.field public static final DT_GO_TO_EDIT_MODE_EXIT:Ljava/lang/String; = "2"

.field public static final DT_LOCK_CLOCK_STYLE_COLOR:Ljava/lang/String; = "Color "

.field public static final DT_LOCK_CLOCK_STYLE_COLOR_ADAPTIVE:Ljava/lang/String; = "Adaptive color"

.field public static final DT_LOCK_CLOCK_STYLE_COLOR_PICKER:Ljava/lang/String; = "Color picker"

.field public static final DT_LOCK_CLOCK_STYLE_DEFAULT:Ljava/lang/String; = " (Default)"

.field public static final DT_LOCK_CLOCK_STYLE_TYPE:Ljava/lang/String; = "Type "

.field public static final DT_MUSIC_PAGE:Ljava/lang/String; = "Music"

.field public static final DT_PAUSE_ACTION:Ljava/lang/String; = "2"

.field public static final DT_PLAY_ACTION:Ljava/lang/String; = "1"

.field public static final DT_SCREEN_CAPTURE_DEX_MODE:Ljava/lang/String; = "Dex mode"

.field public static final DT_SCREEN_CAPTURE_HW_KEY:Ljava/lang/String; = "HW key"

.field public static final DT_SCREEN_CAPTURE_PALM_SWIPE:Ljava/lang/String; = "Palm swipe"

.field public static final DT_SCREEN_CAPTURE_QUICK_PANEL:Ljava/lang/String; = "Quick panel"

.field public static final DT_SHORTCUT_LEFT:Ljava/lang/String; = "1"

.field public static final DT_SHORTCUT_RIGHT:Ljava/lang/String; = "2"

.field public static final DT_SHOW_BOUNCER:Ljava/lang/String; = "1"

.field public static final DT_SHOW_LOCK_COVER_OPEN:Ljava/lang/String; = "4"

.field public static final DT_SHOW_LOCK_DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "7"

.field public static final DT_SHOW_LOCK_FINGERPRINT_SENSOR:Ljava/lang/String; = "3"

.field public static final DT_SHOW_LOCK_HW_KEY_BIXBY_KEY:Ljava/lang/String; = "2"

.field public static final DT_SHOW_LOCK_HW_KEY_POWER:Ljava/lang/String; = "1"

.field public static final DT_SHOW_LOCK_LIFT_TO_WAKE:Ljava/lang/String; = "6"

.field public static final DT_SHOW_LOCK_OTHER_CASE:Ljava/lang/String; = "5"

.field public static final DT_SOME_AUTH_REQUIRED_AFTER_USER_REQUEST:Ljava/lang/String; = "3"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_24HR_TIMEOUT:Ljava/lang/String; = "7"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_4HR_IDLE_TIMEOUT:Ljava/lang/String; = "8"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_72HR_TIMEOUT:Ljava/lang/String; = "5"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_BOOT:Ljava/lang/String; = "1"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW:Ljava/lang/String; = "2"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_LOCKOUT:Ljava/lang/String; = "4"

.field public static final DT_STRONG_AUTH_REQUIRED_AFTER_USER_LOCKDOWN:Ljava/lang/String; = "6"

.field public static final DT_STRONG_AUTH_REQUIRED_FOR_UNATTENDED_UPDATE:Ljava/lang/String; = "9"

.field public static final DT_TODAYS_PAGE:Ljava/lang/String; = "Today\'s schedule"

.field public static final DT_UNLOCK_BY_DIGITAL:Ljava/lang/String; = "1"

.field public static final DT_UNLOCK_BY_FACE:Ljava/lang/String; = "3"

.field public static final DT_UNLOCK_BY_FINGERPRINT:Ljava/lang/String; = "2"

.field public static final DT_UNLOCK_BY_LOCK_STAY:Ljava/lang/String; = "4"

.field public static final DT_UNLOCK_BY_PASSWORD_FOR_THROTTLE_TIME:Ljava/lang/String; = "3"

.field public static final DT_UNLOCK_BY_PATTERN_FOR_THROTTLE_TIME:Ljava/lang/String; = "1"

.field public static final DT_UNLOCK_BY_PIN_FOR_THROTTLE_TIME:Ljava/lang/String; = "2"

.field public static final DT_UNLOCK_BY_SMART:Ljava/lang/String; = "3"

.field public static final DT_UNLOCK_BY_SWIPE:Ljava/lang/String; = "2"

.field public static final DT_WALLPAPER_ONLY_1:Ljava/lang/String; = "1"

.field public static final DT_WALLPAPER_ONLY_2:Ljava/lang/String; = "2"

.field public static final DT_WALLPAPER_ONLY_3:Ljava/lang/String; = "3"

.field public static final DT_WALLPAPER_ONLY_4:Ljava/lang/String; = "4"

.field public static final DT_WALLPAPER_ONLY_5:Ljava/lang/String; = "5"

.field public static final DT_WALLPAPER_ONLY_6:Ljava/lang/String; = "6"

.field public static final DT_WALLPAPER_SET_FROM_CUSTOM:Ljava/lang/String; = "Custom"

.field public static final DT_WALLPAPER_SET_FROM_DLS:Ljava/lang/String; = "DLS"

.field public static final DT_WALLPAPER_SET_FROM_FEATURED:Ljava/lang/String; = "Featured"

.field public static final DT_WALLPAPER_SET_FROM_SGG:Ljava/lang/String; = "SGG"

.field public static final DT_WALLPAPER_SET_FROM_THEME:Ljava/lang/String; = "Theme"

.field public static final DT_WALLPAPER_STATUS_TYPE_3RD_PARTY_LIVE:Ljava/lang/String; = "3rd party live"

.field public static final DT_WALLPAPER_STATUS_TYPE_ANIMATED:Ljava/lang/String; = "Animated"

.field public static final DT_WALLPAPER_STATUS_TYPE_GALLERY_MULTIPACK:Ljava/lang/String; = "Gallery Multi pack"

.field public static final DT_WALLPAPER_STATUS_TYPE_GIF:Ljava/lang/String; = "Gif"

.field public static final DT_WALLPAPER_STATUS_TYPE_IMAGE:Ljava/lang/String; = "Image"

.field public static final DT_WALLPAPER_STATUS_TYPE_INTERNAL_LIVE:Ljava/lang/String; = "Internal live"

.field public static final DT_WALLPAPER_STATUS_TYPE_MOTION:Ljava/lang/String; = "Motion"

.field public static final DT_WALLPAPER_STATUS_TYPE_MULTIPACK:Ljava/lang/String; = "Multi pack"

.field public static final DT_WALLPAPER_STATUS_TYPE_THEME_MULTIPACK:Ljava/lang/String; = "Theme Multi pack"

.field public static final DT_WALLPAPER_STATUS_TYPE_VIDEO:Ljava/lang/String; = "Video"

.field public static final EDGE_LIGHTING_PREF_NAME:Ljava/lang/String; = "edgelighting_pref"

.field public static final EDGE_LIGHTING_STATUS_DURATION:Ljava/lang/String; = "36110"

.field public static final EDGE_LIGHTING_STATUS_STYLE_COLOR:Ljava/lang/String; = "36106"

.field public static final EDGE_LIGHTING_STATUS_STYLE_EFFECT:Ljava/lang/String; = "36105"

.field public static final EDGE_LIGHTING_STATUS_STYLE_TRANSPARENCY:Ljava/lang/String; = "36107"

.field public static final EDGE_LIGHTING_STATUS_STYLE_WITDH:Ljava/lang/String; = "36108"

.field public static final EID_1DEPTH_QUICK_BUTTON_ORDER:Ljava/lang/String; = "QPBS1100"

.field public static final EID_2DEPTH_QUICK_BUTTON_ORDER:Ljava/lang/String; = "QPBS1101"

.field public static final EID_AIRPLANEMODE_CONFIRM_POPUP_CANCEL_PRESSED:Ljava/lang/String; = "4249"

.field public static final EID_AIRPLANEMODE_CONFIRM_POPUP_DONT_SHOW_AGAIN_CHECK_CHANGED:Ljava/lang/String; = "4247"

.field public static final EID_AIRPLANEMODE_CONFIRM_POPUP_OK_PRESSED:Ljava/lang/String; = "4248"

.field public static final EID_AIRPLANEMODE_COVER:Ljava/lang/String; = "QPBE2004"

.field public static final EID_AIRPLANE_MODE_TILE:Ljava/lang/String; = "QPBE1005"

.field public static final EID_APP_DOCK_GRID_VIEW:Ljava/lang/String; = "1072"

.field public static final EID_APP_DOCK_LIST_VIEW:Ljava/lang/String; = "1074"

.field public static final EID_APP_DOCK_OPEN_IN_POP_UP_VIEW:Ljava/lang/String; = "1073"

.field public static final EID_APP_DOCK_OPEN_IN_SPLIT_SCREEN_VIEW:Ljava/lang/String; = "1071"

.field public static final EID_ASSIST_POPUP_CANCEL:Ljava/lang/String; = "9802"

.field public static final EID_ASSIST_POPUP_OK:Ljava/lang/String; = "9801"

.field public static final EID_ASSIST_POPUP_SHOW:Ljava/lang/String; = "9800"

.field public static final EID_ASSIST_VISIBLE:Ljava/lang/String; = "747005"

.field public static final EID_BACKGROUND_UNLOCK:Ljava/lang/String; = "LSE1033"

.field public static final EID_BATTERY_SAVER_TILE:Ljava/lang/String; = "QPBE1007"

.field public static final EID_BLUELIGHT_FILTER_TILE:Ljava/lang/String; = "QPBE1013"

.field public static final EID_BLUETOOTH_COVER:Ljava/lang/String; = "QPBE2003"

.field public static final EID_BLUETOOTH_TILE:Ljava/lang/String; = "QPBE1003"

.field public static final EID_BLUE_LIGHT_FILTER_DETAIL_OPACITY_SLIDER:Ljava/lang/String; = "4224"

.field public static final EID_BRIGHTNESS_BAR_COVER:Ljava/lang/String; = "QPPE2009"

.field public static final EID_BRIGHTNESS_BAR_MORE_COVER:Ljava/lang/String; = "QPPE2023"

.field public static final EID_BRIGHTNESS_BAR_QP_COVER:Ljava/lang/String; = "QPPE2024"

.field public static final EID_BRIGHTNESS_COVER:Ljava/lang/String; = "QPBE2006"

.field public static final EID_BRIGHTNESS_DETAIL_ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "QPDE1006"

.field public static final EID_BRIGHTNESS_EXPAND:Ljava/lang/String; = "QPPE1010"

.field public static final EID_BRIGHTNESS_LEVEL_COVER:Ljava/lang/String; = "QPDS1014"

.field public static final EID_BRIGHTNESS_SLIDER:Ljava/lang/String; = "QPPE1009"

.field public static final EID_BT_SCAN_DEVICE_NUMBER:Ljava/lang/String; = "4919"

.field public static final EID_BUDS:Ljava/lang/String; = "QPPE1031"

.field public static final EID_CAMERA_ACCESS_TILE:Ljava/lang/String; = "QPBE1047"

.field public static final EID_CONTACT_US_EVENT_ID:Ljava/lang/String; = "QPPE1014"

.field public static final EID_CONTROL_ADD_DEVICES:Ljava/lang/String; = "Dvcs041"

.field public static final EID_CONTROL_CHOOSE_APPS_ON_OFF:Ljava/lang/String; = "Dvcs012"

.field public static final EID_CONTROL_CHOOSE_APPS_ON_OFF_ON_MANAGE_APPS:Ljava/lang/String; = "Dvcs062"

.field public static final EID_CONTROL_CONTROL_DEVICES_ON_OFF:Ljava/lang/String; = "Dvcs083"

.field public static final EID_CONTROL_INTRO_START:Ljava/lang/String; = "Dvcs013"

.field public static final EID_CONTROL_LAUNCH_DEVICES:Ljava/lang/String; = "Dvcs910"

.field public static final EID_CONTROL_LAUNCH_FULL_CONTROLLER:Ljava/lang/String; = "Dvcs101"

.field public static final EID_CONTROL_LAUNCH_SMART_THINGS:Ljava/lang/String; = "Dvcs051"

.field public static final EID_CONTROL_LEFT_CHOOSE_DEVICES:Ljava/lang/String; = "Dvcs022"

.field public static final EID_CONTROL_MORE_DEVICES_TO_SHOW:Ljava/lang/String; = "Dvcs0511"

.field public static final EID_CONTROL_MORE_MANAGE_APPS:Ljava/lang/String; = "Dvcs058"

.field public static final EID_CONTROL_MORE_SETTINGS:Ljava/lang/String; = "Dvcs059"

.field public static final EID_CONTROL_MOVE_CARD:Ljava/lang/String; = "Dvcs0510"

.field public static final EID_CONTROL_QUIT_DEVICES:Ljava/lang/String; = "Dvcs920"

.field public static final EID_CONTROL_REORDER:Ljava/lang/String; = "Dvcs021"

.field public static final EID_CONTROL_SHOW_DEVICES_ON_OFF:Ljava/lang/String; = "Dvcs082"

.field public static final EID_CONTROL_SPINNER_OPEN:Ljava/lang/String; = "Dvcs052"

.field public static final EID_CONTROL_TAP_APP_LIST:Ljava/lang/String; = "Dvcs011"

.field public static final EID_CONTROL_TAP_APP_LIST_ON_MANAGE_APPS:Ljava/lang/String; = "Dvcs061"

.field public static final EID_CONTROL_TAP_CARD_WITHOUT_BTN:Ljava/lang/String; = "Dvcs057"

.field public static final EID_CONTROL_TAP_CARD_WITH_BTN:Ljava/lang/String; = "Dvcs056"

.field public static final EID_CONTROL_TAP_MAIN_ACTION_BTN:Ljava/lang/String; = "Dvcs055"

.field public static final EID_CONTROL_TAP_SMALL_TYPE_CARD:Ljava/lang/String; = "Dvcs054"

.field public static final EID_CONTROL_TAP_SPINNER_APP:Ljava/lang/String; = "Dvcs053"

.field public static final EID_COVER_QUICK_PANEL_EXPANDED:Ljava/lang/String; = "QPBE2000"

.field public static final EID_DARK_MODE_TILE:Ljava/lang/String; = "QPBE1030"

.field public static final EID_DETAIL_DETAILS:Ljava/lang/String; = "QPDE1007"

.field public static final EID_DETAIL_SWITCH:Ljava/lang/String; = "QPDE1008"

.field public static final EID_DND_TILE:Ljava/lang/String; = "QPBE1016"

.field public static final EID_DOUBLE_TAP_TO_SLEEP:Ljava/lang/String; = "LSE1012"

.field public static final EID_DO_NOT_DISTURB:Ljava/lang/String; = "NSTE0300"

.field public static final EID_EDIT_BUTTON:Ljava/lang/String; = "QPPE1017"

.field public static final EID_EDIT_DONE:Ljava/lang/String; = "QPPE1022"

.field public static final EID_EDIT_FULL_QUICK_SETTINGS_BUTTONS:Ljava/lang/String; = "QPPE1008"

.field public static final EID_EDIT_MOVE_TO_ACTIVE:Ljava/lang/String; = "QPPE1023"

.field public static final EID_EDIT_MOVE_TO_AVAILABLE:Ljava/lang/String; = "QPPE1024"

.field public static final EID_EDIT_RESET:Ljava/lang/String; = "QPPE1021"

.field public static final EID_EDIT_TOP_DONE:Ljava/lang/String; = "QPPE1026"

.field public static final EID_EDIT_TOP_MOVE_TO_ACTIVE:Ljava/lang/String; = "QPPE1027"

.field public static final EID_EDIT_TOP_MOVE_TO_AVAILABLE:Ljava/lang/String; = "QPPE1028"

.field public static final EID_EDIT_TOP_RESET:Ljava/lang/String; = "QPPE1025"

.field public static final EID_EDIT_TOP_TILES:Ljava/lang/String; = "QPPE1018"

.field public static final EID_EMERGENCY_CALL:Ljava/lang/String; = "LSE1031"

.field public static final EID_FAIL_ATTEMPT_FOR_THROTTLE_TIME:Ljava/lang/String; = "LSE1200"

.field public static final EID_FGS_ACTIVE_APPS:Ljava/lang/String; = "5153"

.field public static final EID_FGS_STOP:Ljava/lang/String; = "5138"

.field public static final EID_FLASHLIGHT_COVER:Ljava/lang/String; = "QPBE2005"

.field public static final EID_FLASHLIGHT_TILE:Ljava/lang/String; = "QPBE1006"

.field public static final EID_FLASH_LIGHT_SLIDER:Ljava/lang/String; = "QPDE1014"

.field public static final EID_GO_TO_EDIT_MODE:Ljava/lang/String; = "LSE1011E"

.field public static final EID_GO_TO_SECOND_SCREEN:Ljava/lang/String; = "LSE1001"

.field public static final EID_HOTSPOT_TILE:Ljava/lang/String; = "QPBE1010"

.field public static final EID_INVOKE_DIGITAL_ASSISTANT:Ljava/lang/String; = "749007"

.field public static final EID_INVOKE_SEARCLE:Ljava/lang/String; = "749006"

.field public static final EID_LAUNCH_LEFT_SHORTCUT:Ljava/lang/String; = "LSE1008"

.field public static final EID_LAUNCH_RIGHT_SHORTCUT:Ljava/lang/String; = "LSE1009"

.field public static final EID_LAUNCH_SHORTCUT:Ljava/lang/String; = "LSE1007"

.field public static final EID_LIVE_TRANSLATE:Ljava/lang/String; = "QPPE1032"

.field public static final EID_LOCATION_TILE:Ljava/lang/String; = "QPBE1014"

.field public static final EID_MEDIA_QUICKCONTROL_BAR_DEVICES:Ljava/lang/String; = "QPPE1005"

.field public static final EID_MEDIA_QUICKCONTROL_BAR_MEDIA:Ljava/lang/String; = "QPPE1006"

.field public static final EID_MEDIA_QUICKCONTROL_OUTPUT_SWITCHER:Ljava/lang/String; = "QPPE1007"

.field public static final EID_MEDIA_VOLUME_EXPAND:Ljava/lang/String; = "QPPE1035"

.field public static final EID_MEDIA_VOLUME_SLIDER:Ljava/lang/String; = "QPPE1034"

.field public static final EID_MICROPHONE_ACCESS_TILE:Ljava/lang/String; = "QPBE1048"

.field public static final EID_MIC_MODE:Ljava/lang/String; = "QPPE1029"

.field public static final EID_MIC_MODE_EFFECT:Ljava/lang/String; = "ASMM1029"

.field public static final EID_MOBILEDATA_TILE:Ljava/lang/String; = "QPBE1009"

.field public static final EID_MORE_BUTTON:Ljava/lang/String; = "QPPE1004"

.field public static final EID_MORE_OPTION_STATUSBAR_CLICK:Ljava/lang/String; = "QPPE1013"

.field public static final EID_MULTISIM_BAR_LAUNCH_SIM_MANAGER:Ljava/lang/String; = "QPPE1015"

.field public static final EID_MULTISIM_BAR_VALUE_OF_EACH_SLOT:Ljava/lang/String; = "QPPE1016"

.field public static final EID_NAVBAR_HIDE_PIN_BUTTON_DOUBLE_TAPPED:Ljava/lang/String; = "5190"

.field public static final EID_NAVBAR_IME_SWITCHER_CLICKED:Ljava/lang/String; = "5192"

.field public static final EID_NFC_TILE:Ljava/lang/String; = "QPBE1020"

.field public static final EID_OPEN_NOTIFICATION_LIST:Ljava/lang/String; = "1005"

.field public static final EID_OPEN_QUICK_PANEL_SEPARATE:Ljava/lang/String; = "QPBSE1004"

.field public static final EID_OPEN_QUICK_PANEL_TOGETHER:Ljava/lang/String; = "QPBSE1003"

.field public static final EID_OPEN_SECURITY_HELP:Ljava/lang/String; = "LSE1073"

.field public static final EID_PANEL_SETTINGS:Ljava/lang/String; = "QPPE1011"

.field public static final EID_POWER_OFF_BUTTON:Ljava/lang/String; = "QPPE1002"

.field public static final EID_PREVIOUS_CREDENTIAL:Ljava/lang/String; = "LSE2039E"

.field public static final EID_QPNE_BUBBLE_FROM_NOTI:Ljava/lang/String; = "QPNE0012"

.field public static final EID_QPNE_BUTTONS_MEDIA:Ljava/lang/String; = "QPNE0003"

.field public static final EID_QPNE_CALL_CHIP_GENERATED:Ljava/lang/String; = "QPNE0105"

.field public static final EID_QPNE_CALL_CHIP_OPEN:Ljava/lang/String; = "QPNE0106"

.field public static final EID_QPNE_CANCEL_NOTIFICATION_CLICK:Ljava/lang/String; = "QPNE0005"

.field public static final EID_QPNE_CANCEL_NOTIFICATION_DISMISS:Ljava/lang/String; = "QPNE0006"

.field public static final EID_QPNE_CANCEL_NOTIFICATION_SNOOZE:Ljava/lang/String; = "QPNE0007"

.field public static final EID_QPNE_CLEAR_NOTIFICATION:Ljava/lang/String; = "QPNE0026"

.field public static final EID_QPNE_COVER_AI_SUGGESTIONS_FAILED:Ljava/lang/String; = "QPNE0216"

.field public static final EID_QPNE_COVER_AI_SUGGESTIONS_GENERATED:Ljava/lang/String; = "QPNE0215"

.field public static final EID_QPNE_COVER_AI_SUGGEST_BUTTON:Ljava/lang/String; = "QPNE0217"

.field public static final EID_QPNE_COVER_CALLBACK_VIA_MISSED_CALL_NOTIFICATION:Ljava/lang/String; = "QPNE0208"

.field public static final EID_QPNE_COVER_CLEAR_BUTTON:Ljava/lang/String; = "QPNE0201"

.field public static final EID_QPNE_COVER_CLEAR_NOTIFICATION:Ljava/lang/String; = "QPNE0202"

.field public static final EID_QPNE_COVER_MOVE_TO_CALL:Ljava/lang/String; = "QPNE0213"

.field public static final EID_QPNE_COVER_OPEN_IN_MAIN_SCREEN:Ljava/lang/String; = "QPNE0204"

.field public static final EID_QPNE_COVER_REPLY:Ljava/lang/String; = "QPNE0203"

.field public static final EID_QPNE_COVER_REPLY_WITH_EMOJI:Ljava/lang/String; = "QPNE0206"

.field public static final EID_QPNE_COVER_REPLY_WITH_KEYBORAD:Ljava/lang/String; = "QPNE0210"

.field public static final EID_QPNE_COVER_REPLY_WITH_PRESET:Ljava/lang/String; = "QPNE0207"

.field public static final EID_QPNE_COVER_REPLY_WITH_QUICK_RESPONSES:Ljava/lang/String; = "QPNE0211"

.field public static final EID_QPNE_COVER_REPLY_WITH_VOICE:Ljava/lang/String; = "QPNE0205"

.field public static final EID_QPNE_COVER_SCREEN_ID_DETAIL:Ljava/lang/String; = "QPN102"

.field public static final EID_QPNE_COVER_SCREEN_ID_GROUP:Ljava/lang/String; = "QPN101"

.field public static final EID_QPNE_COVER_SCREEN_ID_LIST:Ljava/lang/String; = "QPN100"

.field public static final EID_QPNE_COVER_UNFOLD_IN_DETAIL_VIEW:Ljava/lang/String; = "QPNE0212"

.field public static final EID_QPNE_COVER_UP_BUTTON_IN_DETAIL_VIEW:Ljava/lang/String; = "QPNE0214"

.field public static final EID_QPNE_COVER_VIEW_DETAILS:Ljava/lang/String; = "QPNE0200"

.field public static final EID_QPNE_DND_DETAIL_OPTION:Ljava/lang/String; = "QPNE0301"

.field public static final EID_QPNE_GO_TO_SETTINGS_FROM_GUTS:Ljava/lang/String; = "QPNE0015"

.field public static final EID_QPNE_MAXIMUM_NUMBER_REACHED:Ljava/lang/String; = "QPNE0027"

.field public static final EID_QPNE_MEDIA_BUDS_BUTTON:Ljava/lang/String; = "QPNE0024"

.field public static final EID_QPNE_MEDIA_PLAY_LAST_SONG:Ljava/lang/String; = "QPNE0030"

.field public static final EID_QPNE_MEDIA_PLAY_MUSIC:Ljava/lang/String; = "QPNE0031"

.field public static final EID_QPNE_MEDIA_SEEK_BAR_INTERACTION:Ljava/lang/String; = "QPNE0023"

.field public static final EID_QPNE_NOTIFICATION_SETTINGS_ON_FOOTER:Ljava/lang/String; = "QPNE0017"

.field public static final EID_QPNE_NOTI_ACTION_BUTTON:Ljava/lang/String; = "QPNE0009"

.field public static final EID_QPNE_NOTI_EXPANSION:Ljava/lang/String; = "QPNE0008"

.field public static final EID_QPNE_OPEN_APP_MEDIA:Ljava/lang/String; = "QPNE0002"

.field public static final EID_QPNE_OPEN_NOTIFICATION_PANEL_SEPARATE:Ljava/lang/String; = "QPNE0029"

.field public static final EID_QPNE_OUTPUT_SWITCHER:Ljava/lang/String; = "QPNE0018"

.field public static final EID_QPNE_QUICK_REPLY_BUTTON_AND_ACTIONS:Ljava/lang/String; = "QPNE0011"

.field public static final EID_QPNE_REMOVE_MEDIA:Ljava/lang/String; = "QPNE0004"

.field public static final EID_QPNE_REPLY_BUTTON:Ljava/lang/String; = "QPNE0010"

.field public static final EID_QPNE_SHOW_GUTS:Ljava/lang/String; = "QPNE0013"

.field public static final EID_QPNE_SWIPE_MEDIA:Ljava/lang/String; = "QPNE0022"

.field public static final EID_QPNE_TURN_OFF_APP_NOTIFICATION_FROM_GUTS:Ljava/lang/String; = "QPNE0025"

.field public static final EID_QP_AIRPLANEMODE_COVER:Ljava/lang/String; = "QPBE2018"

.field public static final EID_QP_BLUETOOTH_COVER:Ljava/lang/String; = "QPBE2017"

.field public static final EID_QP_BRIGHTNESSMORE_COVER:Ljava/lang/String; = "QPBE2023"

.field public static final EID_QP_BRIGHTNESS_LEVEL_COVER:Ljava/lang/String; = "QPBE2025"

.field public static final EID_QP_FLASHLIGHT_COVER:Ljava/lang/String; = "QPBE2019"

.field public static final EID_QP_MOBILEDATA_COVER:Ljava/lang/String; = "QPBE2020"

.field public static final EID_QP_MODES_COVER:Ljava/lang/String; = "QPBE2022"

.field public static final EID_QP_SCREENRECORDER_COVER:Ljava/lang/String; = "QPBE2021"

.field public static final EID_QP_SOUND_MODE_COVER:Ljava/lang/String; = "QPBE2016"

.field public static final EID_QP_WIFI_COVER:Ljava/lang/String; = "QPBE2015"

.field public static final EID_QQS_ACTIVE_BUTTONS_RATIO:Ljava/lang/String; = "QPBSE1001"

.field public static final EID_QS_ACTIVE_BUTTONS_RATIO:Ljava/lang/String; = "QPBSE1002"

.field public static final EID_QUICKCONNECTBAR_EXPAND:Ljava/lang/String; = "8001"

.field public static final EID_QUICKTILE_ICON_TAP:Ljava/lang/String; = "QPBE1101"

.field public static final EID_QUICKTILE_LABEL_TAP:Ljava/lang/String; = "QPBE1103"

.field public static final EID_QUICKTILE_LONG_CLICK:Ljava/lang/String; = "QPBE1102"

.field public static final EID_QUICK_PANEL_LAYOUT_EVENT_ID:Ljava/lang/String; = "QPPE1012"

.field public static final EID_RETRY_BIOMETRICS:Ljava/lang/String; = "LSE1013"

.field public static final EID_ROTATION_DETAIL_CALL_SCREEN_SWITCH:Ljava/lang/String; = "QPDE1012"

.field public static final EID_ROTATION_DETAIL_HOME_SCREEN_SWITCH:Ljava/lang/String; = "QPDE1010"

.field public static final EID_ROTATION_DETAIL_LOCK_SCREEN_SWITCH:Ljava/lang/String; = "QPDE1011"

.field public static final EID_ROTATION_DETAIL_NAVIGATION_BAR_ROTATE_SUGGESTION_ENABLED:Ljava/lang/String; = "QPDE1009"

.field public static final EID_ROTATION_LOCK_TILE:Ljava/lang/String; = "QPBE1004"

.field public static final EID_SCREENCAPTURE_DETAIL_SCREENCAPTURE_MODE_SELECTED:Ljava/lang/String; = "9050"

.field public static final EID_SCREENCAPTURE_DETAIL_SCREENRECORD_MODE_SELECTED:Ljava/lang/String; = "9051"

.field public static final EID_SCREEN_CAPTURE:Ljava/lang/String; = "9001"

.field public static final EID_SCREEN_CAPTURE_TILE:Ljava/lang/String; = "QPBE1044"

.field public static final EID_SCREEN_OFF_COVER_SCREEN:Ljava/lang/String; = "CVSE1004"

.field public static final EID_SCREEN_RECORDER_TILE:Ljava/lang/String; = "QPBE1022"

.field public static final EID_SECOND_SCREEN_TILE:Ljava/lang/String; = "QPBE1043"

.field public static final EID_SETTING_BUTTON:Ljava/lang/String; = "QPPE1003"

.field public static final EID_SHOW_HINT:Ljava/lang/String; = "LSE1034"

.field public static final EID_SHOW_LOCKSCREEN:Ljava/lang/String; = "LSE1062"

.field public static final EID_SHOW_SUBSCREEN:Ljava/lang/String; = "5001"

.field public static final EID_SOUNDMODE_TILE:Ljava/lang/String; = "QPBE1002"

.field public static final EID_SOUND_MODE_COVER:Ljava/lang/String; = "QPBE2002"

.field public static final EID_STRONG_AUTH:Ljava/lang/String; = "LSE1068"

.field public static final EID_TILE_CHUNK_HANDLE:Ljava/lang/String; = "QPPE1036"

.field public static final EID_TOUCH_LOCKSCREEN_APP_SCREEN_NON_RESIZABLE_RESTART:Ljava/lang/String; = "8111"

.field public static final EID_TOUCH_LOCKSCREEN_HOME_AND_RECENT_CONTINUE_USING:Ljava/lang/String; = "8301"

.field public static final EID_TOUCH_LOCKSCREEN_NON_RESIZABLE_CONTINUE_USING:Ljava/lang/String; = "8101"

.field public static final EID_TOUCH_LOCKSCREEN_NON_RESIZABLE_GAME_EXIT:Ljava/lang/String; = "8202"

.field public static final EID_TOUCH_LOCKSCREEN_NON_RESIZABLE_GAME_RESTART:Ljava/lang/String; = "8201"

.field public static final EID_TOUCH_LOCKSCREEN_RESIZABLE_CONTINUE_USING:Ljava/lang/String; = "8001"

.field public static final EID_UNLOCK_BOUNCER:Ljava/lang/String; = "LSE1032"

.field public static final EID_VIDEO_EFFECTS:Ljava/lang/String; = "QPPE1030"

.field public static final EID_VIEW_WALLPAPAER_ONLY:Ljava/lang/String; = "LSE1011"

.field public static final EID_VOLUME_PANEL_COVER_FINE_CONTROL:Ljava/lang/String; = "5023"

.field public static final EID_VOLUME_PANEL_COVER_SHOW:Ljava/lang/String; = "5018"

.field public static final EID_VOLUME_PANEL_COVER_VOLUME_KEY:Ljava/lang/String; = "5027"

.field public static final EID_VOLUME_PANEL_EAR_SHOCK_CANCEL:Ljava/lang/String; = "6015"

.field public static final EID_VOLUME_PANEL_EAR_SHOCK_OK:Ljava/lang/String; = "6016"

.field public static final EID_VOLUME_PANEL_EXPAND:Ljava/lang/String; = "6011"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_ACCESSIBILITY:Ljava/lang/String; = "6025"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_BIXBY:Ljava/lang/String; = "6024"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_MEDIA:Ljava/lang/String; = "6014"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_NOTIFICATION:Ljava/lang/String; = "6022"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_RINGTONE:Ljava/lang/String; = "6021"

.field public static final EID_VOLUME_PANEL_FINE_VOLUME_SYSTEM:Ljava/lang/String; = "6023"

.field public static final EID_VOLUME_PANEL_LIMITER_CANCEL:Ljava/lang/String; = "6018"

.field public static final EID_VOLUME_PANEL_LIMITER_SETTING:Ljava/lang/String; = "6017"

.field public static final EID_VOLUME_PANEL_MEDIA_SWITCH:Ljava/lang/String; = "6013"

.field public static final EID_VOLUME_PANEL_SHRINK:Ljava/lang/String; = "6012"

.field public static final EID_VOLUME_PANEL_VOLUME_KEY:Ljava/lang/String; = "6019"

.field public static final EID_WALLPAPER_SET_FROM:Ljava/lang/String; = "0007"

.field public static final EID_WALLPAPER_SET_TYPE:Ljava/lang/String; = "0008"

.field public static final EID_WALLPAPER_VIDEO_EDIT:Ljava/lang/String; = "0014"

.field public static final EID_WALLPAPER_VIDEO_SET:Ljava/lang/String; = "0013"

.field public static final EID_WIFI_COVER:Ljava/lang/String; = "QPBE2001"

.field public static final EID_WIFI_TILE:Ljava/lang/String; = "QPBE1001"

.field public static final EID_WORK_MODE_TILE:Ljava/lang/String; = "QPBE1045"

.field public static final FLEX_NUMBER_OF_TOOLS_STATUS:Ljava/lang/String; = "F007"

.field public static final FLEX_PANEL_PREF_NAME:Ljava/lang/String; = "flex_panel_pref"

.field public static final FLEX_TOOLBAR_FUNCTION_STATUS:Ljava/lang/String; = "F006"

.field public static final LOCK_PREF_NAME:Ljava/lang/String; = "lockscreen_pref"

.field public static final MIC_MODE_PREF_NAME:Ljava/lang/String; = "micmode_pref"

.field public static final NAVBAR_KEY_ASSISTANT_INVOCATION_TYPE:Ljava/lang/String; = "InvocationType"

.field public static final NAVBAR_KEY_DIGITAL_ASSISTANT_APP:Ljava/lang/String; = "DigitalAssistantApp"

.field public static final NAVBAR_PREF_NAME:Ljava/lang/String; = "navbar_pref"

.field public static final NIGHT_MODE_CHANGED_SINCE_SELECTED_IN_SETUP_WIZARD:Ljava/lang/String; = "QPBE1051"

.field public static final NOTIFICATION_PREF_NAME:Ljava/lang/String; = "notification_pref"

.field public static final OAID_ONGOING_ACTION_BUTTONS:Ljava/lang/String; = "SBOA0006"

.field public static final OAID_ONGOING_CHIP_GENERATED:Ljava/lang/String; = "SBOA0001"

.field public static final OAID_ONGOING_CLOSD_EXPAND_VIEW:Ljava/lang/String; = "SBOA0002"

.field public static final OAID_ONGOING_DISMISS_EXPAND_VIEW:Ljava/lang/String; = "SBOA0004"

.field public static final OAID_ONGOING_OPEN_APP:Ljava/lang/String; = "SBOA0003"

.field public static final OAID_ONGOING_SHOW_EXPAND_VIEW:Ljava/lang/String; = "SBOA0008"

.field public static final OAID_ONGOING_SHOW_GUTS:Ljava/lang/String; = "SBOA0005"

.field public static final OAID_ONGOING_SWIPE_TO_SEE_OTHER_ACTIVITY:Ljava/lang/String; = "SBOA0007"

.field public static final OAID_PANEL_ONGOING_OPEN_APP:Ljava/lang/String; = "QPOA0010"

.field public static final QPBE_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final QPBE_QQS_TILE_ICON_POSITION:Ljava/lang/String; = "position_1depth"

.field public static final QPBE_QQS_TILE_INTERACTION:Ljava/lang/String; = "interaction_1depth"

.field public static final QPBE_QS_TILE_ICON_POSITION:Ljava/lang/String; = "position_2depth"

.field public static final QPBE_QS_TILE_INTERACTION:Ljava/lang/String; = "interaction_2depth"

.field public static final QPBE_QUICK_TILE_ICON_DETAIL:Ljava/lang/String; = "Details"

.field public static final QPBSE_KEY_ACTIVE:Ljava/lang/String; = "active"

.field public static final QPDE_KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final QPNE_KEY_APP:Ljava/lang/String; = "app"

.field public static final QPNE_KEY_COUNT:Ljava/lang/String; = "count"

.field public static final QPNE_KEY_FROM:Ljava/lang/String; = "from"

.field public static final QPNE_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final QPNE_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final QPNE_VID_ACTIONS:Ljava/lang/String; = "actions"

.field public static final QPNE_VID_ALERT:Ljava/lang/String; = "alert"

.field public static final QPNE_VID_APP_OFF:Ljava/lang/String; = "app off"

.field public static final QPNE_VID_BUBBLE:Ljava/lang/String; = "bubble"

.field public static final QPNE_VID_BUTTON:Ljava/lang/String; = "button"

.field public static final QPNE_VID_CHANNEL_OFF:Ljava/lang/String; = "channel off"

.field public static final QPNE_VID_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final QPNE_VID_COVER_ALL:Ljava/lang/String; = "all"

.field public static final QPNE_VID_COVER_BUTTON:Ljava/lang/String; = "button"

.field public static final QPNE_VID_COVER_GROUP:Ljava/lang/String; = "group"

.field public static final QPNE_VID_COVER_SWIPE:Ljava/lang/String; = "swipe"

.field public static final QPNE_VID_GROUP:Ljava/lang/String; = "group"

.field public static final QPNE_VID_GROUPED:Ljava/lang/String; = "grouped"

.field public static final QPNE_VID_NORMAL:Ljava/lang/String; = "normal"

.field public static final QPNE_VID_NOT_BUBBLE:Ljava/lang/String; = "don\'t bubble"

.field public static final QPNE_VID_PRIORITY:Ljava/lang/String; = "priority"

.field public static final QPNE_VID_REPLY_TEXT:Ljava/lang/String; = "reply texts"

.field public static final QPNE_VID_SILENT:Ljava/lang/String; = "silent"

.field public static final QPNE_VID_SINGLE:Ljava/lang/String; = "single"

.field public static final QPNE_VID_SWIPE:Ljava/lang/String; = "swipe"

.field public static final QPPE_KEY_BRIGHTNESS_BAR:Ljava/lang/String; = "location"

.field public static final QPPE_KEY_EDITED_BUTTON_NAME:Ljava/lang/String; = "buttonName"

.field public static final QPPE_KEY_EDITED_BUTTON_POSITION:Ljava/lang/String; = "position"

.field public static final QPPE_KEY_EDIT_BUTTONS:Ljava/lang/String; = "location"

.field public static final QPPE_KEY_EDIT_BUTTON_SAVE:Ljava/lang/String; = "isChanged"

.field public static final QPPE_KEY_MULTI_SIM:Ljava/lang/String; = "isChanged"

.field public static final QUICK_PREF_NAME:Ljava/lang/String; = "quick_pref"

.field public static final RUNESTONE_LABEL_QP_BUTTON:Ljava/lang/String; = "QUICK_PANEL_BUTTON"

.field public static final RUNESTONE_LABEL_QP_LAYOUT:Ljava/lang/String; = "QUICK_PANEL_LAYOUT"

.field public static final SA_ACCESSIBILITY_EVENT_MAGNIFICATION_CHANGE_SIZE_FULL:Ljava/lang/String; = "A11Y3194"

.field public static final SA_ACCESSIBILITY_EVENT_MAGNIFICATION_CHANGE_SIZE_WINDOW:Ljava/lang/String; = "A11Y3188"

.field public static final SA_ACCESSIBILITY_EVENT_MAGNIFICATION_PANNEL_SIZE_LARGE:Ljava/lang/String; = "A11Y3193"

.field public static final SA_ACCESSIBILITY_EVENT_MAGNIFICATION_PANNEL_SIZE_MEDIUM:Ljava/lang/String; = "A11Y3192"

.field public static final SA_ACCESSIBILITY_EVENT_MAGNIFICATION_PANNEL_SIZE_SMALL:Ljava/lang/String; = "A11Y3191"

.field public static final SA_ACCESSIBILITY_SCREEN_MAGNIFICATION_PANNEL:Ljava/lang/String; = "A11Y3190"

.field public static final SID_APP_DOCK:Ljava/lang/String; = "131"

.field public static final SID_APP_DOCK_GRID_VIEW:Ljava/lang/String; = "132"

.field public static final SID_ASSIST_POPUP_OPENED:Ljava/lang/String; = "980"

.field public static final SID_BRIGHTNESS_DETAIL:Ljava/lang/String; = "QPD101"

.field public static final SID_CONTROL_CHOOSE_DEVICES:Ljava/lang/String; = "Dvcs02"

.field public static final SID_CONTROL_CUSTOM_PANEL:Ljava/lang/String; = "Dvcs10"

.field public static final SID_CONTROL_INTRO:Ljava/lang/String; = "Dvcs01"

.field public static final SID_CONTROL_INTRO_NO_APPS_TO_SHOW:Ljava/lang/String; = "Dvcs03"

.field public static final SID_CONTROL_MAIN_SCREEN:Ljava/lang/String; = "Dvcs05"

.field public static final SID_CONTROL_MANAGE_APPS:Ljava/lang/String; = "Dvcs06"

.field public static final SID_CONTROL_NO_DEVICE_SELECTED:Ljava/lang/String; = "Dvcs04"

.field public static final SID_CONTROL_SETTINGS:Ljava/lang/String; = "Dvcs08"

.field public static final SID_FLASH_DETAIL:Ljava/lang/String; = "QPD103"

.field public static final SID_KEYGUARD_BOUNCER:Ljava/lang/String; = "102"

.field public static final SID_KEYGUARD_NORMAL:Ljava/lang/String; = "101"

.field public static final SID_NOTIFICATION_PANEL:Ljava/lang/String; = "QPN003"

.field public static final SID_QUICKPANEL_CLOSED:Ljava/lang/String; = "299"

.field public static final SID_QUICKPANEL_CUSTOMIZER:Ljava/lang/String; = "QPS103"

.field public static final SID_QUICKPANEL_EXPANDED:Ljava/lang/String; = "QPP101"

.field public static final SID_QUICKPANEL_LAYOUT:Ljava/lang/String; = "QPP103"

.field public static final SID_QUICKPANEL_OPENED:Ljava/lang/String; = "QPN001"

.field public static final SID_ROTATE_DETAIL:Ljava/lang/String; = "QPD102"

.field public static final SID_SCREEN_CAPTURE:Ljava/lang/String; = "900"

.field public static final SID_SUBSCREEN_LARGE:Ljava/lang/String; = "101_S"

.field public static final SID_SUBSCREEN_LARGE_TENT:Ljava/lang/String; = "101_S_R"

.field public static final SID_SUBSCREEN_NORMAL:Ljava/lang/String; = "500"

.field private static final SID_SUB_SCREEN:Ljava/lang/String; = "_S"

.field public static final SID_TOUCH_LOCKSCREEN_APP_SCREEN_NON_RESIZABLE:Ljava/lang/String; = "811"

.field public static final SID_TOUCH_LOCKSCREEN_HOME_AND_RECENT:Ljava/lang/String; = "830"

.field public static final SID_TOUCH_LOCKSCREEN_NON_RESIZABLE:Ljava/lang/String; = "810"

.field public static final SID_TOUCH_LOCKSCREEN_NON_RESIZABLE_GAME:Ljava/lang/String; = "820"

.field public static final SID_TOUCH_LOCKSCREEN_RESIZABLE:Ljava/lang/String; = "800"

.field public static final SID_VOLUME_PANEL_OPENED:Ljava/lang/String; = "601"

.field public static final SID_WALLPAPER_LOCK_COMMON_PREVIEW:Ljava/lang/String; = "200"

.field public static final SID_WALLPAPER_VIDEO_PREVIEW:Ljava/lang/String; = "600"

.field public static final STATUS_BRIGHTNESS_DETAIL_ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "QPDS1006"

.field public static final STATUS_FLASH_LIGHT_SLIDER:Ljava/lang/String; = "QPDS1014"

.field public static final STATUS_KEY_ACTIVE_TILE_ITEMS:Ljava/lang/String; = "1199"

.field public static final STATUS_NOTIFICATION_AND_QUICK_SETTINGS_VIEW_TYPE:Ljava/lang/String; = "QPPS1026"

.field public static final STATUS_QUICK_PANEL_COLLAPSED_ROW:Ljava/lang/String; = "QPPS1029"

.field public static final STATUS_QUICK_PANEL_LAYOUT:Ljava/lang/String; = "QPPS1028"

.field public static final STATUS_QUICK_SETTINGS_REVERSE_SWIPE:Ljava/lang/String; = "QPPS1027"

.field public static final STATUS_ROTATION_DETAIL_CALL_SCREEN_SWITCH:Ljava/lang/String; = "QPDS1012"

.field public static final STATUS_ROTATION_DETAIL_HOME_SCREEN_SWITCH:Ljava/lang/String; = "QPDS1010"

.field public static final STATUS_ROTATION_DETAIL_LOCK_SCREEN_SWITCH:Ljava/lang/String; = "QPDS1011"

.field public static final STATUS_ROTATION_DETAIL_NAVIGATION_BAR_ROTATE_SUGGESTION_ENABLED:Ljava/lang/String; = "QPDS1009"

.field public static final STATUS_SHOW_BRIGHTNESS_ON_TOP:Ljava/lang/String; = "QPPS1023"

.field public static final STATUS_SHOW_DEVICES_AND_MEDIA:Ljava/lang/String; = "QPPS1024"

.field public static final STATUS_SHOW_MULTISIM_INFO:Ljava/lang/String; = "QPPS1025"

.field public static final STID_ADAPTIVE_BRIGHTNESS:Ljava/lang/String; = "QPDS2027"

.field public static final STID_ADAPTIVE_BRIGHTNESS_COVER:Ljava/lang/String; = "QPDS2006"

.field public static final STID_BRIGHTNESS_BAR_COVER:Ljava/lang/String; = "QPDS2025"

.field public static final STID_BRIGHTNESS_EVENT_DETAIL_COVER:Ljava/lang/String; = "QPPE2025"

.field public static final STID_BRIGHTNESS_LEVEL_COVER:Ljava/lang/String; = "QPDS2014"

.field public static final STID_CONTROL_DEVICES_APPS_STATUS:Ljava/lang/String; = "Dvcs_Apps_Status"

.field public static final STID_CONTROL_NUMBER_OF_APPS_IN_DEVICES:Ljava/lang/String; = "Dvcs_NumApps"

.field public static final STID_FILTERED_NOTIFICATION_COUNT:Ljava/lang/String; = "QPNS0004"

.field public static final STID_HOME_WALLPAPER_FROM:Ljava/lang/String; = "WS0002"

.field public static final STID_HOME_WALLPAPER_TYPE:Ljava/lang/String; = "WS0001"

.field public static final STID_LOCK_BOUNCER_POSITION:Ljava/lang/String; = "LSS1072"

.field public static final STID_LOCK_CLOCK_FONT:Ljava/lang/String; = "LSS9008F"

.field public static final STID_LOCK_CLOCK_NR_FAMILY_FONT_WEIGHT:Ljava/lang/String; = "LSS9011"

.field public static final STID_LOCK_CLOCK_POSITION:Ljava/lang/String; = "LSS9010"

.field public static final STID_LOCK_CLOCK_STYLE_COLOR:Ljava/lang/String; = "LSS9009"

.field public static final STID_LOCK_CLOCK_STYLE_TYPE:Ljava/lang/String; = "LSS9008"

.field public static final STID_LOCK_WALLPAPER_FROM:Ljava/lang/String; = "WS0004"

.field public static final STID_LOCK_WALLPAPER_TYPE:Ljava/lang/String; = "WS0003"

.field public static final STID_MIC_MODE_EFFECT_CP_CALL:Ljava/lang/String; = "ASMM1031"

.field public static final STID_MIC_MODE_EFFECT_VOIP:Ljava/lang/String; = "ASMM1030"

.field public static final STID_MIC_MODE_IS_SUPPORTED:Ljava/lang/String; = "ASMM1032"

.field public static final STID_NAVBAR_USES_TYPE_STATE:Ljava/lang/String; = "5191"

.field public static final STID_NOTIFICATION_POSTED_KEY:Ljava/lang/String; = "QPNS0002"

.field public static final STID_NOTIFICATION_POSTED_PACKAGE_AND_COUNT:Ljava/lang/String; = "QPNS0003"

.field public static final STID_NOTIFICATION_TOTAL_COUNT:Ljava/lang/String; = "QPNS0001"

.field public static final STID_WALLPAPER_POST_FIX_FOR_SUB:Ljava/lang/String; = "_C"

.field public static final ST_VALUE_MIC_MODE_FULL_SPECTRUM:Ljava/lang/String; = "FULL_SPECTRUM"

.field public static final ST_VALUE_MIC_MODE_STANDARD:Ljava/lang/String; = "STANDARD"

.field public static final ST_VALUE_MIC_MODE_VOICE_FOCUS:Ljava/lang/String; = "VOICE_FOCUS"

.field private static final SYSTEMUI_TRACKING_ID:Ljava/lang/String; = "472-399-5110257"

.field public static final TAG:Ljava/lang/String; = "SystemUIAnalytics"

.field public static final TAG_QUICK_SETTINGS:Ljava/lang/String; = "SA_QUICK_SETTINGS"

.field public static final TILE_PREF_NAME:Ljava/lang/String; = "tile_pref"

.field private static final UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final VID_END:I = 0x2

.field public static final VID_OFF:I = 0x0

.field public static final VID_ON:I = 0x1

.field public static final VID_START:I = 0x1

.field public static final VID_TAP:I = 0x1

.field public static final VID_TAP_AND_SWIPE:I = 0x3

.field public static final VID_TAP_AND_TAP:I = 0x2

.field public static final WALLPAPER_PREF_NAME:Ljava/lang/String; = "wallpaper_pref"

.field private static sConfigured:Z = false

.field private static sContext:Landroid/content/Context; = null

.field private static sCurrentScreenID:Ljava/lang/String; = ""

.field private static sIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sIdDuplicated:Z


# direct methods
.method public static synthetic $r8$lambda$UmORK3jj7Ht-y-PmeeZkXEmo3MU(Ljava/lang/reflect/Field;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->lambda$prepareIdMap$0(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZZQmJk7gOTZZ86kWBcXr3tzSnpM(Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->lambda$prepareIdMap$1(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/SystemUIAnalytics;->sIdDuplicated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkConfigurationConfirmed()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/util/SystemUIAnalytics;->sConfigured:Z

    if-nez v0, :cond_0

    const-string v0, "SystemUIAnalytics"

    const-string v1, "SA is NOT configured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/SystemUIAnalytics;->sConfigured:Z

    return v0
.end method

.method public static convertScreenID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->isSupportA11yLog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "_S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getCurrentScreenID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    return-object v0
.end method

.method private static getSEPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "unspecified"

    return-object p0
.end method

.method public static initSystemUIAnalyticsStates(Landroid/app/Application;)V
    .locals 2

    const-string v0, "SystemUIAnalytics"

    const-string v1, "initSystemUIAnalyticsStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setConfiguration(Landroid/app/Application;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->makeSAPreferences()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->prepareIdMap()V

    return-void
.end method

.method private static isSupportA11yLog(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "A11Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$prepareIdMap$0(Ljava/lang/reflect/Field;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SID_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EID_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OAID_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prepareIdMap$1(Ljava/lang/reflect/Field;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SID_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicated Key!! : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "SystemUIAnalytics"

    invoke-static {v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/systemui/util/SystemUIAnalytics;->sIdDuplicated:Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static makeSAPreferences()V
    .locals 12

    const-string v0, "controls_prefs"

    const-string v1, "flex_panel_pref"

    const-string v2, "micmode_pref"

    const-string v3, "notification_pref"

    const-string v4, "edgelighting_pref"

    const-string v5, "lockscreen_pref"

    const-string/jumbo v6, "wallpaper_pref"

    :try_start_0
    new-instance v7, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v7}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    sget-object v8, Lcom/android/systemui/util/SystemUIAnalytics;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030083

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    array-length v10, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v11, "quick_pref"

    if-ge v9, v10, :cond_0

    add-int/lit8 v10, v9, 0x2

    :try_start_1
    aget-object v10, v8, v10

    invoke-virtual {v7, v11, v10}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const-string v8, "QPBS1100"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPBS1101"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPPS1023"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPPS1024"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPPS1025"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPPS1026"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1006"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1009"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1010"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1011"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1012"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "QPDS1014"

    invoke-virtual {v7, v11, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS9008"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS9009"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS9008F"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS9010"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS9011"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "LSS1072"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "navbar_pref"

    const-string v8, "5191"

    invoke-virtual {v7, v5, v8}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0001"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0002"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0003"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0004"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0001_C"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0002_C"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0003_C"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "WS0004_C"

    invoke-virtual {v7, v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "QPNS0001"

    invoke-virtual {v7, v3, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "QPNS0002"

    invoke-virtual {v7, v3, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "QPNS0004"

    invoke-virtual {v7, v3, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v3, :cond_1

    const-string v3, "F006"

    invoke-virtual {v7, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "F007"

    invoke-virtual {v7, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "Dvcs_NumApps"

    invoke-virtual {v7, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Dvcs_Apps_Status"

    invoke-virtual {v7, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36105"

    invoke-virtual {v7, v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36106"

    invoke-virtual {v7, v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36107"

    invoke-virtual {v7, v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36108"

    invoke-virtual {v7, v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "36110"

    invoke-virtual {v7, v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASMM1030"

    invoke-virtual {v7, v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASMM1031"

    invoke-virtual {v7, v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASMM1032"

    invoke-virtual {v7, v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    iget-object v1, v7, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->map:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Tracker registerSettingPref SingleThreadExecutor"

    const v3, 0x1dc6b7bd

    invoke-static {v2, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object v4

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;

    invoke-direct {v5, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeSAPreference : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static prepareIdMap()V
    .locals 5

    const-class v0, Lcom/android/systemui/util/SystemUIAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/SystemUIAnalytics$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/SystemUIAnalytics$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    rem-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    aget-object v2, v0, v1

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "SystemUIAnalytics"

    const-string/jumbo v1, "warning, setConfiguration() needed for tile_ids loading."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sendEventCDLog "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SystemUIAnalytics"

    invoke-static {v1, p3, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p3

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendEventCDLog/all : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sendEventCDLog "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p3, v2, p4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SystemUIAnalytics"

    invoke-static {v1, p5, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p3

    new-instance p4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {p4, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "sendEventCDLog/all : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p6, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendEventCDLog "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p3, v2, p4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p5, v2, p6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SystemUIAnalytics"

    invoke-static {v1, p7, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p3

    new-instance p4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {p4, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "sendEventCDLog/all : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sendEventCDLog "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUIAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendEventCDLog/all : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sendEventLog "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemUIAnalytics"

    invoke-static {v0, v2, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendEventLog : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sendEventLog "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUIAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    const-string p1, "ev"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "sendEventLog/detail : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "det"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sendEventLog "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SystemUIAnalytics"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendEventLog/detail : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "det"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sendEventLog "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SystemUIAnalytics"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    const-string p1, "ev"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "sendEventLog/all : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "det"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1

    cmp-long v1, p5, v1

    if-nez v1, :cond_1

    const-string v1, "Tap"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "DragDrop"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "sendEventLog "

    const-string v2, ", "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "SystemUIAnalytics"

    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance p6, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p6}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {p6, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p6, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    const-string p1, "ev"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p1, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "sendEventLog/all : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sendEventLog "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemUIAnalytics"

    invoke-static {v0, v2, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sc"

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    const-string/jumbo p1, "s"

    invoke-virtual {v2, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    const-string p1, "e"

    invoke-virtual {v2, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendEventLog : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sendRunestoneEventCDLog "

    const-string v3, ", "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, p2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SystemUIAnalytics"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance p4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {p4, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {p4, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setPersonalizedData(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "sendRunestoneEventCDLog/all : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    filled-new-array {p2, p4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "sendRunestoneEventCDLog "

    const-string v3, ", "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, p2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p3, v3, p4, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SystemUIAnalytics"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p2

    new-instance p4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {p4, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)V

    invoke-virtual {p4, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setPersonalizedData(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "sendRunestoneEventCDLog/all : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sendRunstoneEventLog "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUIAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ps"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendRunstoneEventLog : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendScreenViewLog(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendScreenViewLog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemUIAnalytics"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView$1(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendScreenViewLog : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public static sendScreenViewLog(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->convertScreenID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->checkConfigurationConfirmed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendScreenViewLog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->toReadableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemUIAnalytics"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sc"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView$1(Ljava/lang/String;)V

    const-string/jumbo v3, "s"

    invoke-virtual {v1, v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView$1(Ljava/lang/String;)V

    const-string v3, "e"

    invoke-virtual {v1, v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendScreenViewLog : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->setCurrentScreenID(Ljava/lang/String;)V

    return-void
.end method

.method private static setConfiguration(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "472-399-5110257"

    iput-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->getSEPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    iput-boolean v1, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sContext:Landroid/content/Context;

    sput-boolean v1, Lcom/android/systemui/util/SystemUIAnalytics;->sConfigured:Z

    return-void
.end method

.method public static setCurrentScreenID(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->isSupportA11yLog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static toReadableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static toReadableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sIDMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
