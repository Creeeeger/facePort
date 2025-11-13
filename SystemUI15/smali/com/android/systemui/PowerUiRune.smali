.class public final Lcom/android/systemui/PowerUiRune;
.super Lcom/android/systemui/Rune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ADAPTIVE_PROTECTION_NOTIFICATION:Z

.field public static final AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

.field public static final AUDIO_SUPPORT_SITUATION_EXTENSION:Z

.field public static final BATTERY_CHARGING_ESTIMATE_TIME:Z

.field public static final BATTERY_PROTECTION:Z

.field public static final BATTERY_PROTECTION_NOTIFICATION:Z

.field public static final BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

.field public static final BATTERY_SWELLING_NOTICE:Z

.field public static final CHARGING_VI_NOW_BAR:Z

.field public static final CHN_SMART_MANAGER:Z

.field public static final COVER_DISPLAY_LARGE_SCREEN:Z

.field public static final FULL_BATTERY_CHECK:Z

.field public static final GPU_BLUR_SUPPORTED:Z

.field public static final HV_CHARGER_ENABLE_POPUP:Z

.field public static final INCOMPATIBLE_CHARGER_CHECK:Z

.field public static final INIT_LTC_TIME_CHANGED:Z

.field public static final IS_LDU_OR_UNPACK_BINARY:Z

.field public static final KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

.field public static final LOW_BATTTERY_SOUND_THEME:Z

.field public static final POLICY_CHARGING_NOTIFICATION:Z

.field public static final PROTECT_BATTERY_CUTOFF:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_CHN:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_VZW:Z

.field public static final SYSTEM_SOUND_THEME:Z

.field public static final TIPS_NOTIFICATION:Z

.field public static final TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

.field public static final TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

.field public static final WINDOW_BLUR_SUPPORTED:Z

.field public static final WIRELESS_CHARGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.sm"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.sm_cn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/led/led_pattern"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    const-string v3, "VZW"

    if-eqz v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v5

    :goto_3
    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->FULL_BATTERY_CHECK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v6, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_LOW_TEMP_SLOW_CHARGED_POPUP"

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v5

    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "China"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SBM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "XJP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SEP_CATEGORY"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sep_basic"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->SYSTEM_SOUND_THEME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->HV_CHARGER_ENABLE_POPUP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_SUPPORT_SITUATION_EXTENSION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->WIRELESS_CHARGING:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUSKU()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v5

    :goto_5
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->IS_LDU_OR_UNPACK_BINARY:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x1d524

    if-lt v0, v2, :cond_7

    move v2, v5

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->LOW_BATTTERY_SOUND_THEME:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WATCHFACE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    const-string v3, "ro.surface_flinger.protected_contents"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "true"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    goto :goto_8

    :cond_9
    :goto_7
    move v3, v5

    :goto_8
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_AUDIO_DISABLE_HEADSET_CHARGING_SOUND"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->INIT_LTC_TIME_CHANGED:Z

    const-string v3, "LARGESCREEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    const v2, 0x24a54

    if-lt v0, v2, :cond_a

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v5

    goto :goto_9

    :cond_a
    move v1, v4

    :goto_9
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    const v2, 0x249f0

    if-lt v0, v2, :cond_b

    move v2, v5

    goto :goto_a

    :cond_b
    move v2, v4

    :goto_a
    sput-boolean v2, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_TIPS_NOTIFICATION:Z

    const v1, 0x27100

    if-lt v0, v1, :cond_c

    move v4, v5

    :cond_c
    sput-boolean v4, Lcom/android/systemui/PowerUiRune;->CHARGING_VI_NOW_BAR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/Rune;-><init>()V

    return-void
.end method
