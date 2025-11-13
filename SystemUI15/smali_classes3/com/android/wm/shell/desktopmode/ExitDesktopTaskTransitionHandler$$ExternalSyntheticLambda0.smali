.class public final synthetic Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$4:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iput p2, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$3:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$4:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$2:F

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$3:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;->f$4:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    invoke-static {v4, v2, p1, v2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v2

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v4, p1

    mul-float/2addr v5, v4

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v4

    invoke-virtual {v3, p0, v5, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
