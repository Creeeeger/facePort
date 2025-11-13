.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final synthetic f$1:F

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iput p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$1:F

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Landroid/window/WindowContainerToken;

    check-cast p2, Landroid/view/SurfaceControl;

    int-to-float v3, v3

    iget v4, v1, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mEnterExitAnimationDurationMs:I

    iget-object v5, v1, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mAnimationController:Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    iget-object v6, v1, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mLastVisualDisplayBounds:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    iget-object v8, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    iget-object v9, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    if-nez v7, :cond_0

    iget-object v7, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-static {p1, p2, v2, v3, v6}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    iput-object v9, p2, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-virtual {p2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    iput v3, v7, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v7, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-static {p1, p2, v2, v3, v6}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    iput-object v9, p2, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-virtual {p2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p2, v5, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-eqz p1, :cond_4

    iput p0, p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    iget-object p0, v1, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    if-eqz p0, :cond_2

    iget-object p2, p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p0, v1, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-eqz p0, :cond_3

    iget-object p2, p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    int-to-long v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
