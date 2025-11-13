.class public final Lcom/android/systemui/QpRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final QUICK_ANIMATION_SUPPORT_DETAIL_POPUP:Z

.field public static final QUICK_BAR_BRIGHTNESS_EXTRA_BRIGHTNESS:Z

.field public static final QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

.field public static final QUICK_BLUETOOTH_MUSIC_SHARE:Z

.field public static final QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

.field public static final QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_HIJRI:Z

.field public static final QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

.field public static final QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_PERSIAN:Z

.field public static final QUICK_DATA_USAGE_LABEL:Z

.field public static final QUICK_MUM_TWO_PHONE:Z

.field public static final QUICK_PANEL_BLUR_DEFAULT:Z

.field public static final QUICK_PANEL_BLUR_MASSIVE:Z

.field public static final QUICK_PANEL_DEBUG_LOG:Z

.field public static final QUICK_PANEL_GUIDE:Z

.field public static final QUICK_SUBSCREEN_PANEL:Z

.field public static final QUICK_SUBSCREEN_PANEL_WINDOW:Z

.field public static final QUICK_SUBSCREEN_SETTINGS:Z

.field public static final QUICK_TABLET:Z

.field public static final QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

.field public static final QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

.field public static final QUICK_TILE_BLUELIGHT_FILTER_NIGHT_DIM:Z

.field public static final QUICK_TILE_FLASHLIGHT_INTENSITY:Z

.field public static final QUICK_TILE_HIDE_FROM_BAR:Z

.field public static final QUICK_TILE_ROTATION_MANUAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    const-string v1, "ro.surface_flinger.protected_contents"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "true"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v3

    sget v4, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    xor-int/2addr v3, v1

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_GUIDE:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    const-string v4, "IR"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_PERSIAN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportHijriLunarCalendar"

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_HIJRI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VI"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v1

    :goto_4
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    invoke-static {v4, v5, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_BAR_BRIGHTNESS_EXTRA_BRIGHTNESS:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_7

    move v4, v1

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_6
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_NIGHT_DIM:Z

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_TORCH_BRIGHTNESS_LEVEL"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_ANIMATION_SUPPORT_DETAIL_POPUP:Z

    const-string/jumbo v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "persist.debug.subdisplay_test_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_a

    const-string v0, "LARGESCREEN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    :goto_9
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL_WINDOW:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
