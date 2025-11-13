.class public Lcom/samsung/android/wallpaper/Rune;
.super Ljava/lang/Object;
.source "Rune.java"


# static fields
.field public static final blacklist ADJUST_CROPHINT_BY_DEVICE_RATIO_AUTO:Z = false

.field public static final blacklist BNR_DOWNLOADED_THEME_WALLPAPER:Z = true

.field public static final blacklist BNR_PREVENT_DIFFERENT_DEVICE_TYPES:Z = true

.field public static final blacklist CUSTOM_LOCKSCREEN_WALLPAPER_COLOR_REGION:Ljava/lang/String;

.field public static final blacklist DESKTOP_STANDALONE_MODE_WALLPAPER:Z

.field private static final blacklist IS_WINNER:Z

.field public static final blacklist SUPPORT_COVER_DISPLAY:Z

.field public static final blacklist SUPPORT_COVER_DISPLAY_WATCHFACE:Z

.field public static final blacklist SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

.field public static final blacklist SUPPORT_DESKTOP_MODE:Z = true

.field public static final blacklist SUPPORT_GOOGLE_ORIG:Z = false

.field public static final blacklist SUPPORT_HOME_CONTROLLER:Z

.field public static final blacklist SUPPORT_LIVE_WALLPAPER_PREVIEW:Z = true

.field public static final blacklist SUPPORT_RESTORE_CUSTOM_MULTIPACK:Z = true

.field public static final blacklist SUPPORT_SAMSUNG_COMMON:Z = true

.field public static final blacklist SUPPORT_SUB_DISPLAY_MODE:Z

.field public static final blacklist SUPPORT_VIDEO_WALLPAPER:Z

.field public static final blacklist SUPPORT_WALLPAPER_CGROUP:Z = true

.field public static final blacklist SUPPORT_WALLPAPER_LEGIBILITY_COLORS:Z = true

.field public static final blacklist SUPPORT_WCG:Z

.field public static final blacklist VIRTUAL_DISPLAY_WALLPAPER:Z

.field public static final blacklist WPAPER_COLOR_THEME:Z = true

.field public static final blacklist WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

.field public static final blacklist WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

.field private static blacklist mDeviceType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 49
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 51
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 52
    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "COVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY:Z

    .line 54
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WATCHFACE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 57
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VIDEO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    .line 59
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VIRTUAL_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ROTATABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    .line 65
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 66
    const-string v5, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_COLOR_REGION"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->CUSTOM_LOCKSCREEN_WALLPAPER_COLOR_REGION:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 81
    const-string v3, "CscFeature_LockScreen_ConfigRelpaceWallpaperCMF"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1d4c0

    if-le v0, v3, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_WCG:Z

    .line 106
    const-string/jumbo v0, "ro.build.version.oneui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v3, 0xc3b4

    if-ge v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    sput-boolean v4, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 108
    sput-object v5, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCKSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->IS_WINNER:Z

    .line 125
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFolder()Z
    .locals 2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 120
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_WM_CONTROLS_DISPLAY_SWITCH"

    :goto_0
    nop

    .line 122
    .local v0, "feature":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isTablet()Z
    .locals 2

    .line 110
    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 114
    :cond_0
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isWinner()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->IS_WINNER:Z

    return v0
.end method
