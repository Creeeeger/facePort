.class public final synthetic Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mBackInProgress:Z

    :cond_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x3eaa7efa    # 0.333f

    mul-float/2addr v1, p1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float v2, v1, v0

    iget-object v3, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const v1, 0x3e29fbe7    # 0.166f

    mul-float v2, p1, v1

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    neg-float v1, v1

    add-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->applyTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->DEBUG_PROGRESS:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onGestureProgress, progress="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", interpolatedProgress="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungCrossActivityBack"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
