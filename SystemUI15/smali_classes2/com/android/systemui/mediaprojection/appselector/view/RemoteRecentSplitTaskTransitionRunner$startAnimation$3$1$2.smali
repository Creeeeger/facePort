.class public final Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;->$finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;->handleResult:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;->$finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaProjectionAppSelectorActivity"

    const-string v0, "Failed to call transition finished callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
