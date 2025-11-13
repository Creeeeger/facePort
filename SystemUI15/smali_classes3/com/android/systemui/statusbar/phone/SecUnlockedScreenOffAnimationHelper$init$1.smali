.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v2}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    invoke-static {p0, v4}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->access$getReasonLog(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    const-string v6, "onStartedGoingToSleep: isAODFullScreenMode="

    const-string v7, ", shouldPlayUnlockedScreenOffAnimation="

    const-string v8, " / reason="

    invoke-static {v6, v7, v8, v3, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", needUpdateSetLockScreenShown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->playWallpaperAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->playWallpaperAnimation()V

    :goto_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->setSkipAnimationInOthers(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->isPanelOpenedOnGoingToSleep:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const-string v2, "clearMaxRefreshRate"

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShownRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartedWakingUp: needUpdateSetLockScreenShown="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShown(Z)V

    :cond_3
    return-void
.end method
