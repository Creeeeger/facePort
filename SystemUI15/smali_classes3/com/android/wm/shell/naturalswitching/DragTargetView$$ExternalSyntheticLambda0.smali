.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:J

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-wide p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$3:J

    iput p6, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x2

    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-wide v9, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$3:J

    iget v7, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$4:F

    sget-object p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    iget-object v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-boolean v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    if-nez v1, :cond_1

    iget-boolean v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->startSpringAnimation(Z)V

    :cond_1
    iget-object v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    aget v6, v1, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;

    move-object v1, v11

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;

    invoke-direct {v1, v8}, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, v8, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
