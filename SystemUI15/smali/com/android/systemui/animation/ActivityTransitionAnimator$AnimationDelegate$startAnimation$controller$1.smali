.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $isExpandingFullyAbove:Z

.field public final synthetic $navigationBar:Landroid/view/RemoteAnimationTarget;

.field public final synthetic $window:Landroid/view/RemoteAnimationTarget;

.field public final synthetic $windowBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;ZLandroid/graphics/Rect;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iput-boolean p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$isExpandingFullyAbove:Z

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$windowBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p6, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    iput-object p7, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-boolean v1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$isExpandingFullyAbove:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$windowBounds:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    move-object v1, v0

    move v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object v0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    move-result-object p0

    return-object p0
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result p0

    return p0
.end method

.method public final isDialogLaunch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isDialogLaunch()Z

    move-result p0

    return p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    return p0
.end method

.method public final onIntentStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onIntentStarted(Z)V

    return-void
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationEnd()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling controller.onTransitionAnimationEnd(isExpandingFullyAbove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") [controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p3

    iget-object v9, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    iget-object v10, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v9, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int v5, v3, v4

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    add-int v15, v7, v14

    int-to-float v15, v15

    div-float/2addr v15, v6

    sub-int/2addr v4, v3

    sub-int/2addr v14, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v7, v14

    div-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v14, v14, v5, v15}, Landroid/graphics/Matrix;->setScale(FFFF)V

    mul-float v3, v7, v14

    sub-float/2addr v3, v7

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v4

    sub-float/2addr v7, v5

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v3, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    iget-object v5, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    iget-object v6, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v15, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v15}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v2, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v2, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    goto :goto_0

    :goto_1
    invoke-interface {v15}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v2, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    :goto_2
    move-wide v6, v2

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v2, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    goto :goto_2

    :goto_3
    sget-object v2, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    sget-object v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v2

    invoke-interface {v15}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    iget-object v3, v3, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_4

    :cond_3
    int-to-float v3, v13

    sget-object v4, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/animation/ActivityTransitionAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    iget-object v4, v4, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v3, v2

    goto :goto_4

    :cond_4
    move v2, v12

    :goto_4
    iget v3, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v14

    new-instance v4, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v5, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array v4, v13, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v2, v4, v11

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_5
    :goto_5
    iget-object v9, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    if-eqz v9, :cond_8

    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_7

    :cond_6
    sget-object v2, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    sget-object v14, Lcom/android/systemui/animation/ActivityTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    sget-wide v4, Lcom/android/systemui/animation/ActivityTransitionAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x85

    move-object v2, v14

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v2

    new-instance v15, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v3, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v15, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_7

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    iget v5, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget-object v6, v9, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget v5, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v11, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_6

    :cond_7
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x85

    move-object v2, v14

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v2

    sget-object v3, Lcom/android/systemui/animation/ActivityTransitionAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v12, v2

    invoke-virtual {v15, v12}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    :goto_6
    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array v3, v13, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v15}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_8
    :goto_7
    iget-object v2, v10, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v2, :cond_9

    invoke-interface {v2, v8}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationProgress(F)V

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v8}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;->onTransitionAnimationStart()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling controller.onTransitionAnimationStart(isExpandingFullyAbove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") [controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
