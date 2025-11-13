.class public final synthetic Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "mHeavyWorkRunnable, dur="

    const-string v2, "DividerResizeLayout"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    sget-boolean v5, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->loadSnapshotsForResizeTarget()V

    :goto_0
    iget-boolean v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    if-eqz v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "addWindow: failed, window is already added, Callers="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :pswitch_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    iput-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    const-string v1, "Timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
