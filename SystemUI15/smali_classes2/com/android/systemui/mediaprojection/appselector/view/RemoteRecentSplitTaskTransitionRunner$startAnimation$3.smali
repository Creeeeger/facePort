.class public final Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $endX:I

.field public final synthetic $endY:I

.field public final synthetic $finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field public final synthetic $launchAnimation:Landroid/animation/AnimatorSet;

.field public final synthetic $rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $startX:I

.field public final synthetic $startY:I

.field public final synthetic $startingScale:F

.field public final synthetic $t:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;IIIIFLandroid/view/SurfaceControl$Transaction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "IIIIF",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/window/TransitionInfo$Change;",
            ">;",
            "Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$launchAnimation:Landroid/animation/AnimatorSet;

    iput p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startX:I

    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$endX:I

    iput p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startY:I

    iput p5, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$endY:I

    iput p6, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startingScale:F

    iput-object p7, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p8, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;

    iput-object p10, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startX:I

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$endX:I

    iget v4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startY:I

    iget v5, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$endY:I

    iget v6, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$startingScale:F

    iget-object v7, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$t:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->this$0:Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;

    iget-object v10, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$finishedCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x150

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;-><init>(IIIIFLandroid/view/SurfaceControl$Transaction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;

    invoke-direct {v1, v9, v10}, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$2;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$launchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3;->$launchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
