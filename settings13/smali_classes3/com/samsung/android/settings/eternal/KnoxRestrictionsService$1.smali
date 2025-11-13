.class Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$1;
.super Ljava/util/HashMap;
.source "KnoxRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 291
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "direct_call"

    const-string v1, "/Settings/Advanced/DirectCall"

    .line 294
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "easy_mute"

    const-string v1, "/Settings/Advanced/EasyMute"

    .line 295
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "palm_swipe_to_capture"

    const-string v1, "/Settings/Advanced/PalmSwipeToCapture"

    .line 296
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smart_alert"

    const-string v1, "/Settings/Advanced/SmartAlert"

    .line 297
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenshots_and_screen_recorder"

    const-string v1, "/Settings/Advanced/SmartCapture"

    .line 298
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smart_stay"

    const-string v1, "/Settings/Advanced/SmartStay"

    .line 299
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "direct_share"

    const-string v1, "/Settings/Advanced/DirectShare"

    .line 300
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lift_to_wake"

    const-string v1, "/Settings/Advanced/LiftToWake"

    .line 301
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "double_tab_to_wake_up"

    const-string v1, "/Settings/Advanced/DoubleTapToWake"

    .line 302
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onehand_operation_settings"

    const-string v1, "/Settings/Advanced/OneHandedMode"

    .line 303
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finger_sensor_gesture"

    const-string v1, "/Settings/Advanced/FingerSensorGestures"

    .line 304
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cover_screen_orientation"

    const-string v1, "/Settings/Advanced/CoverTextDirection"

    .line 305
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "short_press_key"

    const-string v1, "/Settings/Advanced/ActiveKeyShortPress"

    .line 307
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "long_press_key"

    const-string v1, "/Settings/Advanced/ActiveKeyLongPress"

    .line 308
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "active_key_on_lockscreen_key"

    const-string v1, "/Settings/Advanced/ActiveKeyOnLockScreen"

    .line 309
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xcover_key_dedicated_app"

    const-string v1, "/Settings/Advanced/XcoverKeyDedicatedApp"

    .line 310
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xcover_top_short_press_key"

    const-string v1, "/Settings/Advanced/XcoverTopKeyShortPress"

    .line 312
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xcover_top_long_press_key"

    const-string v1, "/Settings/Advanced/XcoverTopKeyLongPress"

    .line 313
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xcover_top_key_on_lockscreen_key"

    const-string v1, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    .line 314
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xcover_top_key_dedicated_app"

    const-string v1, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    .line 315
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "function_key_double_press"

    const-string v1, "/Settings/Advanced/SideKeyDoublePressSwitch"

    .line 317
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "function_key_double_press_type"

    const-string v1, "/Settings/Advanced/SideKeyDoublePressType"

    .line 318
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "double_press_open_apps"

    const-string v1, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    .line 319
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "function_key_long_press"

    const-string v1, "/Settings/Advanced/SideKeyLongPressType"

    .line 320
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smart_popup_view"

    const-string v1, "/Settings/Advanced/SmartPopupView"

    .line 322
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "top_level_location"

    const-string v1, "/Settings/Connections/Location"

    .line 325
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location_services_bluetooth_scanning"

    const-string v1, "/Settings/Connections/LocationBluetoothScan"

    .line 327
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location_services_wifi_scanning"

    const-string v1, "/Settings/Connections/LocationWifiScan"

    .line 328
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nfc_settings"

    const-string v1, "/Settings/Connections/Nfc"

    .line 331
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode_normal_mode "

    const-string v1, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    .line 332
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode_aggressive_mode "

    .line 333
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wifi_poor_network_detection"

    const-string v1, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    .line 334
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wifi_switch_for_individual_apps"

    const-string v1, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    .line 335
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "auto_wifi"

    const-string v1, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    .line 336
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wifi_adps"

    const-string v1, "/Settings/Connections/WiFi/Advanced/WifiPowerSavingMode"

    .line 337
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "switch_to_better_wifi"

    const-string v1, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifi"

    .line 338
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ape"

    const-string v1, "/Settings/Connections/WiFi/Intelligent/RealtimeDataPriorityMode"

    .line 339
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wifi_hs20_profile"

    const-string v1, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    .line 343
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MobileWIPS"

    const-string v1, "/Settings/Connections/WiFi/Advanced/WIPS"

    .line 347
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "auto_brightness"

    const-string v1, "/Settings/Display/AutoBrightness"

    .line 350
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_off_pocket"

    const-string v1, "/Settings/Display/BlockAccidentalTouches"

    .line 351
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "blue_light_filter"

    const-string v1, "/Settings/Display/BluelightFilter"

    .line 352
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sec_font_size"

    const-string v1, "/Settings/Display/FontSize"

    .line 355
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sec_font_style"

    const-string v1, "/Settings/Display/FontStyle"

    .line 356
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bold_text"

    const-string v1, "/Settings/Display/FontBold"

    .line 357
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_timeout"

    const-string v1, "/Settings/Display/ScreenTimeout"

    .line 358
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sec_screen_size"

    const-string v1, "/Settings/Display/ScreenZoom"

    .line 359
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "button_order"

    const-string v1, "/Settings/Display/ButtonLayout"

    .line 360
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_battery_percent"

    const-string v1, "/Settings/Display/ShowBatteryPercentage"

    .line 361
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_notification_icons_on_status_bar"

    const-string v1, "/Settings/Display/ShowRecentNotificationOnly"

    .line 363
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "night_theme"

    const-string v1, "/Settings/Display/NightMode"

    .line 364
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_mode"

    const-string v1, "/Settings/Display/ScreenMode"

    .line 365
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_resolution"

    const-string v1, "/Settings/Display/ScreenResolution"

    .line 366
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gesture_preview"

    const-string v1, "/Settings/Display/NavigationTypes"

    .line 367
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gesture_hint"

    const-string v1, "/Settings/Display/NavigationGestureHint"

    .line 368
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screensaver"

    const-string v1, "/Settings/Display/ScreenSaver"

    .line 369
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "increse_touch_sensetivity"

    const-string v1, "/Settings/Display/TouchSensetivity"

    .line 370
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key_show_keyboard_button"

    const-string v1, "/Settings/General/ShowKeyboardButton"

    .line 373
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "change_language_shortcut"

    const-string v1, "/Settings/General/ChangeLanguageShortcut"

    .line 374
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_virtual_keyboard_switch"

    const-string v1, "/Settings/General/ShowOnScreenKeyboard"

    .line 375
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_screen_dualclock"

    const-string v1, "/Settings/LockScreen/RoamingClock"

    .line 378
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "homecity_timezone"

    const-string v1, "/Settings/LockScreen/RoamingClockHomeCity"

    .line 379
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "where_to_show"

    const-string v1, "/Settings/LockScreen/RoamingClockPosition"

    .line 380
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_screen_additional_info"

    const-string v1, "/Settings/LockScreen/FaceWidget"

    .line 381
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facewidget_where_to_show"

    const-string v1, "/Settings/LockScreen/FaceWidgetPosition"

    .line 383
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set_visibility"

    const-string v1, "/Settings/LockScreen/HideContent"

    .line 384
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "noti_view_style"

    const-string v1, "/Settings/LockScreen/NotificationIconOnly"

    .line 385
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification_icons_only"

    .line 386
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_screen_menu_notifications"

    const-string v1, "/Settings/LockScreen/ShowNotification"

    .line 387
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "noti_card_seekbar"

    const-string v1, "/Settings/LockScreen/Transparency"

    .line 388
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "noti_inverse_text"

    const-string v1, "/Settings/LockScreen/AutoReverseTextColor"

    .line 389
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification_badging"

    const-string v1, "/Settings/Notifications/AppIconBadge"

    .line 392
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "homescreen_noti_preview"

    const-string v1, "/Settings/Notifications/AppIconBadgeShowNotifications"

    .line 393
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_icon_number"

    const-string v1, "/Settings/Notifications/AppIconBadgeStyle"

    .line 394
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_password"

    const-string v1, "/Settings/Security/MakePasswordVisible"

    .line 397
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "charging_sounds"

    const-string v1, "/Settings/Sound/ChargingSound"

    .line 400
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dial_pad_tones"

    const-string v1, "/Settings/Sound/DialingKeypadTone"

    .line 401
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keyboard_sound"

    const-string v1, "/Settings/Sound/KeyboardSound"

    .line 402
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "keyboard_vibration"

    const-string v1, "/Settings/Sound/KeyboardVibration"

    .line 403
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification"

    const-string v1, "/Settings/Sound/NotificationSound"

    .line 405
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification_2"

    const-string v1, "/Settings/Sound/NotificationSoundSim2"

    .line 406
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_locking_sounds"

    const-string v1, "/Settings/Sound/ScreenLockSound"

    .line 407
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "touch_sounds"

    const-string v1, "/Settings/Sound/TouchSound"

    .line 408
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "volume_key_control"

    const-string v1, "/Settings/Sound/UseVolumeKeyForMedia"

    .line 409
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vibrate_on_touch"

    const-string v1, "/Settings/Sound/VibrationFeedback"

    .line 411
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone_vibration_pattern"

    const-string v1, "/Settings/Sound/VibrationPattern"

    .line 412
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification_vibration_pattern"

    const-string v1, "/Settings/Sound/NotificationVibrationPattern"

    .line 414
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vibrate_when_ringing"

    const-string v1, "/Settings/Sound/VibrationWhileRinging"

    .line 416
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sync_vibration_with_ringtone"

    const-string v1, "/Settings/Sound/SyncWithRingtone"

    .line 418
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tts_engine_preference"

    const-string v1, "/Settings/Accessibility/PreferredEngine"

    .line 421
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tts_default_pitch"

    const-string v1, "/Settings/Accessibility/Pitch"

    .line 422
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tts_default_rate"

    const-string v1, "/Settings/Accessibility/Rate"

    .line 423
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spen_detachment_sound"

    const-string v1, "/AirCommand/Spen/SoundEnabled"

    .line 425
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
