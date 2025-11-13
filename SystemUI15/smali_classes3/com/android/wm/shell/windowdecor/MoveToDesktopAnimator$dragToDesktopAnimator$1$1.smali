.class public final Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $cornerRadius:F

.field public final synthetic $t:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->$t:Landroid/view/SurfaceControl$Transaction;

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->$cornerRadius:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->mostRecentInput:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->setTaskPosition(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->$t:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->$cornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->getScale()F

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->$cornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator$dragToDesktopAnimator$1$1;->this$0:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->taskSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;->position:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
