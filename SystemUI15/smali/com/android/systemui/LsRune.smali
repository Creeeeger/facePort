.class public final Lcom/android/systemui/LsRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AOD_BRIGHTNESS_CONTROL:Z

.field public static final AOD_DISABLE_CLOCK_TRANSITION:Z

.field public static final AOD_DOZE_AP_SLEEP:Z

.field public static final AOD_FULLSCREEN:Z

.field public static final AOD_FULLSCREEN_APPEAR_ANIMATION:Z

.field public static final AOD_HYSTERESIS_BRIGHTNESS:Z

.field public static final AOD_LIGHT_REVEAL:Z

.field public static final AOD_SAFEMODE:Z

.field public static final AOD_SELF_POKE_DRAW_LOCK:Z

.field public static final AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

.field public static final AOD_SUB_DISPLAY_COVER:Z

.field public static final AOD_SUB_DISPLAY_LOCK:Z

.field public static final AOD_SUB_FULLSCREEN:Z

.field public static final AOD_TSP_CONTROL:Z

.field public static final COVER_ADJUST_REFRESH_RATE:Z

.field public static final COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

.field public static final COVER_SAFEMODE:Z

.field public static final COVER_SUPPORTED:Z

.field public static final COVER_VIRTUAL_DISPLAY:Z

.field public static final KEYGUARD_ADJUST_REFRESH_RATE_USER_ACTIVITY:Z

.field public static final KEYGUARD_ALLOW_ROTATION:Z

.field public static final KEYGUARD_DELAY_NOTIFY_DRAWN_PREMIUM_WATCH:Z

.field public static final KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

.field public static final KEYGUARD_ENABLE_DEFAULT_ROTATION:Z

.field public static final KEYGUARD_EXTRA_USER_PRESENT:Z

.field public static final KEYGUARD_FBE:Z

.field public static final KEYGUARD_HOMEHUB:Z

.field public static final KEYGUARD_LOCK_SITUATION_VOLUME:Z

.field public static final KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER:Z

.field public static final KEYGUARD_SCREEN_ON_FADE_OUT_ANIM:Z

.field public static final KEYGUARD_SUB_DISPLAY_COVER:Z

.field public static final KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

.field public static final KEYGUARD_SUB_DISPLAY_LOCK:Z

.field public static final KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

.field public static final LOCKUI_AOD_PACKAGE_AVAILABLE:Z

.field public static final LOCKUI_BLUR:Z

.field public static final LOCKUI_CAPTURED_BLUR:Z

.field public static final LOCKUI_ECO_BATTERY:Z

.field public static final LOCKUI_MULTI_USER:Z

.field public static final LOCKUI_NOW_BAR_DEMO:Z

.field public static final LOCKUI_SHORTCUT_BLUR_BG:Z

.field public static final LOCKUI_SUB_DISPLAY_COVER:Z

.field public static final LOCKUI_SUB_DISPLAY_LOCK:Z

.field public static final PLUGIN_LOCK_LSM:Z

.field public static final PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

.field public static final PLUGIN_LOCK_STAR_SAFEMODE:Z

.field public static final SECURITY_ARROW_VIEW:Z

.field public static final SECURITY_BACKGROUND_AUTHENTICATION:Z

.field public static final SECURITY_BIOMETRICS_TABLET:Z

.field public static final SECURITY_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

.field public static final SECURITY_BLUR:Z

.field public static final SECURITY_BOUNCER_WINDOW:Z

.field public static final SECURITY_CAPTURED_BLUR:Z

.field public static final SECURITY_COLOR_CURVE_BLUR:Z

.field public static final SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

.field public static final SECURITY_DEAD_ZONE:Z

.field public static final SECURITY_DEFAULT_LANDSCAPE:Z

.field public static final SECURITY_ESIM:Z

.field public static final SECURITY_FINGERPRINT_GUIDE_POPUP:Z

.field public static final SECURITY_FINGERPRINT_IN_DISPLAY:Z

.field public static final SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

.field public static final SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

.field public static final SECURITY_NAVBAR_ENABLED:Z

.field public static final SECURITY_OPEN_THEME:Z

.field public static final SECURITY_PUNCH_HOLE_FACE_VI:Z

.field public static final SECURITY_SIM_PERSO_LOCK:Z

.field public static final SECURITY_SUB_DISPLAY_COVER:Z

.field public static final SECURITY_SUB_DISPLAY_LOCK:Z

.field public static final SECURITY_SWIPE_BOUNCER:Z

.field public static final SECURITY_UNPACK:Z

.field public static final SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

.field public static final SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

.field public static final SUBSCREEN_UI:Z

.field public static final SUBSCREEN_WATCHFACE:Z

.field public static final VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

.field public static final WALLPAPER_BLUR:Z

.field public static final WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

.field public static final WALLPAPER_FESTIVAL_WALLPAPER:Z

.field public static final WALLPAPER_PLAY_GIF:Z

.field public static final WALLPAPER_ROTATABLE_WALLPAPER:Z

.field public static final WALLPAPER_SUB_DISPLAY_MODE:Z

.field public static final WALLPAPER_SUB_WATCHFACE:Z

.field public static final WALLPAPER_SUPPORT_SUIT_CASE:Z

.field public static final WALLPAPER_VIDEO_WALLPAPER:Z

.field public static final WALLPAPER_VIRTUAL_DISPLAY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "persist.debug.subdisplay_test_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_POLICY_LIST"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "LOCKSCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    const-string v8, "COVER"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    const-string v9, "ROTATIONAL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFbeSupported()Z

    move-result v9

    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    const-string v9, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    const-string v10, "TRUE"

    invoke-static {v9, v10}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_LOCK_SITUATION_VOLUME:Z

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "VZW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "VPP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v3

    :goto_2
    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_EXTRA_USER_PRESENT:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_CLOCK_SUPPORT_PREMIUM_WATCH"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    sput-boolean v7, Lcom/android/systemui/LsRune;->KEYGUARD_DELAY_NOTIFY_DRAWN_PREMIUM_WATCH:Z

    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v3, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_ADJUST_REFRESH_RATE_USER_ACTIVITY:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isHomeHubDevice()Z

    move-result v9

    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    const-string v9, "DISALLOW_DEFAULT_ROTATION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    sput-boolean v10, Lcom/android/systemui/LsRune;->KEYGUARD_ALLOW_ROTATION:Z

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "ENABLE_DEFAULT_ROTATION"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    move v9, v3

    goto :goto_6

    :cond_7
    move v9, v2

    :goto_6
    sput-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_ENABLE_DEFAULT_ROTATION:Z

    sget-boolean v9, Landroid/os/Build;->IS_DEBUGGABLE:Z

    xor-int/lit8 v10, v9, 0x1

    sput-boolean v10, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    const-string v10, "bio_unlock_booster"

    invoke-static {v5, v10}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "persist.keyguard.enable_bio_unlock_booster"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move v5, v2

    goto :goto_8

    :cond_9
    :goto_7
    move v5, v3

    :goto_8
    sput-boolean v5, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER:Z

    const-string v5, "LARGESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    sget v10, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v11, 0x22

    const-string v12, "clocktransition"

    const-string v13, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    if-lt v10, v11, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    invoke-virtual {v10, v13, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v3

    goto :goto_9

    :cond_a
    move v10, v2

    :goto_9
    sput-boolean v10, Lcom/android/systemui/LsRune;->KEYGUARD_SCREEN_ON_FADE_OUT_ANIM:Z

    sput-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    const-string v14, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    if-nez v10, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v3

    goto :goto_a

    :cond_b
    move v10, v2

    :goto_a
    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    xor-int/2addr v10, v3

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    const-string v10, "ro.csc.countryiso_code"

    invoke-static {v10, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "US"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    sput-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-nez v10, :cond_d

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_b

    :cond_c
    move v15, v2

    goto :goto_c

    :cond_d
    :goto_b
    move v15, v3

    :goto_c
    sput-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v15

    if-nez v15, :cond_e

    if-nez v10, :cond_e

    move v15, v3

    goto :goto_d

    :cond_e
    move v15, v2

    :goto_d
    sput-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v15

    move-object/from16 v16, v12

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_CONFIG_PREFERRED_USER_ROTATION"

    invoke-virtual {v15, v12, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v3, :cond_f

    move v12, v3

    goto :goto_e

    :cond_f
    move v12, v2

    :goto_e
    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_DEFAULT_LANDSCAPE:Z

    sget-boolean v12, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string v15, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v12, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string v15, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v12, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_UNPACK:Z

    sput-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    sput-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    sput-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    const-string v12, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_PUNCHHOLE_VI"

    const-string v15, "face"

    invoke-static {v12, v15}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v12

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    const-string v15, "KOR"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v15

    sput-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportESim()Z

    move-result v15

    sput-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    const-string v15, "BlockCarrierTextWhenSimNotReady"

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_f

    :cond_10
    move v4, v2

    goto :goto_10

    :cond_11
    :goto_f
    move v4, v3

    :goto_10
    sput-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    sput-boolean v12, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_GUIDE_POPUP:Z

    sput-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/LsRune;->COVER_SAFEMODE:Z

    const-string v4, "VIRTUAL_DISPLAY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v10, :cond_12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_12

    move v7, v3

    goto :goto_11

    :cond_12
    move v7, v2

    :goto_11
    sput-boolean v7, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz v9, :cond_13

    const-string v7, "debug.camera_cover_on_side_cover"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v3

    goto :goto_12

    :cond_13
    move v7, v2

    :goto_12
    sput-boolean v7, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    const-string v10, "WATCHFACE"

    if-eqz v7, :cond_14

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v3

    goto :goto_13

    :cond_14
    move v12, v2

    :goto_13
    sput-boolean v12, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v7, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    move v7, v3

    goto :goto_14

    :cond_15
    move v7, v2

    :goto_14
    sput-boolean v7, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v12, :cond_16

    if-eqz v9, :cond_16

    const-string v7, "debug.subscreen_activity_on_main"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_16

    move v7, v3

    goto :goto_15

    :cond_16
    move v7, v2

    :goto_15
    sput-boolean v7, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SHORTCUT_BLUR_BG:Z

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    const-string v7, "aodversion"

    invoke-static {v13, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    move v7, v3

    goto :goto_16

    :cond_17
    move v7, v2

    :goto_16
    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_CAPTURED_BLUR:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_18

    sget-boolean v7, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    if-eqz v7, :cond_18

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v7

    if-nez v7, :cond_18

    move v7, v3

    goto :goto_17

    :cond_18
    move v7, v2

    :goto_17
    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    sput-boolean v9, Lcom/android/systemui/LsRune;->LOCKUI_NOW_BAR_DEMO:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v3

    sput-boolean v7, Lcom/android/systemui/LsRune;->LOCKUI_ECO_BATTERY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_LCD_SUPPORT_DOZE_AP_SLEEP"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportBrightnessControl()Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    const-string v7, "AOD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    :cond_19
    move v7, v3

    goto :goto_18

    :cond_1a
    move v7, v2

    :goto_18
    sput-boolean v7, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    const-string v6, "activeclock"

    invoke-static {v13, v6}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v13, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    move v1, v3

    goto :goto_19

    :cond_1b
    move v1, v2

    :goto_19
    sput-boolean v1, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportLightReveal()Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v3

    goto :goto_1a

    :cond_1c
    move v1, v2

    :goto_1a
    sput-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_1d

    move v1, v3

    goto :goto_1b

    :cond_1d
    move v1, v2

    :goto_1b
    sput-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    sput-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN_APPEAR_ANIMATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1e

    move v6, v3

    goto :goto_1c

    :cond_1e
    move v6, v2

    :goto_1c
    sput-boolean v6, Lcom/android/systemui/LsRune;->AOD_SUB_FULLSCREEN:Z

    sput-boolean v1, Lcom/android/systemui/LsRune;->AOD_HYSTERESIS_BRIGHTNESS:Z

    sget v6, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v7, 0x21

    if-lt v6, v7, :cond_1f

    move v6, v3

    goto :goto_1d

    :cond_1f
    move v6, v2

    :goto_1d
    sput-boolean v6, Lcom/android/systemui/LsRune;->AOD_TSP_CONTROL:Z

    const-string v6, "persist.enable.self.poke.draw_lock"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/LsRune;->AOD_SELF_POKE_DRAW_LOCK:Z

    const-string v6, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    const-string v7, "VIDEO"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_LOCKSCREEN_SUPPORT_VIDEO_PLAY_RANDOM_POSITION"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_BLUR:Z

    if-nez v7, :cond_20

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_20
    const-string v7, "ROTATABLE"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_22

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_1e

    :cond_21
    move v7, v2

    goto :goto_1f

    :cond_22
    :goto_1e
    move v7, v3

    :goto_1f
    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    const-string v7, "LID"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const-string v7, "FESTIVAL"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_FESTIVAL_WALLPAPER:Z

    const-string v7, "FLIPSUIT_LOCK"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v7, :cond_24

    if-eqz v4, :cond_23

    goto :goto_20

    :cond_23
    move v5, v2

    goto :goto_21

    :cond_24
    :goto_20
    move v5, v3

    :goto_21
    sput-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    const-string v5, "ro.build.version.oneui"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const v8, 0xc3b4

    if-ge v5, v8, :cond_25

    move v5, v3

    goto :goto_22

    :cond_25
    move v5, v2

    :goto_22
    sput-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-nez v0, :cond_27

    if-nez v1, :cond_27

    if-eqz v6, :cond_26

    goto :goto_23

    :cond_26
    move v0, v2

    goto :goto_24

    :cond_27
    :goto_23
    move v0, v3

    :goto_24
    sput-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUPPORT_SUIT_CASE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigSpecialEdition"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaisonMargiela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    if-nez v7, :cond_28

    if-eqz v4, :cond_29

    :cond_28
    move v2, v3

    :cond_29
    sput-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigDynamicLockScreenPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagazineLockScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_LSM:Z

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_STAR_SAFEMODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
