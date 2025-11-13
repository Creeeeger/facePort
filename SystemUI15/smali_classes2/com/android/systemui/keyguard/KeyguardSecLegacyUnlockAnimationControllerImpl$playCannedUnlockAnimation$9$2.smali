.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "KeyguardUnlock"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceVisibleForUnlockAnimation()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->updateLeashAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->applyTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz v2, :cond_2

    iget-wide v6, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    const/4 v5, 0x1

    const-wide/16 v3, 0xc8

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->playUnlockAnimation(JZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->updateKeyguardSurface(Z)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    :try_start_1
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "IRemoteAnimationFinishedCallback#onAnimationFinished"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    const-string v3, "Disable panel detector"

    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->shadeExpansionCollectorJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->restoreKeyguardSurfaceIfVisible()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    return-void
.end method
