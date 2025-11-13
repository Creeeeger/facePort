.class public Lcom/android/systemui/cover/SysUICoverService;
.super Lcom/samsung/android/cover/SemCoverService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/cover/SysUICoverService;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/SemCoverService;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    return-void
.end method


# virtual methods
.method public final getCoverHost()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCoverAppCovered(Z)I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCoverAppCovered() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverScreenManager"

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-eq p1, v1, :cond_1

    const-string v1, "onCoverAppCovered: covered = "

    const-string v2, "CoverHostImpl"

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAppCovered(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0x10

    goto :goto_0

    :cond_3
    const/16 p0, 0x20

    :goto_0
    return p0
.end method

.method public final onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCoverAttached() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverScreenManager"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_1
    const-string p1, "onCoverAttached: CoverHost is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :goto_2
    const-string p1, "onCoverAttached exception"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public final onCoverDetached()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverScreenManager"

    const-string v1, "onCoverDetached()"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_0

    iput-boolean v2, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    check-cast v1, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    const-string v1, "onCoverDetached: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener$1()V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    const-string v1, "CoverScreenManager"

    if-nez v0, :cond_1

    const-string v0, "onCoverStateUpdated need to register mScreenLifecycle.Observer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-nez v0, :cond_2

    const-string v0, "onCoverStateUpdated need to register mWakefulnessLifecycle.Observer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCoverStateUpdated() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_5

    :cond_3
    const-string v3, "recreateVirtualDisplay() "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removeVirtualDisplay()V

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener$1()V

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v3}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-eqz v3, :cond_6

    check-cast v3, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_6
    const-string v3, "onCoverStateUpdated: CoverHost is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v3, :cond_7

    invoke-interface {v3, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverWindow()V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v3, :cond_9

    const-string v3, "onCoverStateUpdated: addPluginListener"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onCreate()V

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onCreate()"

    const-string v1, "CoverScreenManager"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    const-string p0, "onCreate() fail to get CoverHost"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.cover.CoverHomeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "There is no component  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "SysUICoverService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverScreenManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
