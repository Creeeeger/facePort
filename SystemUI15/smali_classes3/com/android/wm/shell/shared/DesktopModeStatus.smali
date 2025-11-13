.class public final Lcom/android/wm/shell/shared/DesktopModeStatus;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_MAX_TASK_LIMIT:I = 0x4

.field public static final DESKTOP_DENSITY_OVERRIDE:I

.field public static final DESKTOP_DENSITY_OVERRIDE_ENABLED:Z

.field public static final ENFORCE_DEVICE_RESTRICTIONS:Z

.field public static final IS_VEILED_RESIZE_ENABLED:Z

.field public static final MAX_TASK_LIMIT:I

.field public static final USE_ROUNDED_CORNERS:Z

.field public static final USE_WINDOW_SHADOWS:Z

.field public static final USE_WINDOW_SHADOWS_FOCUSED_WINDOW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.wm.debug.desktop_veiled_resizing"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    const-string v0, "persist.wm.debug.desktop_change_display"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const-string v0, "persist.wm.debug.desktop_use_window_shadows"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_WINDOW_SHADOWS:Z

    const-string v0, "persist.wm.debug.desktop_use_window_shadows_focused_window"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_WINDOW_SHADOWS_FOCUSED_WINDOW:Z

    const-string v0, "persist.wm.debug.desktop_use_rounded_corners"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_ROUNDED_CORNERS:Z

    const-string v0, "persist.wm.debug.desktop_mode_enforce_device_restrictions"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->ENFORCE_DEVICE_RESTRICTIONS:Z

    const-string v0, "persist.wm.debug.desktop_mode_density_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE_ENABLED:Z

    const-string v0, "persist.wm.debug.desktop_mode_density"

    const/16 v1, 0x11c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE:I

    const-string v0, "persist.wm.debug.desktop_max_task_limit"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->MAX_TASK_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canEnterDesktopMode(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->enforceDeviceRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->isDesktopModeSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MD_FORCE_ENABLE_DESKTOP_MODE:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static enforceDeviceRestrictions()Z
    .locals 1

    sget-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return v0
.end method

.method public static isDesktopModeSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101bb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static useDesktopOverrideDensity()Z
    .locals 2

    sget-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    sget v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE:I

    if-lt v1, v0, :cond_0

    const/16 v0, 0x3e8

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
