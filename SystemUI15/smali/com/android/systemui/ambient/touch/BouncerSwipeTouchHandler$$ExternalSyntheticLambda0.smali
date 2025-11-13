.class public final synthetic Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchHandler$TouchSession$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    return-void
.end method


# virtual methods
.method public final onRemoved()V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object v2, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;

    iget-object v4, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mScrimManagerCallback:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/systemui/ambient/touch/scrim/ScrimManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ambient/touch/scrim/ScrimManager;Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$1;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    return-void
.end method
