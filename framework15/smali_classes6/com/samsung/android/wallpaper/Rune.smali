.class public Lcom/samsung/android/wallpaper/Rune;
.super Ljava/lang/Object;
.source "Rune.java"


# static fields
.field public static final blacklist ADJUST_CROPHINT_BY_DEVICE_RATIO_AUTO:Z = false

.field public static final blacklist AOD_FULLSCREEN:Z

.field public static final blacklist BNR_DOWNLOADED_THEME_WALLPAPER:Z = true

.field public static final blacklist BNR_PREVENT_DIFFERENT_DEVICE_TYPES:Z = true

.field public static final blacklist BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

.field public static final blacklist CUSTOM_LOCKSCREEN_WALLPAPER_COLOR_REGION:Ljava/lang/String;

.field public static final blacklist DESKTOP_STANDALONE_MODE_WALLPAPER:Z

.field private static final blacklist IS_WINNER:Z

.field public static final blacklist SUPPORT_COVER_DISPLAY:Z

.field public static final blacklist SUPPORT_COVER_DISPLAY_WATCHFACE:Z

.field public static final blacklist SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

.field public static final blacklist SUPPORT_DESKTOP_MODE:Z = true

.field public static final blacklist SUPPORT_DLS_SNAPSHOT:Z

.field public static final blacklist SUPPORT_GOOGLE_ORIG:Z = false

.field public static final blacklist SUPPORT_HOME_CONTROLLER:Z

.field public static final blacklist SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

.field public static final blacklist SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

.field public static final blacklist SUPPORT_LIVE_WALLPAPER_PREVIEW:Z = true

.field public static final blacklist SUPPORT_PAIRED_DLS_SNAPSHOT:Z

.field public static final blacklist SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER:Z

.field public static final blacklist SUPPORT_RESTORE_CUSTOM_MULTIPACK:Z = true

.field public static final blacklist SUPPORT_SAMSUNG_COMMON:Z = true

.field public static final blacklist SUPPORT_SUB_DISPLAY_MODE:Z

.field public static final blacklist SUPPORT_VIDEO_WALLPAPER:Z

.field public static final blacklist SUPPORT_WALLPAPER_CGROUP:Z = true

.field public static final blacklist SUPPORT_WALLPAPER_LEGIBILITY_COLORS:Z = true

.field public static final blacklist SUPPORT_WCG:Z

.field public static final blacklist VIRTUAL_DISPLAY_WALLPAPER:Z

.field public static final blacklist WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

.field public static final blacklist WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

.field private static blacklist mDeviceType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "COVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WATCHFACE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VIDEO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_VIDEO_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "VIRTUAL_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ROTATABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_COLOR_REGION"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->CUSTOM_LOCKSCREEN_WALLPAPER_COLOR_REGION:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

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

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LARGESCREEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->AOD_FULLSCREEN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_LockScreen_ConfigRelpaceWallpaperCMF"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_CSC_REPLACE_WALLPAPER_CMF:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x1d4c0

    if-le v0, v3, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_WCG:Z

    const-string v0, "ro.build.version.oneui"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const v5, 0xc3b4

    if-le v3, v5, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    sput-boolean v3, Lcom/samsung/android/wallpaper/Rune;->BNR_SUPPORT_BETWEEN_FOLD_AND_PHONE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x24a54

    if-lt v0, v3, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x27100

    if-ge v0, v5, :cond_6

    const-string v0, "persist.wm.debug.lockscreen_live_wallpaper"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-lt v0, v3, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x24be4

    if-lt v0, v3, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DLS_SNAPSHOT:Z

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DLS_SNAPSHOT:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    move v4, v1

    :goto_9
    sput-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCKSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/Rune;->IS_WINNER:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFolder()Z
    .locals 2

    nop

    nop

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isTablet()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/wallpaper/Rune;->mDeviceType:Ljava/lang/String;

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

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->IS_WINNER:Z

    return v0
.end method
