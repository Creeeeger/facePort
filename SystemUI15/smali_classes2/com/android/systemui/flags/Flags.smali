.class public final Lcom/android/systemui/flags/Flags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALWAYS_SHOW_HOME_CONTROLS_ON_DREAMS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final BUILDER_EXTRAS_OVERRIDE:Lcom/android/systemui/flags/SysPropBooleanFlag;

.field public static final CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final COMMUNAL_SERVICE_ENABLED:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final ENABLE_DARK_VIGNETTE_WHEN_FOLDING:Lcom/android/systemui/flags/UnreleasedFlag;

.field public static final ENABLE_NOTIFICATIONS_SIMULATE_SLOW_MEASURE:Lcom/android/systemui/flags/UnreleasedFlag;

.field public static final ENABLE_UNFOLD_STATUS_BAR_ANIMATIONS:Lcom/android/systemui/flags/UnreleasedFlag;

.field public static final ENABLE_USI_BATTERY_NOTIFICATIONS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final ENABLE_WALLET_CONTEXTUAL_LOYALTY_CARDS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final FALSING_OFF_FOR_UNFOLDED:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final INCOMPATIBLE_CHARGING_BATTERY_ICON:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final INSTANCE:Lcom/android/systemui/flags/Flags;

.field public static final INSTANT_TETHER:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final KEYBOARD_BACKLIGHT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final LOCKSCREEN_CUSTOM_CLOCKS:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final LOCKSCREEN_ENABLE_LANDSCAPE:Lcom/android/systemui/flags/UnreleasedFlag;

.field public static final LOCK_SCREEN_LONG_PRESS_ENABLED:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final MEDIA_RESUME_PROGRESS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final MONOCHROMATIC_THEME:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final NEW_NETWORK_SLICE_UI:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final NOTE_TASKS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final NULL_FLAG:Lcom/android/systemui/flags/UnreleasedFlag;

.field public static final POWER_MENU_LITE:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final QS_SECONDARY_DATA_SUB_INFO:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final QS_USER_DETAIL_SHORTCUT:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final ROAMING_INDICATOR_VIA_DISPLAY_INFO:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final SHARE_WIFI_QS_BUTTON:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final SHORTCUT_LIST_SEARCH_LAYOUT:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final SIGNAL_CALLBACK_DEPRECATION:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final STEP_CLOCK_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final TRACK_STYLUS_EVER_USED:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final TRANSIT_CLOCK:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WALLPAPER_FULLSCREEN_PREVIEW:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WALLPAPER_PICKER_PAGE_TRANSITIONS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WALLPAPER_PICKER_PREVIEW_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WALLPAPER_PICKER_UI_FOR_AIWP:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WIFI_SECONDARY_NETWORKS:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WM_ALWAYS_ENFORCE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;

.field public static final WM_BUBBLE_BAR:Lcom/android/systemui/flags/SysPropBooleanFlag;

.field public static final WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WM_ENABLE_PARTIAL_SCREEN_SHARING_ENTERPRISE_POLICIES:Lcom/android/systemui/flags/ReleasedFlag;

.field public static final WM_ENABLE_PREDICTIVE_BACK_ANIM:Lcom/android/systemui/flags/SysPropBooleanFlag;

.field public static final WM_ENABLE_SHELL_TRANSITIONS:Lcom/android/systemui/flags/SysPropBooleanFlag;

.field public static final ZJ_285570694_LOCKSCREEN_TRANSITION_FROM_AOD:Lcom/android/systemui/flags/ReleasedFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/flags/Flags;

    invoke-direct {v0}, Lcom/android/systemui/flags/Flags;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    sget-object v0, Lcom/android/systemui/flags/FlagsFactory;->INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

    const-string v1, "null_flag"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->NULL_FLAG:Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "notification_pipeline_developer_logging"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "nssl_debug_lines"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "nssl_debug_remove_animation"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const v1, 0x7f05002b

    const-string v3, "notification_drag_to_contents"

    invoke-static {v1, v0, v3}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const-string v1, "persist.sysui.notification.builder_extras_override"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/flags/FlagsFactory;->sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->BUILDER_EXTRAS_OVERRIDE:Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string v1, "new_unlock_swipe_animation"

    const-string/jumbo v4, "systemui"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    const v1, 0x7f050065

    const-string v5, "charging_ripple"

    invoke-static {v1, v0, v5}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const v1, 0x7f050016

    const-string v5, "lockscreen_custom_clocks"

    invoke-static {v1, v0, v5}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_CUSTOM_CLOCKS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const-string/jumbo v1, "step_clock_animation"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->STEP_CLOCK_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "dozing_migration_1"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "refactor_getcurrentuser"

    const/4 v5, 0x2

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "biometrics_animation_revamp"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "auto_pin_confirmation"

    invoke-static {v1, v1}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "falsing_off_for_unfolded"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->FALSING_OFF_FOR_UNFOLDED:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_wallet_contextual_loyalty_cards"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_WALLET_CONTEXTUAL_LOYALTY_CARDS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "wallpaper_fullscreen_preview"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WALLPAPER_FULLSCREEN_PREVIEW:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "lock_screen_long_press_enabled"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->LOCK_SCREEN_LONG_PRESS_ENABLED:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "lazy_inflate_keyguard"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "wallpaper_picker_ui_for_aiwp"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WALLPAPER_PICKER_UI_FOR_AIWP:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "lock_screen_long_press_directly_opens_wallpaper_picker"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "wallpaper_picker_page_transitions"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WALLPAPER_PICKER_PAGE_TRANSITIONS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "wallpaper_picker_grid_apply_button"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "keyguard_talkback_fix"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "lockscreen_custom_transit_clock"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->TRANSIT_CLOCK:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "wallpaper_picker_preview_animation"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WALLPAPER_PICKER_PREVIEW_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "power_menu_lite"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->POWER_MENU_LITE:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "smartspace_shared_element_transition_enabled"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "hide_smartspace_on_dream_overlay"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "show_weather_complication_on_dream_overlay"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const v1, 0x7f050066

    const-string v6, "people_tile"

    invoke-static {v1, v0, v6}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    const v1, 0x7f050067

    const-string v6, "qs_user_detail_shortcut"

    invoke-static {v1, v0, v6}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->QS_USER_DETAIL_SHORTCUT:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const v1, 0x7f050015

    const-string v6, "full_screen_user_switcher"

    invoke-static {v1, v0, v6}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const-string v1, "qs_secondary_data_sub_info"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->QS_SECONDARY_DATA_SUB_INFO:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_new_qs_edit_mode"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "signal_callback_deprecation"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->SIGNAL_CALLBACK_DEPRECATION:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "new_network_slice_ui"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->NEW_NETWORK_SLICE_UI:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "roaming_indicator_via_display_info"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ROAMING_INDICATOR_VIA_DISPLAY_INFO:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "filter_provisioning_network_subscriptions"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "incompatible_charging_battery_icon"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->INCOMPATIBLE_CHARGING_BATTERY_ICON:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "instant_tether"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->INSTANT_TETHER:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "wifi_secondary_networks"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WIFI_SECONDARY_NETWORKS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "new_shade_carrier_group_mobile_icons"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const v1, 0x7f050068

    const-string v6, "monet"

    invoke-static {v1, v0, v6}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

    const-string v1, "region_sampling"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "screen_contents_translation"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "monochromatic"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->MONOCHROMATIC_THEME:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "color_fidelity"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "media_tap_to_transfer"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "media_session_actions"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "dream_media_complication"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "dream_media_tap_to_open"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "media_retain_sessions"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "media_resume_progress"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_RESUME_PROGRESS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "media_retain_recommendations"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "media_remote_resume"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "simulate_dock_through_charging"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "always_show_home_controls_on_dreams"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ALWAYS_SHOW_HOME_CONTROLS_ON_DREAMS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "persist.wm.debug.shell_transit"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/flags/FlagsFactory;->sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_ENABLE_SHELL_TRANSITIONS:Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string v1, "enable_record_task_content"

    const-string/jumbo v6, "window_manager"

    invoke-static {v1, v6}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "persist.wm.debug.bubble_bar"

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/android/systemui/flags/FlagsFactory;->sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_BUBBLE_BAR:Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string v1, "enable_screen_record_enterprise_policies"

    invoke-static {v1, v6}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING_ENTERPRISE_POLICIES:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "lockscreen.enable_landscape"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ENABLE_LANDSCAPE:Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "persist.wm.debug.predictive_back_anim"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/flags/FlagsFactory;->sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PREDICTIVE_BACK_ANIM:Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string v1, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v1, v7}, Lcom/android/systemui/flags/FlagsFactory;->sysPropBooleanFlag$default(Lcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->WM_ALWAYS_ENFORCE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;

    const-string/jumbo v1, "screenshot_app_clips"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "quick_tap_in_pcc"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "quick_tap_flow_framework"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "clipboard_remote_behavior"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "clipboard_image_timeout"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "clipboard_shared_transitions"

    invoke-static {v5, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "keycode_flag"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->NOTE_TASKS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "track_stylus_ever_used"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->TRACK_STYLUS_EVER_USED:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_stylus_charging_ui"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_usi_battery_notifications"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_USI_BATTERY_NOTIFICATIONS:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_stylus_education"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "warn_on_blocking_binder_transactions"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "user_tracker_background_callbacks"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "enable_dark_vignette_when_folding"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_DARK_VIGNETTE_WHEN_FOLDING:Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "enable_unfold_status_bar_animations"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_UNFOLD_STATUS_BAR_ANIMATIONS:Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "enable_notifications_simulate_slow_measure"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_NOTIFICATIONS_SIMULATE_SLOW_MEASURE:Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "exp_flag_release"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "shortcut_list_search_layout"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->SHORTCUT_LIST_SEARCH_LAYOUT:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "keyboard_backlight_indicator"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->KEYBOARD_BACKLIGHT_INDICATOR:Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "split_shade_subpixel_optimization"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string/jumbo v1, "use_new_activity_starter"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "zj_285570694_lockscreen_transition_from_aod"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->ZJ_285570694_LOCKSCREEN_TRANSITION_FROM_AOD:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "enable_lockscreen_wallpaper_dream"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "bigpicture_notification_lazy_loading"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "enable_new_privacy_dialog"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "decouple_remote_input_delegate_and_callback_update"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/flags/FlagsFactory;->unreleasedFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/UnreleasedFlag;

    const-string v1, "enable_clock_keyguard_presentation"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const-string/jumbo v1, "share_wifi_qs_button"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/flags/Flags;->SHARE_WIFI_QS_BUTTON:Lcom/android/systemui/flags/ReleasedFlag;

    const-string v1, "bluetooth_qs_tile_dialog"

    invoke-static {v1, v4}, Lcom/android/systemui/flags/FlagsFactory;->releasedFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;

    const v1, 0x7f05000a

    const-string v2, "communal_service_enabled"

    invoke-static {v1, v0, v2}, Lcom/android/systemui/flags/FlagsFactory;->resourceBooleanFlag$default(ILcom/android/systemui/flags/FlagsFactory;Ljava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/flags/Flags;->COMMUNAL_SERVICE_ENABLED:Lcom/android/systemui/flags/ResourceBooleanFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
