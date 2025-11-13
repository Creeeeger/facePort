.class public Lcom/samsung/android/settings/logging/SAStatusDBList;
.super Ljava/lang/Object;
.source "SAStatusDBList.java"


# static fields
.field public static mSettingsStatusDBList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/logging/status/SettingDBData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xc8f

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "location_providers_allowed"

    const-string v4, "secure"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "wifi_scan_always_enabled"

    const-string v5, "global"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x4e84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "bluetooth_cast_mode"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1337

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "ble_scan_always_enabled"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xe75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "nearby_scanning_enabled"

    const-string v6, "system"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xe56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "uwb_enabled"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "mode_ringer_time_on"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "vibrate_when_ringing"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "volumelimit_on"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "volumelimit_set_password"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "adjust_media_volume_only"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "media_vibration_intensity"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sound_effects_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lockscreen_sounds_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "charging_sounds_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "haptic_feedback_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "dtmf_tone"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sip_key_feedback_sound"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sip_key_feedback_vibration"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x9088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "dialing_keypad_vibrate"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x9089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_gestures_vibrate"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x908a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "camera_feedback_vibrate"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x908b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "charging_vibration_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1c52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "vibration_sound_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x9092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "multisound_state"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "notification_badging"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "badge_app_icon_type"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xfe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "home_show_notification_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x232b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_screen_show_notifications"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2333

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_noticard_opacity"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2341

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "notification_text_color_inversion"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1068

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_brightness"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ce9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_brightness_mode"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x9d3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_extra_brightness"

    invoke-direct {v2, v7, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "blue_light_filter"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "blue_light_filter_opacity"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "blue_light_filter_on_time"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "blue_light_filter_off_time"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1cf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "blue_light_filter_night_dim"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x106c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "font_size"

    invoke-direct {v2, v7, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x106d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "flip_font_style"

    invoke-direct {v2, v7, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "bold_text"

    invoke-direct {v2, v7, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_mode_setting"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "sec_display_preset_index"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "sec_display_temperature_custom"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "sec_display_temperature_red_temp"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "sec_display_temperature_green_temp"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "sec_display_temperature_blue_temp"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x120c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "easy_mode_switch"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "tap_to_icon"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x178f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "simple_status_bar"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1790

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "display_battery_percentage"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_off_timeout"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x107c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v7, "screen_off_pocket"

    invoke-direct {v2, v7, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_scheduled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_scheduled_type"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_on_time"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_off_time"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "display_night_theme_wallpaper"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "blue_light_filter_scheduled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_unlock_with_home_button"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_key_order"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_force_touch_enable"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_pressure_user_level"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_gesture_hint"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_button_to_hide_keyboard"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_block_gestures_with_spen"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_gesture_detail_type"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0xb65f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigationbar_key_position"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0xb6dc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "navigation_bar_back_gesture_sensitivity"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0xb6dcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "charging_info_always"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0xe0a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "user_switcher_enabled"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_screen_on"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "cover_text_direction"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x205a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "fingerprint_gesture_quick"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x205b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "fingerprint_gesture_spay"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "intelligent_sleep_mode"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "any_screen_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "one_handed_op_wakeup_type"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "double_tab_launch"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "surface_palm_swipe"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_pick_up"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_merged_mute_pause"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "motion_pick_up_to_call_out"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "send_emergency_message"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "direct_share"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "hdr_effect"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1df6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_adjust_touch"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1db5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lift_to_wake"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "double_tab_to_wake_up"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1d2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "double_tap_to_sleep"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x123b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "palm_touch_to_sleep"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "function_key_config_doublepress"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "function_key_config_doublepress_type"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "function_key_config_doublepress_value"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "function_key_config_longpress_type"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10683

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "short_press_app"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10684

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "long_press_app"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10685

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "active_key_on_lockscreen"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x1068d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "xcover_top_short_press_app"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x1068e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "xcover_top_long_press_app"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x1068f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "xcover_top_key_on_lockscreen"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1dce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "game_home_enable"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10a04

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "force_resizable_activities"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v2, 0x10bf8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v8, "enable_pinned_edge"

    invoke-direct {v7, v8, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10a06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "multi_window_menu_in_full_screen"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10a19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "open_in_pop_up_view"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const v1, 0x10a23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "open_in_split_screen_view"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "default_app_selection_option"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1e3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "instant_apps_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xf3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "assist_structure_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0xf3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "assist_screenshot_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x119a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "show_password"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ecd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_to_app_enabled"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x11aa

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_to_app_exit_locked"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1ed0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "require_password_to_decrypt"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x25dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "security_update_db"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x25dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "use_wifi_only_db"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x11f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "power_off_lock_option"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1230

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "backup_auto_restore"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x122c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "google_core_control"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x12d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "autofill_service"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1f59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "show_ime_with_hard_keyboard"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x125f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "tts_default_synth"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1260

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "tts_default_rate"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1261

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "pointer_speed"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x128e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_time"

    invoke-direct {v2, v3, v5}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1293

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "time_12_24"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1f69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "sec_silent_auto_reset"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1faa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "screen_transition_effect"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x213a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "biometrics_prompt_type"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x1179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "remote_control"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x117c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "send_last_location"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x117d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "fmm_unlock_recovery"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x234c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "dualclock_menu_settings"

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x2347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "auto_swipe_main_user"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x233b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lock_function_val"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x233f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "lockdown_in_power_menu"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    const/16 v1, 0x232f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/SettingDBData;

    const-string v3, "n_digits_pin_enabled"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/logging/status/SettingDBData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsStatusDBList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/logging/status/SettingDBData;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/samsung/android/settings/logging/SAStatusDBList;->mSettingsStatusDBList:Ljava/util/HashMap;

    return-object v0
.end method
