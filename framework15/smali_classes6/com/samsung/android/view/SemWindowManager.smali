.class public Lcom/samsung/android/view/SemWindowManager;
.super Ljava/lang/Object;
.source "SemWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/SemWindowManager$FoldStateListener;,
        Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;,
        Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;,
        Lcom/samsung/android/view/SemWindowManager$KeyPressType;,
        Lcom/samsung/android/view/SemWindowManager$SystemKeyCode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BLOCK_KEY_EVENT:I = 0x4

.field public static final blacklist ACTION_NOT_SET:I = 0x0

.field public static final whitelist ACTION_SEND_BROADCAST:I = 0x2

.field public static final whitelist ACTION_START_ACTIVITY:I = 0x1

.field public static final whitelist ACTION_START_SERVICE:I = 0x3

.field public static final blacklist APPLICATION_UI_LAST_ID:I = 0x7d3

.field public static final blacklist APP_CONTINUITY_MODE_APPLIED:I = 0x1

.field public static final blacklist APP_CONTINUITY_MODE_NOT_APPLIED:I = 0x2

.field public static final blacklist APP_CONTINUITY_MODE_RESTRICTED:I = 0x0

.field public static final whitelist DISPATCHING:I = 0x0

.field public static final blacklist FORCED_HIDE_CUTOUT_DEFAULT:I = -0x1

.field public static final blacklist FORCED_HIDE_CUTOUT_OFF:I = 0x0

.field public static final blacklist FORCED_HIDE_CUTOUT_ON:I = 0x1

.field public static final blacklist FORCED_HIDE_CUTOUT_ON_WM_ONLY:I = 0x2

.field public static final blacklist ID_APPLICATION_UI:I = 0x7d0

.field public static final blacklist ID_APPLICATION_UI_CAMERA:I = 0x7d1

.field public static final blacklist ID_APPLICATION_UI_TV_MODE:I = 0x7d2

.field public static final blacklist ID_DEFAULT:I = 0x3e8

.field public static final blacklist ID_GENERAL_APPLICATION:I = 0x7d3

.field public static final blacklist ID_KNOX_LEGACY:I = 0x32

.field public static final blacklist ID_KNOX_MDM:I = 0xa

.field public static final blacklist ID_KNOX_V2:I = 0x1e

.field public static final blacklist ID_OLD_GOODLOCK_ROUTINE_PLUS:I = 0x384

.field public static final blacklist ID_SETTING_UI:I = 0x44c

.field public static final blacklist ID_SETTING_UI_B2B_DELTA:I = 0x3b7

.field public static final blacklist ID_SETTING_UI_B2B_DELTA_OLD:I = 0x44e

.field public static final blacklist ID_SETTING_UI_HIGH:I = 0x3b6

.field public static final blacklist ID_SETTING_UI_MOUSE_BUTTON:I = 0x453

.field public static final blacklist ID_SETTING_UI_OLD_SOS_MESSAGE:I = 0x451

.field public static final blacklist ID_SETTING_UI_ONE_HAND_MODE:I = 0x452

.field public static final blacklist ID_SETTING_UI_SIDE_KEY:I = 0x450

.field public static final blacklist ID_SETTING_UI_XCOVER_TOP:I = 0x44f

.field public static final blacklist KEY_CUSTOMIZATION_LAST_ID:I = 0x7d3

.field public static final whitelist KEY_PRESS_DOUBLE:I = 0x8

.field public static final blacklist KEY_PRESS_DOWN:I = 0x1

.field public static final whitelist KEY_PRESS_LONG:I = 0x4

.field public static final blacklist KEY_PRESS_QUADRUPLE:I = 0x20

.field public static final blacklist KEY_PRESS_QUINTUPLE:I = 0x40

.field public static final whitelist KEY_PRESS_SINGLE:I = 0x3

.field public static final blacklist KEY_PRESS_TRIPLE:I = 0x10

.field public static final blacklist KEY_PRESS_UP:I = 0x2

.field public static final blacklist MAX_ASPECT_RATIO_FIXED_OFF:I = 0x3

.field public static final blacklist MAX_ASPECT_RATIO_FIXED_ON:I = 0x2

.field public static final blacklist MAX_ASPECT_RATIO_OFF:I = 0x0

.field public static final blacklist MAX_ASPECT_RATIO_ON:I = 0x1

.field public static final whitelist NO_DISPATCHING:I = -0x1

.field public static final blacklist SETTING_UI_LAST_ID:I = 0x453

.field public static final blacklist SUPPORTS_DISPLAY_CUTOUT:I = 0x2

.field public static final blacklist SUPPORTS_FLEX_MODE:I = 0x10

.field public static final blacklist SUPPORTS_FLEX_PANEL_DISABLED:I = 0x2

.field public static final blacklist SUPPORTS_FLEX_PANEL_ENABLED:I = 0x1

.field public static final blacklist SUPPORTS_FLEX_PANEL_HOME_ACTIVITY:I = 0x20

.field public static final blacklist SUPPORTS_FLEX_PANEL_RUNNABLE:I = 0x8

.field public static final blacklist SUPPORTS_FLEX_PANEL_UNCHANGEABLE:I = 0x4

.field public static final blacklist SUPPORTS_FLEX_PANEL_UNRESIZABLE_ACTIVITY:I = 0x40

.field public static final blacklist SUPPORTS_MAX_ASPECT_RATIO:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemWindowManager"

.field private static blacklist sInstance:Lcom/samsung/android/view/SemWindowManager;


# instance fields
.field private final blacklist mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

.field private final blacklist mGlobal:Landroid/view/WindowManagerGlobal;

.field private final blacklist mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/samsung/android/view/SemWindowManager;
    .locals 2

    const-class v0, Lcom/samsung/android/view/SemWindowManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/view/SemWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/view/SemWindowManager;-><init>()V

    sput-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist isSupportAspectRatioMode(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    return v0
.end method

.method private blacklist setForcedDisplaySizeDensityInner(IIIZI)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForcedDisplaySizeDensityInner userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/view/SemWindowManager;->validateForcedDisplaySizeDensityValues(III)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to setForcedDisplaySizeDensity, "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist validateForcedDisplaySizeDensityValues(III)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SemWindowManager"

    if-ne p1, p2, :cond_0

    const-string v2, "validateForcedDisplaySizeDensityValues: width/height must be different"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/16 v2, 0xc8

    if-gt p1, v2, :cond_1

    if-gt p2, v2, :cond_1

    const-string v2, "validateForcedDisplaySizeDensityValues: width/height must be > 200"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/16 v2, 0x48

    if-ge p3, v2, :cond_2

    const-string v2, "validateForcedDisplaySizeDensityValues: density must be >= 72"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist clearForcedDisplaySizeDensity()V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearForcedDisplaySizeDensity userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to clearForcedDisplaySizeDensity, "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist getAppContinuityMode(Ljava/lang/String;Landroid/content/pm/ActivityInfo;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p3, p1, p2}, Landroid/view/IWindowManager;->getAppContinuityMode(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getAppContinuityMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFullScreenAppsSupportMode()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getFullScreenAppsSupportMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getFullScreenAppsSupportMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInitialDensity()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplayDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplaySize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist getKeyCustomizationInfo(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxAspectRatioPolicy(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getMaxAspectRatioPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportsFlexPanel(ILjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getSupportsFlexPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getUserDensity()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getUserDisplayDensity()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplayDensity, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplaySize, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist getVisibleWindowInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getVisibleWindowInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getVisibleWindowInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isFolded()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isFolded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isFolded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to is system keyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTableMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTableMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isTableMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to putKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerSystemKeyEvent(ILandroid/content/ComponentName;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->registerSystemKeyEvent(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed registerSystemKeyEvent "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist removeKeyCustomizationInfo(Ljava/lang/String;II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to removeKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request meta keyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request system keyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist screenshot(IIZLandroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v1, 0x0

    move-object v2, p0

    :try_start_0
    iget-object v3, v2, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    invoke-interface/range {v3 .. v11}, Landroid/view/IWindowManager;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "SemWindowManager"

    const-string v4, "Failed to screenshot"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public blacklist setAppContinuityMode(Ljava/lang/String;IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p2, p1, p3}, Landroid/view/IWindowManager;->setAppContinuityMode(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setAppContinuityMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist setForcedDefaultDisplayDevice(I)V
    .locals 6

    const-string v0, "SemWindowManager"

    if-ltz p1, :cond_7

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForcedDefaultDisplayDevice main, callingPid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x6

    if-ne p1, v5, :cond_3

    invoke-static {v4}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    invoke-static {v4}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->setFlags(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->setFlags(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v3

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForcedDefaultDisplayDevice "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", callingPid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/samsung/android/view/SemWindowManager$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/view/SemWindowManager$1;-><init>(Lcom/samsung/android/view/SemWindowManager;I)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string v1, "displayDeviceType is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(IIIZ)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(IIIZZ)V
    .locals 0

    nop

    nop

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    return-void
.end method

.method public blacklist setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IWindowManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setMaxAspectRatioPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist setStartingWindowContentView(Landroid/content/ComponentName;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setSupportsFlexPanel(ILjava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setSupportsFlexPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterSystemKeyEvent(ILandroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->unregisterSystemKeyEvent(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemWindowManager"

    const-string v2, "Failed unregisterSystemKeyEvent "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
