.class public final Lcom/android/systemui/keyguard/SurfaceVisibilityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/VisibilityController;


# instance fields
.field public final keyguardSurfaceControllerLazy:Ldagger/Lazy;

.field public final keyguardViewControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "BioUnlock"

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    return-void
.end method

.method public final registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/keyguard/SurfaceVisibilityController$registerFrameUpdateCallback$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/SurfaceVisibilityController$registerFrameUpdateCallback$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method public final resetForceInvisible(Z)V
    .locals 0

    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SurfaceVisibilityController;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
.end method
