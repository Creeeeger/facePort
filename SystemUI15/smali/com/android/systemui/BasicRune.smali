.class public final Lcom/android/systemui/BasicRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AI_AGENT_EFFECT:Z

.field public static final ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

.field public static final ASSIST_DISCLOSURE_CORNER_ROUND_ENABLED:Z

.field public static final ASSIST_DISCLOSURE_CORNER_ROUND_SIZE:F

.field public static final BASIC_FOLDABLE_TYPE_FLIP:Z

.field public static final BASIC_FOLDABLE_TYPE_FOLD:Z

.field public static final CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

.field public static final CONTROLS_SAMSUNG_STYLE_FOLD:Z

.field public static final CONTROLS_SAMSUNG_STYLE_TABLET:Z

.field public static final FOLDABLE_TYPE_FLIP:Z

.field public static final GLOBALACTIONS_BLUR:Z

.field public static final GLOBALACTIONS_CAPTURED_BLUR:Z

.field public static final KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

.field public static final MAINTENANCE_MODE:Z

.field public static final NAVBAR_ACCESSIBILITY:Z

.field public static final NAVBAR_ADDITIONAL_LOG:Z

.field public static final NAVBAR_AOSP_BUG_FIX:Z

.field public static final NAVBAR_BOTTOM_GESTURE_SENSITIVITY:Z

.field public static final NAVBAR_COMMAND:Z

.field public static final NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

.field public static final NAVBAR_DESKTOP:Z

.field public static final NAVBAR_ENABLED:Z

.field public static final NAVBAR_ENABLED_HARD_KEY:Z

.field public static final NAVBAR_FOLDERBLE_TYPE_FOLD:Z

.field public static final NAVBAR_GESTURE:Z

.field public static final NAVBAR_ICON_MOVEMENT:Z

.field public static final NAVBAR_KNOX_MONITOR:Z

.field public static final NAVBAR_LIGHTBAR:Z

.field public static final NAVBAR_MOVABLE_POSITION:Z

.field public static final NAVBAR_MULTI_MODAL_ICON:Z

.field public static final NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

.field public static final NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

.field public static final NAVBAR_NEW_DEX:Z

.field public static final NAVBAR_OPEN_THEME:Z

.field public static final NAVBAR_PERFORMANCE_TUNING:Z

.field public static final NAVBAR_POLICY_VISIBILITY:Z

.field public static final NAVBAR_REMOTEVIEW:Z

.field public static final NAVBAR_SETUP_WIZARD:Z

.field public static final NAVBAR_SIMPLIFIED_GESTURE:Z

.field public static final NAVBAR_STABLE_LAYOUT:Z

.field public static final NAVBAR_SUPPORT_COVER_DISPLAY:Z

.field public static final NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

.field public static final NAVBAR_SUPPORT_SEARCLE:Z

.field public static final NAVBAR_TASKBAR:Z

.field public static final POPUPUI_FOLDERBLE_TYPE_FLIP:Z

.field public static final POPUPUI_FOLDERBLE_TYPE_FOLD:Z

.field public static final POPUPUI_MOBILE_DEVICE_WARNING:Z

.field public static final POPUPUI_MODEL_TYPE_WINNER:Z

.field public static final POPUPUI_SD_CARD_STORAGE:Z

.field public static final POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

.field public static final SEARCLE:Z

.field public static final STATUS_LAYOUT_MUM_ICON:Z

.field public static final STATUS_LAYOUT_SHOW_DATE:Z

.field public static final STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

.field public static final STATUS_LAYOUT_SIDELING_CUTOUT:Z

.field public static final STATUS_LAYOUT_SYSTEM_ICONS_LOCATION:Z

.field public static final STATUS_NETWORK_MULTI_SIM:Z

.field public static final STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

.field public static final STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

.field public static final STATUS_NETWORK_WIFI_FLASHING:Z

.field public static final STATUS_REAL_TIME_NETWORK_SPEED:Z

.field public static final SUPPORT_AI_AGENT:Z

.field public static final SUPPORT_BIXBY_TOUCH:Z

.field public static final SUPPORT_SEARCLE:Z

.field public static final SUPPORT_SOUND_THEME:Z

.field public static final VOLUME_CAPTURED_BLUR:Z

.field public static final VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG:Z

.field public static final VOLUME_HOME_IOT:Z

.field public static final VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

.field public static final VOLUME_MONITOR_PHASE_3:Z

.field public static final VOLUME_PARTIAL_BLUR:Z

.field public static final VOLUME_REFRESH_RATE_FIXED:Z

.field public static final VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

.field public static final VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

.field public static final VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    sput-boolean v2, Lcom/android/systemui/BasicRune;->POPUPUI_MOBILE_DEVICE_WARNING:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    const-string v0, "ro.storage.support.sdcard"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "storage.support.sdcard"

    const-string v6, "-1"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    sput-boolean v0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    const-string v0, "ro.product.name"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "winner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zodiac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v4

    :goto_5
    sput-boolean v6, Lcom/android/systemui/BasicRune;->POPUPUI_MODEL_TYPE_WINNER:Z

    const-string v6, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v7, "LARGESCREEN"

    invoke-static {v6, v7}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SC-55E"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SCG28"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SC-54E"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SCG29"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v9, v5

    goto :goto_7

    :cond_7
    :goto_6
    move v9, v4

    :goto_7
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "b6qzcx"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "b6qzhx"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "b6qctcx"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move v10, v5

    goto :goto_9

    :cond_9
    :goto_8
    move v10, v4

    :goto_9
    if-eqz v8, :cond_a

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "b6"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    if-eqz v9, :cond_c

    if-nez v10, :cond_c

    :cond_b
    move v0, v4

    goto :goto_a

    :cond_c
    move v0, v5

    :goto_a
    sput-boolean v0, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    const-string v0, "debug.statbar_jam_trigger"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v8, "CountryISO"

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "US"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_b

    :cond_d
    move v0, v5

    :goto_b
    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SYSTEM_ICONS_LOCATION:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v8, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_STATUSBAR_CONTAINER_POSITION"

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "SidelingCenterCutout"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    sget-boolean v8, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    if-eqz v8, :cond_e

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    if-nez v8, :cond_e

    move v8, v4

    goto :goto_c

    :cond_e
    move v8, v5

    :goto_c
    sput-boolean v8, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_MUM_ICON:Z

    const-string v8, "ShowIconsInUDC"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    const-string v10, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    if-nez v8, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_d

    :cond_f
    move v8, v5

    :goto_d
    sput-boolean v8, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_CAPTURED_BLUR:Z

    const-string v8, "persist.sys.is_in_maintenance_mode"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/BasicRune;->MAINTENANCE_MODE:Z

    const-string v8, "ro.bbt.support.circle2search"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "true"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lcom/android/systemui/BasicRune;->SUPPORT_BIXBY_TOUCH:Z

    const-string v11, "ro.com.google.cdb.spa1"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "bsxasm1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sput-boolean v11, Lcom/android/systemui/BasicRune;->SUPPORT_SEARCLE:Z

    if-nez v11, :cond_11

    if-eqz v8, :cond_10

    goto :goto_e

    :cond_10
    move v12, v5

    goto :goto_f

    :cond_11
    :goto_e
    move v12, v4

    :goto_f
    sput-boolean v12, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AI_AGENT"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    sput-boolean v12, Lcom/android/systemui/BasicRune;->AI_AGENT_EFFECT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v12, v13, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v4

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const-string v14, "SupportHardKeyNavigationBar"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    sput-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_ACCESSIBILITY:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz v13, :cond_12

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v14, v15, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_12

    move v14, v4

    goto :goto_10

    :cond_12
    move v14, v5

    :goto_10
    sput-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SIP_SUPPORT_DIRECT_WRITING_ENABLE"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    :cond_13
    if-eqz v13, :cond_14

    const-string v14, "SupportNaviBarRemoteView"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_14

    move v14, v4

    goto :goto_11

    :cond_14
    move v14, v5

    :goto_11
    sput-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v13, :cond_15

    const-string v14, "SupportLightNavigationBar"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_15

    move v14, v4

    goto :goto_12

    :cond_15
    move v14, v5

    :goto_12
    sput-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    move v14, v4

    goto :goto_13

    :cond_16
    move v14, v5

    :goto_13
    sput-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_BOTTOM_GESTURE_SENSITIVITY:Z

    if-eqz v13, :cond_18

    const-string v15, "SupportMovablePosition"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_17

    const-string v15, "ro.build.characteristics"

    invoke-static {v15, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "tablet"

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    const/4 v4, 0x1

    goto :goto_14

    :cond_18
    move v4, v5

    :goto_14
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_COMMAND:Z

    if-eqz v13, :cond_19

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEX_MODE"

    const-string v15, "newdex"

    invoke-static {v4, v15}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_15

    :cond_19
    move v4, v5

    :goto_15
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    if-eqz v13, :cond_1a

    sget-boolean v4, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_16

    :cond_1a
    move v4, v5

    :goto_16
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v14, :cond_1b

    sget-boolean v4, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_17

    :cond_1b
    move v4, v5

    :goto_17
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    const-string/jumbo v4, "user"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "debug.subdisplay_test_mode"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v14, 0x1

    and-int/2addr v4, v14

    if-eqz v4, :cond_1d

    goto :goto_18

    :cond_1c
    const/4 v14, 0x1

    :cond_1d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_18
    if-eqz v13, :cond_1e

    sget-boolean v4, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    if-eqz v4, :cond_1e

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v14

    goto :goto_19

    :cond_1e
    move v4, v5

    :goto_19
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    sput-boolean v13, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v13, :cond_1f

    if-eqz v4, :cond_1f

    move v4, v14

    goto :goto_1a

    :cond_1f
    move v4, v5

    :goto_1a
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz v13, :cond_21

    if-nez v11, :cond_20

    if-eqz v8, :cond_21

    :cond_20
    move v4, v14

    goto :goto_1b

    :cond_21
    move v4, v5

    :goto_1b
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz v13, :cond_24

    const-string v6, "ro.product.first_api_level"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_22

    const-string v8, "SupportLegacyGestureOptions"

    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_22

    if-nez v4, :cond_22

    goto :goto_1d

    :cond_22
    sget v8, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v11, 0x24a54

    if-lt v8, v11, :cond_24

    if-lt v6, v7, :cond_23

    goto :goto_1c

    :cond_23
    if-eqz v4, :cond_24

    :goto_1c
    move v4, v14

    goto :goto_1e

    :cond_24
    :goto_1d
    move v4, v5

    :goto_1e
    sput-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SIMPLIFIED_GESTURE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    const-string v4, "WATCHFACE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    const-string v6, "COVER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v4, :cond_25

    goto :goto_1f

    :cond_25
    move v2, v5

    goto :goto_20

    :cond_26
    :goto_1f
    move v2, v14

    :goto_20
    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    const-string v2, "sep_basic"

    invoke-static {v2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/systemui/util/TestHelper;->isRoboUnitTest()Z

    move-result v2

    if-nez v2, :cond_27

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x1d524

    if-lt v2, v4, :cond_27

    move v2, v14

    goto :goto_21

    :cond_27
    move v2, v5

    :goto_21
    sput-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    const-string v2, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_VOLUME_PANEL_POSITION"

    const-string v4, "left"

    invoke-static {v2, v4}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    const-string v2, "iot"

    const-string v3, "phone"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_VOLUMEMONITOR_STAGE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_28

    move v2, v14

    goto :goto_22

    :cond_28
    move v2, v5

    :goto_22
    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_29

    move v2, v14

    goto :goto_23

    :cond_29
    move v2, v5

    :goto_23
    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_REFRESH_RATE_FIXED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SIP_SUPPORT_EMOJI_SHORTCUT"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    const-string v3, "0.0"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40600000    # 3.5f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2a

    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_24

    :cond_2a
    move v2, v0

    :goto_24
    sput v2, Lcom/android/systemui/BasicRune;->ASSIST_DISCLOSURE_CORNER_ROUND_SIZE:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2b

    move v4, v14

    goto :goto_25

    :cond_2b
    move v4, v5

    :goto_25
    sput-boolean v4, Lcom/android/systemui/BasicRune;->ASSIST_DISCLOSURE_CORNER_ROUND_ENABLED:Z

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFbeSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
