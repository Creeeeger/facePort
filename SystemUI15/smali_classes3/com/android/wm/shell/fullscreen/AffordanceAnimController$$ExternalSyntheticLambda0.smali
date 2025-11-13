.class public final synthetic Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

.field public final synthetic f$1:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    invoke-virtual {v1, p0, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
