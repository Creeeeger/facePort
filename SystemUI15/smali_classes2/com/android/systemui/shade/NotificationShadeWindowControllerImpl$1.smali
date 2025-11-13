.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockscreenDisabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->aodAppearWallpaperOpeningTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "setKeyguardAndWallpaperSurfaceInvisible hide aodWallpaper"

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setKeyguardAndWallpaperSurfaceInvisible trace="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final onDreamingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method
