.class public final synthetic Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpTransform:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->clear()V

    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mPostScrimDimAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpTransform:Landroid/view/animation/Transformation;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTmpTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mScrimDimTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Float;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v3, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v0, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    int-to-float v0, v1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Float;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
