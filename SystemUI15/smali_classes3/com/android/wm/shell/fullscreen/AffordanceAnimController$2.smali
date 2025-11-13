.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v2, v2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v3, v3, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v2, v2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    iget p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method
