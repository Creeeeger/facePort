.class public final Lcom/android/systemui/statusbar/phone/CoverHostImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/cover/CoverHost;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field public mIsCoverAppCovered:Z

.field public mIsCoverClosed:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/CoverUtil;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/util/CoverUtil;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedScrimAnimation()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    :goto_0
    const/16 v0, 0x11

    if-ne v0, p0, :cond_1

    const-string p0, "CoverHostImpl"

    const-string v0, "isNeedScrimAnimation false"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SAFEMODE:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const-string v3, "CoverHostImpl"

    const-string/jumbo v4, "updateCoverState: attach = %s, cover closed = %s, type = %d"

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V

    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isCoverUiWithWallpaper(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v3, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewController;->onCoverSwitchStateChanged(Z)V

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    goto/16 :goto_2

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-eq v3, v0, :cond_c

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {v3, v0}, Lcom/android/keyguard/KeyguardViewController;->onCoverSwitchStateChanged(Z)V

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CoverHostImpl"

    const-string v1, "Don\'t need to update doKeyguardLaterLocked by desktopMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->canHandleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->cancelLockWhenCoverIsOpened(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    const-string v0, "CoverHostImpl"

    const-string/jumbo v1, "updateCoverWindow: keyguard dismissed by cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->instantCollapseShade()V

    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/CoverUtil;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public final updateCoverWindow()V
    .locals 6

    const-string/jumbo v0, "updateCoverWindow: START"

    const-string v1, "CoverHostImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v5

    iput-boolean v3, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    iput-boolean v4, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    iput v0, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    if-eq v5, v0, :cond_4

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()V

    :goto_3
    const-string/jumbo p0, "updateCoverWindow: END"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
