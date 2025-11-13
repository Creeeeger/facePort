.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/MultiTaskingTransitions;


# static fields
.field public static final sForceHidingAnimators:Ljava/util/ArrayList;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimationLoaderMap:Landroid/util/SparseArray;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDurationScale:F

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->sForceHidingAnimators:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;-><init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "applyTransformation: invalid leash="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiTaskingTransitionProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget p1, p7, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p7, p7, Landroid/graphics/Point;->y:I

    int-to-float p7, p7

    invoke-virtual {p0, p1, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object p1

    sget-object p5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p1, p5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, p8, p1

    if-lez p1, :cond_2

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static buildForceHideAnimationIfNeeded(Ljava/lang/String;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/transition/MultiTaskingTransitions;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->isForceHidingWithoutAnimation()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "leash="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v0, v3, :cond_3

    const v0, 0x7f0101b3

    goto :goto_0

    :cond_3
    const v0, 0x7f0101b5

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildForceHideAnimationIfNeeded: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    move-object v4, p2

    check-cast v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    invoke-virtual {v4, v0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v6

    sget-object p2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v9, Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v9, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v8, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->sForceHidingAnimators:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v4 .. v12}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;FLandroid/graphics/Rect;Z)Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    return v3
.end method

.method public static cancelForceHideAnimationsIfNeeded(Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4

    sget-object v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->sForceHidingAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancelForceHideAnimationsIfNeeded: animators="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    new-instance v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;-><init>(Landroid/animation/Animator;)V

    move-object v0, p1

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;FLandroid/graphics/Rect;Z)Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;
    .locals 19

    move-object/from16 v13, p0

    move/from16 v14, p8

    iget-object v0, v13, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    new-instance v15, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move-object/from16 v12, p3

    invoke-direct {v15, v12, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;-><init>(Landroid/view/SurfaceControl;[F)V

    new-instance v16, Landroid/view/animation/Transformation;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v1, 0x9

    new-array v10, v1, [F

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, v15

    move-object v3, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v10

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v17, v10

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v7, v17

    move-object v12, v9

    move/from16 v9, p6

    move-object v11, v10

    move-object/from16 v10, p7

    move-object v14, v11

    move-object/from16 v11, p1

    move-object/from16 v18, v12

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p8

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, v15}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;)V

    iget-object v2, v13, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildSurfaceAnimator: create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTaskingTransitionProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAnimationLoaderMap()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/transition/AnimationLoader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getState()Lcom/android/wm/shell/transition/MultiTaskingTransitionState;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    return-object p0
.end method

.method public final loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const-string v1, "android"

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "loadAnimationFromResources: failed, Callers="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTaskingTransitionProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x150

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_1
    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p1
.end method

.method public registerAnimationLoader(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/transition/SplitAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/SplitAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/wm/shell/transition/FreeformAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/FreeformAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/android/wm/shell/transition/DexCompatAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/DexCompatAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/android/wm/shell/transition/DexAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/DexAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    new-instance v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/PopOverAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid animation type="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
