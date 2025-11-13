.class public final Lcom/android/systemui/keyguard/WindowVisibilityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/VisibilityController;


# instance fields
.field public final choreographer:Landroid/view/Choreographer;

.field public final shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

.field public final shadeWindowControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Choreographer;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->choreographer:Landroid/view/Choreographer;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerLazy:Ldagger/Lazy;

    new-instance p1, Lcom/android/systemui/keyguard/WindowVisibilityController$shadeWindowControllerHelper$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/WindowVisibilityController$shadeWindowControllerHelper$2;-><init>(Lcom/android/systemui/keyguard/WindowVisibilityController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "BioUnlock"

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final needToBeInvisibleWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final registerFrameUpdateCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->choreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/systemui/keyguard/WindowVisibilityController$registerFrameUpdateCallback$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/WindowVisibilityController$registerFrameUpdateCallback$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v4, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public final resetForceInvisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowVisibilityController;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    check-cast p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->setForceInvisible(Z)V

    const/4 p0, 0x1

    return p0
.end method
