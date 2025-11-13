.class public final Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $endX:I

.field public final synthetic $endY:I

.field public final synthetic $rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $startX:I

.field public final synthetic $startY:I

.field public final synthetic $startingScale:F

.field public final synthetic $t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(IIIIFLandroid/view/SurfaceControl$Transaction;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIF",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startX:I

    iput p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$endX:I

    iput p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startY:I

    iput p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$endY:I

    iput p5, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startingScale:F

    iput-object p6, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startX:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$endX:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startY:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$endY:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$startingScale:F

    const/4 v3, 0x1

    int-to-float v3, v3

    invoke-static {v3, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$t:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RemoteRecentSplitTaskTransitionRunner$startAnimation$3$1$1;->$rootCandidate:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
