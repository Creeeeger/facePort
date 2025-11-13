.class public Lcom/samsung/android/settings/gts/GtsResources;
.super Ljava/lang/Object;
.source "GtsResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;,
        Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mMinVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aw17Ei1vo0bImQU5Dy7m5t9ylhw(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/gts/GtsResources;->lambda$getGtsKeysByGroup$0(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/gts/GtsResources;->DEBUG:Z

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v1, "notification_popup_style"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "show_battery_percent"

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "notification_badging"

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "homescreen_noti_preview"

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v1, "double_tab_to_wake_up"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "double_tap_to_sleep"

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "hdr_settings"

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "function_key_setting"

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v1, "onehand_operation_settings"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "reduce_screen_size"

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v1, "auto_brightness"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "dark_mode"

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "sec_font_size_controller"

    .line 108
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "sec_font_style"

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "navigation_Bar"

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "screen_timeout"

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v1, "edge_screen"

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v2, "phone_vibration_pattern"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v2, "notification_vibration_pattern"

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_INTENSITY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v2, "ring_vibration"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v2, "notification_vibration"

    .line 122
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v2, "media_vibration"

    .line 123
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v2, "force_touch"

    .line 124
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 127
    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "vibrate_on_touch"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "dialing_keypad_vibration"

    .line 128
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "navigation_gestures_vibration"

    .line 129
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "charging_feedback_vibration"

    .line 130
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "keyboard_vibration"

    .line 131
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "camera_feedback_vibration"

    .line 132
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 135
    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "ringtone"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "notification_sound"

    .line 136
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "system_sound"

    .line 137
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 140
    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "touch_sounds"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "screen_locking_sounds"

    .line 141
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "charging_sounds"

    .line 142
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "dial_pad_tones"

    .line 143
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "keyboard_sound"

    .line 144
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "mouse_and_trackpad_pref"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "pointer_speed"

    .line 148
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "mouse_pointer_settings"

    .line 149
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "mouse_scrolling_speed"

    .line 150
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "enhance_pointer_precision"

    .line 151
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "mouse_pointer_size"

    .line 152
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "mouse_custom_pointer_color"

    .line 153
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "key_primary_mouse_button"

    .line 154
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "key_secondary_button"

    .line 155
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "key_middle_button"

    .line 156
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "key_additional_button_1"

    .line 157
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const-string v3, "key_additional_button_2"

    .line 158
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "sec_high_refresh_rate"

    .line 167
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "camera_cutout"

    .line 168
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "full_screen_apps"

    .line 169
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "front_screen_apps"

    .line 170
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "screen_mode"

    .line 171
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "screen_resolution"

    .line 172
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v3, "ring_volume"

    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "media_volume"

    .line 176
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "notification_volume"

    .line 177
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "system_volume"

    .line 178
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "bixby_volume"

    .line 179
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "waiting_tone_volume"

    .line 180
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "accessibility_volume"

    .line 181
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "volume_key_control"

    .line 184
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "voip_extra_volume_control"

    .line 185
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v0, "system_vibration"

    .line 188
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v0, "vibration_sound_enabled"

    .line 189
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    return-void
.end method

.method private addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    return-void
.end method

.method private addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V
    .locals 0

    .line 206
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 207
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore (already contained) : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GtsResources"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/gts/GtsResources;
    .locals 1

    .line 34
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/gts/GtsResources;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getGtsKeysByGroup$0(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 233
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getGtsKeysByGroup(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)V

    .line 233
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda1;-><init>()V

    .line 234
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda2;-><init>()V

    .line 235
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getMinVersion(Ljava/lang/String;)I
    .locals 0

    .line 224
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 225
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mMinVersionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportGts(Ljava/lang/String;)Z
    .locals 0

    .line 220
    sget-object p0, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
