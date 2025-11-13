.class public final Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDurationScale:F

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p5, 0x3f800000    # 1.0f

    iput p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V
    .locals 1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    const/4 p6, 0x0

    aput p6, p7, p1

    const/4 p1, 0x1

    aput p6, p7, p1

    const/4 p1, 0x3

    const/high16 p6, 0x3f800000    # 1.0f

    aput p6, p7, p1

    const/4 v0, 0x0

    aput p6, p7, v0

    invoke-virtual {p0, p7}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget p0, p7, v0

    div-float p0, p6, p0

    aput p0, p7, v0

    aget p0, p7, p1

    div-float/2addr p6, p0

    aput p6, p7, p1

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p5, p0, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    aget p6, p7, v0

    mul-float/2addr p5, p6

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p5, v0

    float-to-int p5, p5

    iput p5, p8, Landroid/graphics/Rect;->left:I

    iget p5, p0, Landroid/graphics/Rect;->right:I

    int-to-float p5, p5

    mul-float/2addr p5, p6

    add-float/2addr p5, v0

    float-to-int p5, p5

    iput p5, p8, Landroid/graphics/Rect;->right:I

    iget p5, p0, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    aget p1, p7, p1

    mul-float/2addr p5, p1

    add-float/2addr p5, v0

    float-to-int p5, p5

    iput p5, p8, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Landroid/view/animation/Animation;->getRoundedCornerRadius()F

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ChangeTransitionProvider@applyTransformation invalid sc="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isDisplayRotating(Landroid/window/TransitionInfo;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z
    .locals 2

    invoke-virtual {p0, p2, p5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->createChangeTransitionSpecIfNeeded(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    move-result-object p5

    if-nez p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ChangeTransitionProvider"

    const-string v1, "buildChangeTransitionAnimators"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    iget-object p5, p5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mSnapshotAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p5, v0, p3}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->onChangeTransitionStarting(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    new-instance v13, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move-object/from16 v11, p3

    invoke-direct {v13, v11, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;-><init>(Landroid/view/SurfaceControl;[F)V

    new-instance v14, Landroid/view/animation/Transformation;

    invoke-direct {v14}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v1, 0x9

    new-array v15, v1, [F

    const/4 v1, 0x4

    new-array v9, v1, [F

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v14

    move-object v7, v15

    move-object v8, v9

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;

    move-object v8, v0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v14, v8

    move-object/from16 v8, v17

    move-object v15, v9

    move-object/from16 v9, v16

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;

    invoke-direct {v0, v12, v15, v13, v14}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;-><init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buildSurfaceAnimator: create "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createChangeTransitionSpecIfNeeded(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;
    .locals 9

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    const-string v2, "ChangeTransitionProvider"

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "canCreateChangeTransitionSpec: failed, cannot find display #"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", change="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    new-instance v1, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;-><init>()V

    goto :goto_3

    :cond_6
    const/4 v6, 0x2

    if-eq v0, v6, :cond_b

    const/4 v6, 0x6

    if-ne v0, v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x3

    if-ne v0, v6, :cond_8

    new-instance v1, Lcom/android/wm/shell/transition/change/CaptionChangeTransitionSpec;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/change/CaptionChangeTransitionSpec;-><init>()V

    goto :goto_3

    :cond_8
    const/4 v6, 0x4

    if-ne v0, v6, :cond_9

    new-instance v1, Lcom/android/wm/shell/transition/change/NaturalSwitchingChangeTransitionSpec;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/wm/shell/transition/change/NaturalSwitchingChangeTransitionSpec;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_3

    :cond_9
    const/4 v6, 0x5

    if-ne v0, v6, :cond_a

    new-instance v1, Lcom/android/wm/shell/transition/change/PopOverChangeTransitionSpec;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/change/PopOverChangeTransitionSpec;-><init>()V

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "createChangeTransitionSpec: failed, for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_b
    :goto_2
    new-instance v1, Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;-><init>()V

    :goto_3
    invoke-static {p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->isDisplayRotating(Landroid/window/TransitionInfo;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_d
    iget v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v6, 0x0

    :goto_5
    iput-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeStartOutsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeEndOutsets()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->isRootOffsetNeeded()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {p1, p2}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_f
    iput-object v5, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iput v6, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->reduceDurationScaleIfNeeded(Landroid/window/TransitionInfo;)V

    iput-object v3, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->createBoundsChangeAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->createSnapshotAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mSnapshotAnimation:Landroid/view/animation/Animation;

    iget-object p1, v1, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "createChangeTransitionSpec: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", durationScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v6, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid ChangeTransitionSpec!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "canCreateChangeTransitionSpec: failed, changeLeash is null, "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "canCreateChangeTransitionSpec: failed, snapshot is null, "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-object v1
.end method

.method public getTransitions()Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    return-object p0
.end method

.method public onChangeTransitionStarting(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    :cond_0
    return-void
.end method
