.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayLockscreenTransitionFromAod:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;I)V

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(ZZ)V

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateSensitivenessWithAnimation(Z)V

    :cond_1
    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/CameraLauncher;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastCameraLaunchSource:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v4}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->isFullyCollapsed()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/shade/CameraLauncher;->launchCamera(IZ)V

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    :cond_2
    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    if-eqz p0, :cond_6

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

    check-cast p0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;

    invoke-virtual {p0}, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->invoke()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_2

    :cond_4
    add-int/2addr v2, v0

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 4

    const-string v0, "CentralSurfaces#onStartedGoingToSleep"

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldShowLightRevealScrim()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, v1}, Lcom/android/systemui/shade/ShadeController;->makeExpandedVisible(Z)V

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 4

    const-string v0, "CentralSurfaces#onStartedWakingUp"

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;I)V

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method public final startLockscreenTransitionFromAod()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldHideLightRevealScrimOnWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->makeExpandedInvisible()V

    :cond_0
    return-void
.end method
