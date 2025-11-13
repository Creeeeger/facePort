.class public Lcom/samsung/android/view/SemWindowManager;
.super Ljava/lang/Object;
.source "SemWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;,
        Lcom/samsung/android/view/SemWindowManager$FoldStateListener;,
        Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;
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

.field public static final blacklist KEY_CUSTOMIZE_LAST_ID:I = 0x7d3

.field public static final whitelist KEY_PRESS_DOUBLE:I = 0x8

.field public static final blacklist KEY_PRESS_DOWN:I = 0x1

.field public static final whitelist KEY_PRESS_LONG:I = 0x4

.field public static final blacklist KEY_PRESS_QUADRUPLE:I = 0x20

.field public static final blacklist KEY_PRESS_QUINTUPLE:I = 0x40

.field public static final whitelist KEY_PRESS_SINGLE:I = 0x3

.field public static final blacklist KEY_PRESS_TRIPLE:I = 0x10

.field public static final blacklist KEY_PRESS_UP:I = 0x2

.field public static final blacklist MAX_ASPECT_RATIO_CUTOUT_OFF:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field public static final blacklist SUPPORTS_FLEX_PANEL_UNCHANGEABLE:I = 0x4

.field public static final blacklist SUPPORTS_FLEX_PANEL_UNRESIZABLE_ACTIVITY:I = 0x40

.field public static final blacklist SUPPORTS_MAX_ASPECT_RATIO:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemWindowManager"

.field private static blacklist sInstance:Lcom/samsung/android/view/SemWindowManager;


# instance fields
.field private final blacklist mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

.field private final blacklist mGlobal:Landroid/view/WindowManagerGlobal;

.field private blacklist mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    nop

    .line 71
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 72
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 75
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 77
    return-void
.end method

.method public static blacklist castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 93
    .local p0, "instance":Ljava/lang/Object;, "TBASE;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized whitelist getInstance()Lcom/samsung/android/view/SemWindowManager;
    .locals 2

    const-class v0, Lcom/samsung/android/view/SemWindowManager;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/samsung/android/view/SemWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/view/SemWindowManager;-><init>()V

    sput-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;

    .line 87
    :cond_0
    sget-object v1, Lcom/samsung/android/view/SemWindowManager;->sInstance:Lcom/samsung/android/view/SemWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist setForcedDisplaySizeDensityInner(IIIZI)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I
    .param p4, "saveToSettings"    # Z
    .param p5, "forceHideCutout"    # I

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 219
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcedDisplaySizeDensityInner userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/view/SemWindowManager;->validateForcedDisplaySizeDensityValues(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;-><init>(I)V

    .line 226
    invoke-virtual {v1, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p2}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p3}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, p4}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1, p5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object v1

    .line 234
    .local v1, "info":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    iget-object v3, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "info":Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setForcedDisplaySizeDensity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist validateForcedDisplaySizeDensityValues(III)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I

    .line 242
    const/4 v0, 0x0

    const-string v1, "SemWindowManager"

    if-ne p1, p2, :cond_0

    .line 243
    const-string/jumbo v2, "validateForcedDisplaySizeDensityValues: width/height must be different"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v0

    .line 248
    :cond_0
    const/16 v2, 0xc8

    if-gt p1, v2, :cond_1

    if-gt p2, v2, :cond_1

    .line 249
    const-string/jumbo v2, "validateForcedDisplaySizeDensityValues: width/height must be > 200"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v0

    .line 254
    :cond_1
    const/16 v2, 0x48

    if-ge p3, v2, :cond_2

    .line 255
    const-string/jumbo v2, "validateForcedDisplaySizeDensityValues: density must be >= 72"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v0

    .line 258
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist clearForcedDisplaySizeDensity()V
    .locals 4

    .line 343
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 344
    .local v0, "userId":I
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

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->clearForcedDisplaySizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to clearForcedDisplaySizeDensity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getAppContinuityMode(Ljava/lang/String;Landroid/content/pm/ActivityInfo;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "userId"    # I

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p3, p1, p2}, Landroid/view/IWindowManager;->getAppContinuityMode(ILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getAppContinuityMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFullScreenAppsSupportMode()I
    .locals 3

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getFullScreenAppsSupportMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getFullScreenAppsSupportMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInitialDensity()I
    .locals 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplayDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getInitialDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/Point;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getInitialDisplaySize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getKeyCustomizationInfo(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3
    .param p1, "ownerPackage"    # Ljava/lang/String;
    .param p2, "press"    # I
    .param p3, "keyCode"    # I

    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxAspectRatioPolicy(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getMaxAspectRatioPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxAspectRatioPolicyByComponent(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicyByComponent(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getMaxAspectRatioPolicyByComponent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportsFlexPanel(ILjava/lang/String;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getSupportsFlexPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getUserDensity()I
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getUserDisplayDensity()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplayDensity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/Point;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getUserDisplaySize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getVisibleWindowInfo()Ljava/util/List;
    .locals 3
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

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getVisibleWindowInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

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

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to getVisibleWindowInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isFolded()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isFolded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isFolded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to is systemkeyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTableMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTableMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to isTableMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 3
    .param p1, "keyCustomizationInfo"    # Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1555
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to putKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 603
    if-eqz p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 608
    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeKeyCustomizationInfo(Ljava/lang/String;II)V
    .locals 3
    .param p1, "ownerPackage"    # Ljava/lang/String;
    .param p2, "press"    # I
    .param p3, "keyCode"    # I

    .line 1633
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    goto :goto_0

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to removeKeyCustomizationInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "request"    # Z

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request metakeyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to request systemkeyevent, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z

    .line 485
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
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z
    .param p8, "rotation"    # I

    .line 518
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
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z
    .param p8, "rotation"    # I
    .param p9, "ignorePolicy"    # Z

    .line 554
    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-interface/range {v2 .. v10}, Landroid/view/IWindowManager;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemWindowManager"

    const-string v3, "Failed to screenshot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setAppContinuityMode(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "applied"    # Z

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p2, p1, p3}, Landroid/view/IWindowManager;->setAppContinuityMode(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setAppContinuityMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setForcedDefaultDisplayDevice(I)V
    .locals 3
    .param p1, "displayDeviceType"    # I

    .line 669
    const-string v0, "SemWindowManager"

    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 674
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->requestDeviceFolded(Z)V

    .line 677
    goto :goto_2

    .line 671
    :cond_2
    :goto_1
    const-string v1, "displayDeviceType is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    return-void

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to requestDeviceFolded"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I

    .line 269
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    .line 273
    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(IIIZ)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I
    .param p4, "saveToSettings"    # Z

    .line 285
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    .line 289
    return-void
.end method

.method public whitelist setForcedDisplaySizeDensity(IIIZZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I
    .param p4, "saveToSettings"    # Z
    .param p5, "forcedHideCutout"    # Z

    .line 332
    nop

    .line 334
    nop

    .line 332
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/view/SemWindowManager;->setForcedDisplaySizeDensityInner(IIIZI)V

    .line 336
    return-void
.end method

.method public blacklist setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z
    .param p4, "restartTaskId"    # I

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IWindowManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setMaxAspectRatioPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setStartingWindowContentView(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "resId"    # I

    .line 157
    return-void
.end method

.method public blacklist setSupportsFlexPanel(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isSupportsFlexPanel"    # Z

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowManager;->setSupportsFlexPanel(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemWindowManager"

    const-string v2, "Failed to setSupportsFlexPanel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 618
    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager;->mDeviceStateManagerGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    .line 623
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
