.class public abstract Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/gts/GtsResources;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_NOTIFICATIONS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v2, "notification_popup_style"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "show_battery_percent"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "notification_badging"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "homescreen_noti_preview"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ADVANCED:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v2, "double_tab_to_wake_up"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "double_tap_to_sleep"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "hdr_settings"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "function_key_setting"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_ONE_HANDED_OPERATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v2, "onehand_operation_settings"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "reduce_screen_size"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_DISPLAY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string v2, "auto_brightness"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "dark_mode"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "sec_font_size_controller"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "sec_font_style"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "navigation_Bar"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v2, "screen_timeout"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v2, "edge_screen"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v4, "phone_vibration_pattern"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v4, "notification_vibration_pattern"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v2, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_INTENSITY:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v4, "ring_vibration"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v4, "notification_vibration"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v4, "media_vibration"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v4, "force_touch"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_VIBRATION_SYSTEM:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v5, "vibrate_on_touch"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "dialing_keypad_vibration"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "navigation_gestures_vibration"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "charging_feedback_vibration"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "keyboard_vibration"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "camera_feedback_vibration"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v5, "ringtone"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "notification_sound"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "system_sound"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_SYSTEM_SOUNDS:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v5, "touch_sounds"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "screen_locking_sounds"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "charging_sounds"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "dial_pad_tones"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "keyboard_sound"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v4, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_MOUSE_AND_TRACKPAD:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v5, "mouse_and_trackpad_pref"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "pointer_speed"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "mouse_pointer_settings"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "mouse_scrolling_speed"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "enhance_pointer_precision"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "mouse_pointer_size"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v5, "mouse_custom_pointer_color"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "key_primary_mouse_button"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "key_secondary_button"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "key_middle_button"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "key_additional_button_1"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v5, "key_additional_button_2"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "sec_high_refresh_rate"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "camera_cutout"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "full_screen_apps"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "front_screen_apps"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "screen_mode"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "screen_resolution"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->GROUP_KEY_SOUNDS_VOLUME:Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    const-string/jumbo v3, "ring_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "media_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "notification_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "system_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "bixby_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "waiting_tone_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "accessibility_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string v3, "alarm_volume"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "volume_key_control"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v3, "voip_extra_volume_control"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v1, "system_vibration"

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    const-string/jumbo v1, "vibration_sound_enabled"

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/gts/GtsResources;->addResource(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    return-void
.end method
