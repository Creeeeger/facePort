.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$targetPoint:Landroid/graphics/PointF;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;ILandroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$taskId:I

    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$targetPoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$taskId:I

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$targetPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
