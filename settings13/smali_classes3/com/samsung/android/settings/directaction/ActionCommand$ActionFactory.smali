.class public Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/directaction/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionFactory"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mcreateObject(Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/directaction/ActionCommand$ActionFactory;->createObject(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createObject(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/bixby/actions/Action;
    .locals 1

    .line 313
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "smart_capture"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "bluetooth"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "easy_mute"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "display"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "goto_jump_to_app_menu"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "data_usage"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "music_share"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "finger_sensor_gesture"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "face_recognition"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_9
    const-string p0, "general_management"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_a
    const-string p0, "notification_reminder"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_b
    const-string p0, "dual_messenger"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_c
    const-string p0, "notification_sounds"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_d
    const-string p0, "hotspot"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_e
    const-string p0, "sim_status"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_f
    const-string p0, "screen_timeout"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_10
    const-string p0, "direct_share"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_11
    const-string p0, "cloud_and_account"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_12
    const-string p0, "wifidirect"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_13
    const-string p0, "wifiSettings"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_14
    const-string p0, "auto_brightness"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_15
    const-string p0, "status_bar"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_16
    const-string p0, "video_enhancer"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_17
    const-string p0, "side_key"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_18
    const-string p0, "send_sos_message"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_19
    const-string p0, "navigation_bar"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_1a
    const-string p0, "software_update"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_1b
    const-string p0, "swipe_to_capture"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_1c
    const-string p0, "hard_press"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_1d
    const-string p0, "iris"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_1e
    const-string p0, "apps"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_1f
    const-string p0, "nfc"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_20
    const-string p0, "screen_zoom"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_21
    const-string p0, "screen_mode"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_22
    const-string p0, "about_device"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_23
    const-string p0, "smart_alert"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_24
    const-string p0, "reset_settings"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_25
    const-string p0, "user_manual"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_26
    const-string p0, "sound_mode"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_27
    const-string p0, "lock_screen"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_28
    const-string p0, "pin_windows"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_29
    const-string p0, "bluetooth_connect"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_2a
    const-string p0, "font_style"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_2b
    const-string p0, "temporary_mute_duration"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_2c
    const-string p0, "screen_resolution"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_2d
    const-string p0, "settings_main"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_2e
    const-string p0, "advanced"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_2f
    const-string p0, "volume"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_30
    const-string p0, "screen_keyboard"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_31
    const-string p0, "sound_and_vibration"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_32
    const-string p0, "language_and_input"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_33
    const-string p0, "status"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_34
    const-string p0, "get_jump_to_app_result"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_35
    const-string p0, "account"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_36
    const-string p0, "white_balance"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_37
    const-string p0, "ringtone"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_38
    const-string p0, "onehand_mode"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_39
    const-string p0, "full_screen_apps"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_3a
    const-string p0, "screen_saver"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3b
    const-string p0, "night_theme"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3c
    const-string p0, "font_size"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3d
    const-string p0, "language"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_0

    :cond_3d
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3e
    const-string p0, "samsung_keyboard"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_0

    :cond_3e
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3f
    const-string p0, "finger_prints"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_0

    :cond_3f
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_40
    const-string p0, "vibration_pattern"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_0

    :cond_40
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_41
    const-string p0, "biometrics_and_security"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_0

    :cond_41
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_42
    const-string p0, "smart_stay"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_0

    :cond_42
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_43
    const-string p0, "do_not_disturb"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_0

    :cond_43
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 396
    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SmartCaptureAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 381
    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/EasyMuteAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 414
    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/bixby/target/DisplayAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/DisplayAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 515
    :pswitch_3
    new-instance p0, Lcom/samsung/android/settings/bixby/target/GotoJumpToAppMenuAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/GotoJumpToAppMenuAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 411
    :pswitch_4
    new-instance p0, Lcom/samsung/android/settings/bixby/target/DataUsage;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/DataUsage;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 499
    :pswitch_5
    new-instance p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/MusicShareAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 384
    :pswitch_6
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FingerSensorGestureAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FingerSensorGestureAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 471
    :pswitch_7
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FaceRecognitionAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FaceRecognitionAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 435
    :pswitch_8
    new-instance p0, Lcom/samsung/android/settings/bixby/target/GeneralManagementAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/GeneralManagementAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 519
    :pswitch_9
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NotificationReminderAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/NotificationReminderAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 378
    :pswitch_a
    new-instance p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 456
    :pswitch_b
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NotificationSoundsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/NotificationSoundsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 507
    :pswitch_c
    new-instance p0, Lcom/samsung/android/settings/bixby/target/HotspotAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/HotspotAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 360
    :pswitch_d
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SimStatusAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 327
    :pswitch_e
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 375
    :pswitch_f
    new-instance p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/DirectShareAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 369
    :pswitch_10
    new-instance p0, Lcom/samsung/android/settings/bixby/target/CloudAndAccountAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/CloudAndAccountAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 492
    :pswitch_11
    new-instance p0, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 489
    :pswitch_12
    new-instance p0, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/WifiSettingsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 324
    :pswitch_13
    new-instance p0, Lcom/samsung/android/settings/bixby/target/AutoBrightnessAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/AutoBrightnessAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 432
    :pswitch_14
    new-instance p0, Lcom/samsung/android/settings/bixby/target/StatusBarAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/StatusBarAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 405
    :pswitch_15
    new-instance p0, Lcom/samsung/android/settings/bixby/target/VideoEnhancerAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/VideoEnhancerAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 477
    :pswitch_16
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SideKeyAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SideKeyAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 390
    :pswitch_17
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SendSOSMessageAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SendSOSMessageAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 426
    :pswitch_18
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NavigationBarAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/NavigationBarAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 483
    :pswitch_19
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 402
    :pswitch_1a
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SwipeToCaptureAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 423
    :pswitch_1b
    new-instance p0, Lcom/samsung/android/settings/bixby/target/HardPressAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/HardPressAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 474
    :pswitch_1c
    new-instance p0, Lcom/samsung/android/settings/bixby/target/IrisAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/IrisAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 408
    :pswitch_1d
    new-instance p0, Lcom/samsung/android/settings/bixby/target/AppsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/AppsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 503
    :pswitch_1e
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NfcAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/NfcAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 345
    :pswitch_1f
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 429
    :pswitch_20
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenModeAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/ScreenModeAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 357
    :pswitch_21
    new-instance p0, Lcom/samsung/android/settings/bixby/target/AboutDeviceAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/AboutDeviceAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 393
    :pswitch_22
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SmartAlertAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SmartAlertAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 444
    :pswitch_23
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ResetSettingsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/ResetSettingsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 354
    :pswitch_24
    new-instance p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/UserManualAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 348
    :pswitch_25
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SoundAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SoundAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 453
    :pswitch_26
    new-instance p0, Lcom/samsung/android/settings/bixby/target/LockScreenAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/LockScreenAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 333
    :pswitch_27
    new-instance p0, Lcom/samsung/android/settings/bixby/target/PinWindows;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/PinWindows;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 496
    :pswitch_28
    new-instance p0, Lcom/samsung/android/settings/bixby/target/BluetoothAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/BluetoothAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 417
    :pswitch_29
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FontStyleAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FontStyleAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 351
    :pswitch_2a
    new-instance p0, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/MuteDurationAction;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 339
    :pswitch_2b
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenResolutionAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/ScreenResolutionAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 315
    :pswitch_2c
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 372
    :pswitch_2d
    new-instance p0, Lcom/samsung/android/settings/bixby/target/AdvancedAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/AdvancedAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 486
    :pswitch_2e
    new-instance p0, Lcom/samsung/android/settings/bixby/target/VolumeAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/VolumeAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 447
    :pswitch_2f
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenKeyboardAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/ScreenKeyboardAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 462
    :pswitch_30
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SoundAndVibrationAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SoundAndVibrationAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 441
    :pswitch_31
    new-instance p0, Lcom/samsung/android/settings/bixby/target/LanguageAndInputAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/LanguageAndInputAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 363
    :pswitch_32
    new-instance p0, Lcom/samsung/android/settings/bixby/target/StatusAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/StatusAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 511
    :pswitch_33
    new-instance p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :pswitch_34
    new-instance p0, Lcom/samsung/android/settings/bixby/target/AccountAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/AccountAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 342
    :pswitch_35
    new-instance p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 459
    :pswitch_36
    new-instance p0, Lcom/samsung/android/settings/bixby/target/RingtoneAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/RingtoneAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 387
    :pswitch_37
    new-instance p0, Lcom/samsung/android/settings/bixby/target/OneHandModeAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/OneHandModeAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 420
    :pswitch_38
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 336
    :pswitch_39
    new-instance p0, Lcom/samsung/android/settings/bixby/target/ScreenSaverAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/ScreenSaverAction;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 330
    :pswitch_3a
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NightTheme;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/NightTheme;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 321
    :pswitch_3b
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FontAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FontAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 438
    :pswitch_3c
    new-instance p0, Lcom/samsung/android/settings/bixby/target/LanguageAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/LanguageAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 480
    :pswitch_3d
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 468
    :pswitch_3e
    new-instance p0, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/FingerPrintsAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 465
    :pswitch_3f
    new-instance p0, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/VibrationPatternAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 450
    :pswitch_40
    new-instance p0, Lcom/samsung/android/settings/bixby/target/BiometricsAndSecurityAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/BiometricsAndSecurityAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 399
    :pswitch_41
    new-instance p0, Lcom/samsung/android/settings/bixby/target/SmartStayAction;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/SmartStayAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 318
    :pswitch_42
    new-instance p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a4b3121 -> :sswitch_43
        -0x6ba3a0f1 -> :sswitch_42
        -0x66cbc854 -> :sswitch_41
        -0x65832d1d -> :sswitch_40
        -0x63d0db04 -> :sswitch_3f
        -0x639dc174 -> :sswitch_3e
        -0x602d6ca8 -> :sswitch_3d
        -0x5bc91a0f -> :sswitch_3c
        -0x5796351e -> :sswitch_3b
        -0x4faa6efe -> :sswitch_3a
        -0x4d6fb74b -> :sswitch_39
        -0x4b9bbc33 -> :sswitch_38
        -0x49b4c45e -> :sswitch_37
        -0x4680573a -> :sswitch_36
        -0x462c75d3 -> :sswitch_35
        -0x3d8df689 -> :sswitch_34
        -0x3532300e -> :sswitch_33
        -0x337488c5 -> :sswitch_32
        -0x3231a506 -> :sswitch_31
        -0x310661a6 -> :sswitch_30
        -0x305518e6 -> :sswitch_2f
        -0x2ad897de -> :sswitch_2e
        -0x2405dfab -> :sswitch_2d
        -0x1e8c2da1 -> :sswitch_2c
        -0x1e6b1874 -> :sswitch_2b
        -0x1d552a3f -> :sswitch_2a
        -0x1cbfaba7 -> :sswitch_29
        -0x176b6a27 -> :sswitch_28
        -0x16c21e00 -> :sswitch_27
        -0x146c852d -> :sswitch_26
        -0x143bd146 -> :sswitch_25
        -0x1253a6ed -> :sswitch_24
        -0x9d1b89a -> :sswitch_23
        -0x321b0b8 -> :sswitch_22
        -0x2946a6a -> :sswitch_21
        -0x28e803a -> :sswitch_20
        0x1a9ab -> :sswitch_1f
        0x2dca72 -> :sswitch_1e
        0x317413 -> :sswitch_1d
        0x752bef -> :sswitch_1c
        0x936ffa7 -> :sswitch_1b
        0x951fa61 -> :sswitch_1a
        0xa378b68 -> :sswitch_19
        0xa4bff28 -> :sswitch_18
        0xcf62777 -> :sswitch_17
        0xe9b8ac8 -> :sswitch_16
        0xecd3246 -> :sswitch_15
        0x176690e1 -> :sswitch_14
        0x2412ea58 -> :sswitch_13
        0x24fce73e -> :sswitch_12
        0x252a78bb -> :sswitch_11
        0x27eefc09 -> :sswitch_10
        0x3343888e -> :sswitch_f
        0x342d405a -> :sswitch_e
        0x418a9ecf -> :sswitch_d
        0x46d0ff18 -> :sswitch_c
        0x48f78310 -> :sswitch_b
        0x4fc54146 -> :sswitch_a
        0x52e4a3fa -> :sswitch_9
        0x53e410d5 -> :sswitch_8
        0x566c895a -> :sswitch_7
        0x5eb4b145 -> :sswitch_6
        0x60a5e8cc -> :sswitch_5
        0x6207aecc -> :sswitch_4
        0x63a518c2 -> :sswitch_3
        0x72a6d836 -> :sswitch_2
        0x755ac2ae -> :sswitch_1
        0x7b5d2ad0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_28
        :pswitch_0
    .end packed-switch
.end method
