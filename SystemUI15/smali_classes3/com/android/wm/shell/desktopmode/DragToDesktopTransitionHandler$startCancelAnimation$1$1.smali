.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $dx:F

.field public final synthetic $dy:F

.field public final synthetic $sc:Landroid/view/SurfaceControl;

.field public final synthetic $tx:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic $x:F

.field public final synthetic $y:F


# direct methods
.method public constructor <init>(FFFFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$x:F

    iput p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$dx:F

    iput p3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$y:F

    iput p4, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$dy:F

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$tx:Landroid/view/SurfaceControl$Transaction;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$sc:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$x:F

    iget v2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$dx:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$y:F

    iget v3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$dy:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$1;->$sc:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
