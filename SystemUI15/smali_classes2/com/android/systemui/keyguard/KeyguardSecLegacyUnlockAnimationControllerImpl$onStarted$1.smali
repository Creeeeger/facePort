.class final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceVisibleForUnlockAnimation()V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-wide v3, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-wide v5, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "KeyguardUnlock"

    const-string v3, "onStarted fail to restoreKeyguardSurfaceByTransaction"

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
