.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    check-cast p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    return-void
.end method
