.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayer(Z)V

    goto/16 :goto_5

    :cond_1
    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    iget v6, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    cmpl-float v4, v6, v4

    if-ltz v4, :cond_2

    cmpg-float v4, v6, v5

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    const v6, 0x3f19999a    # 0.6f

    :goto_0
    iget-boolean v4, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    move v4, v3

    goto :goto_3

    :cond_4
    iget-boolean v6, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    move v6, v3

    :goto_3
    iget v3, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6

    iput v5, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    :cond_6
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v4, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;

    invoke-direct {v5, v1, v2, v6, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;ZFLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    if-ne p0, v0, :cond_7

    const/16 p0, 0xc8

    goto :goto_4

    :cond_7
    const/16 p0, 0x190

    :goto_4
    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return-void
.end method
