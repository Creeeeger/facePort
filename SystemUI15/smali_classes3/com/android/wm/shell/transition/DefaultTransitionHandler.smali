.class public final Lcom/android/wm/shell/transition/DefaultTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimations:Landroid/util/ArrayMap;

.field public mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

.field public mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field public final mInsets:Landroid/graphics/Rect;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

.field public mSkipMergeAnimation:Z

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/internal/policy/TransitionAnimation;

    const-string p4, "ShellTransitions"

    invoke-direct {p3, p1, v1, p4}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    const-class p3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    if-eqz p7, :cond_0

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget p1, p7, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p7, p7, Landroid/graphics/Point;->y:I

    int-to-float p7, p7

    invoke-virtual {p0, p1, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-nez p9, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object p1

    sget-object p5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p1, p5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    cmpl-float p1, p8, p1

    if-lez p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 17

    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v11, Landroid/view/animation/Transformation;

    invoke-direct {v11}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v1, 0x9

    new-array v12, v1, [F

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;

    move-object v0, v15

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v13, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;

    move-object v0, v13

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p0

    move-object/from16 v16, v13

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda8;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;-><init>(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I
    .locals 15

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v6, "Display is changing, resolve the animation hint."

    const/4 v7, 0x0

    const-wide v3, -0x68a950ff498ac177L    # -3.034554241152218E-196

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "  display requests explicit seamless"

    const/4 v8, 0x0

    const-wide v4, -0x46a73fbdfc8cda7L

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x2

    if-ge v5, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v11

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v12

    if-ne v11, v12, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_e

    if-eqz v4, :cond_5

    iget-boolean v9, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isAllowedSeamlessRotation:Z

    if-eqz v9, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_6

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v13, "  display has system alert windows, so not seamless."

    const/4 v14, 0x0

    const-wide v10, 0x64c5eb4b67c33806L    # 2.7756874686804E177

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    move v7, v1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v11

    and-int/2addr v9, v11

    if-eqz v9, :cond_8

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v9

    if-eq v9, v2, :cond_e

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_6

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v13, "  wallpaper is participating but isn\'t seamless."

    const/4 v14, 0x0

    const-wide v10, 0x4ba1ae2089ee3a48L    # 2.167584251648076E56

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v9

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v4, :cond_9

    move v11, v1

    goto :goto_2

    :cond_9
    move v11, v3

    :goto_2
    if-eqz v11, :cond_b

    const/4 v4, -0x1

    if-eq v9, v4, :cond_a

    if-eq v9, v2, :cond_a

    move v8, v9

    :cond_a
    move-object v4, v10

    :cond_b
    if-eq v9, v2, :cond_d

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_c

    iget v6, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v13, "  task %s isn\'t requesting seamless, so not seamless."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v14

    const-wide v10, 0x54e6389e832e3c52L    # 9.720653472264602E100

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    move v6, v3

    goto :goto_3

    :cond_d
    if-eqz v11, :cond_e

    move v6, v1

    :cond_e
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_f
    if-eqz v6, :cond_1f

    if-eqz v7, :cond_10

    goto/16 :goto_7

    :cond_10
    if-eqz v4, :cond_12

    iget-boolean v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isAllowedSeamlessRotation:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_11

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "  top activity has meta data, so allows seamless."

    const/4 v8, 0x0

    const-wide v4, -0x7b826bf74c1fc7a6L

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return v2

    :cond_12
    iget v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-eqz v4, :cond_14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "  nav bar allows seamless."

    const/4 v8, 0x0

    const-wide v4, 0x5d11548afcc232f9L    # 2.0637767652732548E140

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    return v2

    :cond_14
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v4, v5, :cond_15

    move v4, v1

    goto :goto_4

    :cond_15
    move v4, v3

    :goto_4
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    rem-int/2addr v5, v9

    if-eqz v5, :cond_16

    xor-int/lit8 v4, v4, 0x1

    :cond_16
    if-eqz v4, :cond_18

    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    if-eqz v4, :cond_17

    move v9, v2

    goto :goto_5

    :cond_17
    move v9, v1

    :cond_18
    :goto_5
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    if-eq v4, v9, :cond_1e

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v4

    if-ne v4, v9, :cond_19

    goto :goto_6

    :cond_19
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-eq v4, v0, :cond_1a

    move v3, v1

    :cond_1a
    if-nez v3, :cond_1c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "  nav bar changes sides, so not seamless."

    const/4 v6, 0x0

    const-wide v2, 0x240d5ddd9fe73b7bL    # 5.050409050821263E-135

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return v8

    :cond_1c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v7, "  Rotation IS seamless."

    const/4 v8, 0x0

    const-wide v4, -0x262e048ba18fce1cL    # -4.754907996746802E124

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v2

    :cond_1e
    :goto_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1f

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "  rotation involves upside-down portrait, so not seamless."

    const/4 v6, 0x0

    const-wide v2, 0x7225e8c0a64b3946L    # 7.304539623070159E241

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    :goto_7
    return v8
.end method

.method public static isSupportedOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .locals 25

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v8, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v10, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v15, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v8

    new-instance v19, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v24

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v23, p5

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method

.method public final beforeMergeAnimation(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    :cond_0
    instance-of p1, p2, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    :cond_1
    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;IZ)Landroid/view/animation/Animation;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v5, p1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    invoke-static {v9}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    const/4 v11, 0x1

    if-eqz v6, :cond_0

    move v6, v11

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-static {v9}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    iget v13, v12, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    if-nez v13, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_2

    :cond_2
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v14, v12, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    iget v12, v12, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    invoke-static {v13, v14, v12}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    move-object v12, v13

    goto :goto_2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    :goto_2
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_TRANSITION:Z

    if-eqz v13, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v13

    if-ne v13, v11, :cond_4

    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v13, v11}, Lcom/android/internal/policy/TransitionAnimation;->overrideDisplayId(I)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v13

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v10, 0x4

    const/16 v16, 0x0

    if-eqz v13, :cond_6

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    and-int/2addr v2, v11

    if-eqz v2, :cond_5

    move v2, v11

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_6
    const/16 v1, 0x9

    if-ne v5, v1, :cond_7

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_7
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_9

    if-eqz v3, :cond_8

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_9
    if-ne v9, v14, :cond_b

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadResumeAffordanceAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_a
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x150

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_7

    :cond_b
    if-ne v5, v15, :cond_c

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v12, v2, v12}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_c
    if-ne v8, v11, :cond_f

    if-eqz v6, :cond_d

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_e

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v3

    goto :goto_4

    :cond_e
    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result v3

    :goto_4
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_f
    const/16 v1, 0xc

    if-ne v8, v1, :cond_10

    if-eqz v4, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_10
    const/16 v1, 0xb

    if-ne v8, v1, :cond_11

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v7

    move/from16 v2, p1

    move/from16 v3, p4

    move-object v5, v12

    move-object v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_11
    const/4 v1, 0x2

    if-ne v8, v1, :cond_12

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v6

    move/from16 v2, p1

    move/from16 v3, p4

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    goto/16 :goto_7

    :cond_12
    const/4 v1, 0x3

    if-eq v8, v1, :cond_17

    if-ne v8, v10, :cond_13

    goto :goto_5

    :cond_13
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    return-object v16

    :cond_14
    if-ne v8, v15, :cond_15

    return-object v16

    :cond_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_RESUMED_AFFORDANCE_ANIMATION:Z

    if-eqz v2, :cond_16

    if-ne v5, v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1}, Lcom/android/internal/policy/TransitionAnimation;->loadResumeAffordanceAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_7

    :cond_16
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_7

    :cond_17
    :goto_5
    if-ne v8, v1, :cond_18

    move v3, v11

    goto :goto_6

    :cond_18
    const/4 v3, 0x0

    :goto_6
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v13

    move v2, v4

    move-object v4, v12

    move/from16 v5, p1

    move/from16 v6, p4

    move-object v7, v8

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iget-object v4, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    move-object/from16 v5, p3

    iput-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iput-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_19

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_8

    :cond_19
    move v7, v3

    :goto_8
    iput v7, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v6

    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    :goto_9
    iput v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    iput v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v6, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v6

    iput v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v6, :cond_1c

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    move-result v6

    iput v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMinimizePoint()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1c
    iget v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    if-ne v6, v15, :cond_1d

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    move-result v6

    iput v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    :cond_1d
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v6, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_1e

    goto :goto_a

    :cond_1e
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    goto :goto_b

    :cond_1f
    :goto_a
    move-object/from16 v6, v16

    :goto_b
    iput-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    if-eqz v6, :cond_25

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-ne v6, v10, :cond_25

    move-object/from16 v6, p2

    invoke-static {v6, v11}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v7

    :goto_c
    if-ltz v7, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-eqz v10, :cond_22

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v10

    if-eqz v10, :cond_22

    const/high16 v10, 0x100000

    invoke-virtual {v8, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v10

    if-nez v10, :cond_21

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_21
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    goto :goto_d

    :cond_22
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    :cond_23
    move-object/from16 v6, v16

    :goto_d
    if-eqz v6, :cond_24

    move v6, v11

    goto :goto_e

    :cond_24
    const/4 v6, 0x0

    :goto_e
    iput-boolean v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    :cond_25
    :try_start_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "MultiTaskingTransitionProvider"

    if-eqz v6, :cond_28

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    move-result v6

    if-eqz v6, :cond_28

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAnimation: Use affordance"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    if-ne v6, v14, :cond_26

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v6}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_26

    if-eqz v1, :cond_26

    iget-object v6, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_26

    iget-object v2, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/AnimationLoader;

    iget-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v7, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/transition/AnimationLoader;->getCornerRadius(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRoundedCornerRadius(F)V

    goto :goto_f

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_26
    :goto_f
    iget v2, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    if-ne v2, v15, :cond_27

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getAffordanceTargetFreeformTask()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_27

    :goto_10
    invoke-virtual {v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->reset()V

    goto :goto_14

    :cond_27
    invoke-virtual {v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->reset()V

    move-object/from16 v16, v1

    goto :goto_14

    :cond_28
    :try_start_2
    iget-object v6, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v6, :cond_2c

    iget-object v8, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/transition/AnimationLoader;

    invoke-virtual {v8}, Lcom/android/wm/shell/transition/AnimationLoader;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_29

    goto :goto_13

    :cond_29
    invoke-virtual {v8}, Lcom/android/wm/shell/transition/AnimationLoader;->loadAnimationIfPossible()V

    iget-object v11, v8, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    iget-boolean v13, v11, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    if-eqz v13, :cond_2b

    iget-object v1, v11, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_2a

    goto :goto_12

    :cond_2a
    move-object/from16 v16, v1

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_10

    :cond_2b
    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_2c
    move-object/from16 v16, v1

    goto :goto_10

    :goto_14
    move-object/from16 v1, v16

    goto :goto_16

    :goto_15
    invoke-virtual {v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->reset()V

    throw v0

    :cond_2d
    move-object/from16 v5, p3

    :goto_16
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_TRANSITION:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->overrideDisplayId(I)V

    :cond_2e
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v9}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_17

    :cond_2f
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_17
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_30
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_31
    return-object v1
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/Animator;I)V

    iget-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setAnimScaleSetting(F)V
    .locals 5

    iput p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    const-string v1, "->"

    const-string/jumbo v2, "setAnimScaleSetting: "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iget v3, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiTaskingTransitionProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    iget v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    :cond_1
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 36

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v4, p5

    const/4 v14, 0x2

    const/4 v15, -0x1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v6, 0x1

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v21

    const-wide v17, -0x19d2164d2c95c1a4L    # -1.5887869653520993E184

    const/16 v19, 0x0

    const-string/jumbo v20, "start default transition animation, info = %s"

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0xb

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {v4, v5}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return v6

    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-nez v3, :cond_5

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    add-int/2addr v0, v15

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v1, :cond_9

    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_4
    if-ltz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    add-int/2addr v0, v15

    goto :goto_4

    :cond_8
    move v0, v6

    :goto_5
    if-nez v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    const/16 v3, 0x400

    and-int/2addr v0, v3

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->shouldAnimateDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move v3, v6

    goto/16 :goto_4e

    :cond_a
    :goto_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_b

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/Transitions;->hasDuplicatedOpenTypeChanges(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v25, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;

    const/16 v16, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move v13, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_8
    const/4 v12, 0x4

    const/4 v13, 0x6

    if-ltz v0, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_f

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v17

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_c

    goto :goto_a

    :cond_c
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v17, :cond_e

    invoke-virtual {v15, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v12

    if-eqz v12, :cond_d

    move v4, v6

    :cond_d
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v12, :cond_e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    if-ne v12, v13, :cond_e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v12

    if-eqz v12, :cond_e

    move/from16 v16, v6

    :cond_e
    :goto_9
    const/4 v12, -0x1

    goto :goto_b

    :cond_f
    :goto_a
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move v1, v6

    move v3, v1

    goto :goto_9

    :cond_10
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v6

    move v3, v2

    goto :goto_9

    :cond_11
    move v3, v6

    goto :goto_9

    :goto_b
    add-int/2addr v0, v12

    move v15, v12

    const/16 v13, 0x400

    goto :goto_8

    :cond_12
    const/4 v0, 0x5

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v12

    goto :goto_c

    :cond_13
    move v1, v0

    :goto_c
    move v15, v1

    goto :goto_d

    :cond_14
    if-eqz v1, :cond_18

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v1, :cond_15

    if-eqz v4, :cond_15

    move v15, v13

    goto :goto_d

    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    if-ne v1, v13, :cond_17

    if-eqz v16, :cond_17

    :cond_16
    const/4 v15, 0x0

    goto :goto_d

    :cond_17
    move v15, v14

    goto :goto_d

    :cond_18
    if-eqz v2, :cond_19

    const/4 v15, 0x3

    goto :goto_d

    :cond_19
    if-eqz v3, :cond_16

    move v15, v6

    :goto_d
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_e
    if-ltz v1, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v2, v0, :cond_1a

    move/from16 v28, v6

    goto :goto_f

    :cond_1a
    const/4 v2, -0x1

    add-int/2addr v1, v2

    goto :goto_e

    :cond_1b
    const/16 v28, 0x0

    :goto_f
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ltz v0, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-ne v4, v13, :cond_1c

    :goto_11
    const/4 v3, -0x1

    goto :goto_12

    :cond_1c
    invoke-virtual {v3, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/2addr v1, v6

    goto :goto_11

    :cond_1d
    add-int/2addr v2, v6

    goto :goto_11

    :goto_12
    add-int/2addr v0, v3

    goto :goto_10

    :cond_1e
    const/16 v29, 0x0

    goto :goto_14

    :cond_1f
    add-int/2addr v1, v2

    if-lez v1, :cond_20

    move v0, v6

    goto :goto_13

    :cond_20
    const/4 v0, 0x0

    :goto_13
    move/from16 v29, v0

    :goto_14
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_15
    if-ltz v0, :cond_22

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_21

    const/16 v30, 0x0

    goto :goto_16

    :cond_21
    const/4 v1, -0x1

    add-int/2addr v0, v1

    goto :goto_15

    :cond_22
    move/from16 v30, v6

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    const/16 v31, 0x0

    goto :goto_1a

    :cond_24
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_17
    if-ltz v0, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_18

    :cond_25
    const/4 v1, -0x1

    goto :goto_19

    :cond_26
    :goto_18
    move/from16 v31, v6

    goto :goto_1a

    :goto_19
    add-int/2addr v0, v1

    goto :goto_17

    :goto_1a
    invoke-static {v9, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    move v4, v0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1b
    iget-object v3, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    if-ltz v4, :cond_7c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/window/TransitionInfo$Change;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    const/16 v13, 0x400

    and-int/2addr v1, v13

    if-eqz v1, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->shouldAnimateDefaultDisplay()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_1e

    :cond_27
    const/16 v1, 0x4200

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_1e

    :cond_28
    const v1, 0x10102

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2e

    if-eqz v31, :cond_29

    invoke-virtual {v2, v14}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v12, :cond_29

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_29
    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-eq v1, v6, :cond_2b

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    goto :goto_1c

    :cond_2a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_2b
    :goto_1c
    move v1, v6

    :goto_1d
    if-eqz v1, :cond_2c

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v13}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v1, :cond_2d

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-static {v2, v9}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    :goto_1e
    move v8, v4

    move-object/from16 v34, v5

    move v3, v6

    move-object v14, v7

    move v4, v12

    const/4 v1, 0x6

    const/4 v2, -0x1

    :goto_1f
    const/16 v27, 0x400

    goto/16 :goto_4a

    :cond_2e
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_2f

    move/from16 v18, v6

    goto :goto_20

    :cond_2f
    const/16 v18, 0x0

    :goto_20
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v19, :cond_30

    if-eqz v18, :cond_30

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v20

    if-eqz v20, :cond_30

    move/from16 v20, v6

    goto :goto_21

    :cond_30
    const/16 v20, 0x0

    :goto_21
    iget-object v6, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/16 v12, 0x20

    const/4 v13, 0x6

    if-ne v1, v13, :cond_35

    invoke-virtual {v2, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v23

    if-eqz v23, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v12

    if-eq v12, v13, :cond_36

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v12, :cond_34

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->isFadeInOutRotationNeeded()Z

    move-result v12

    if-eqz v12, :cond_31

    :goto_22
    const/4 v12, 0x1

    goto :goto_23

    :cond_31
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v12, :cond_32

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v12

    const/high16 v13, 0x10000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_32

    goto :goto_22

    :cond_32
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v12, :cond_33

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v12

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v13

    if-eq v12, v13, :cond_33

    goto :goto_22

    :cond_33
    const/4 v12, 0x0

    :goto_23
    if-eqz v12, :cond_34

    goto :goto_24

    :cond_34
    invoke-virtual {v3, v9, v10, v2}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    :cond_35
    move-object v12, v5

    move v5, v4

    goto :goto_28

    :cond_36
    :goto_24
    invoke-static {v2, v9, v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_37

    const/4 v13, 0x1

    goto :goto_25

    :cond_37
    const/4 v13, 0x0

    :goto_25
    if-nez v13, :cond_38

    if-eq v12, v14, :cond_38

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move v13, v4

    move v4, v12

    move-object v12, v5

    move-object/from16 v5, v26

    move-object/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;)V

    move-object v14, v7

    move-object/from16 v34, v12

    move v8, v13

    const/4 v0, 0x1

    :goto_26
    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto/16 :goto_1f

    :cond_38
    move-object v12, v5

    move v5, v4

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v4, :cond_3a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const/4 v14, 0x6

    if-eq v4, v14, :cond_3a

    invoke-virtual {v3, v9, v10, v2}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    iget v4, v3, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    if-eqz v4, :cond_39

    iget-object v4, v3, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    goto :goto_27

    :cond_39
    const/4 v4, 0x0

    :goto_27
    if-nez v4, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    move v14, v13

    move v13, v0

    goto :goto_29

    :goto_28
    move v13, v0

    const/4 v14, 0x0

    :goto_29
    sget-boolean v21, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v21, :cond_3c

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->shouldSkipDefaultTransition()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "canSkipDefaultTransition: c="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiTaskingTransitionProvider"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2a

    :cond_3b
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_3c

    move v8, v5

    goto/16 :goto_2b

    :cond_3c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_3d

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    move v4, v1

    move-object/from16 v1, v26

    move-object/from16 v33, v2

    move-object v8, v3

    move-object/from16 v3, v25

    move v7, v4

    move-object/from16 v4, p3

    move-object/from16 v24, v8

    move v8, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_2b

    :cond_3d
    move v7, v1

    move-object/from16 v33, v2

    move-object/from16 v24, v3

    move v8, v5

    :cond_3e
    const/16 v0, 0x200

    const/4 v1, 0x6

    if-ne v7, v1, :cond_48

    if-eqz v18, :cond_3f

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v10, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2b

    :cond_3f
    if-eqz v18, :cond_41

    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    :cond_40
    :goto_2b
    move-object/from16 v14, p0

    move-object/from16 v34, v12

    move v0, v13

    goto/16 :goto_26

    :cond_41
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    move-object/from16 v5, v33

    if-eqz v1, :cond_42

    invoke-virtual {v5, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 v1, 0x400

    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v16, 0x1

    goto :goto_2c

    :cond_42
    invoke-static {v5, v9}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v1

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {v10, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_2c
    if-eqz v14, :cond_43

    goto :goto_2b

    :cond_43
    if-nez v18, :cond_44

    invoke-virtual {v5, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0x400

    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_44
    if-eqz v19, :cond_45

    if-eqz v20, :cond_45

    goto :goto_2d

    :cond_45
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_46
    :goto_2d
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_47

    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v2

    if-eq v1, v2, :cond_47

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v5

    move-object/from16 v3, p2

    move-object/from16 v5, v26

    move-object/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;)V

    goto/16 :goto_2b

    :cond_47
    :goto_2e
    move/from16 v14, v16

    goto :goto_2f

    :cond_48
    move-object/from16 v5, v33

    goto :goto_2e

    :goto_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz v1, :cond_4a

    invoke-virtual {v5, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    if-nez v13, :cond_4a

    const/4 v0, 0x6

    if-eq v7, v0, :cond_4c

    const/16 v0, 0x400

    invoke-virtual {v5, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz v14, :cond_49

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_49
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {v0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->isSupportedOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_4a
    const/16 v4, 0x400

    goto :goto_31

    :cond_4b
    move-object/from16 v34, v12

    move/from16 v33, v13

    move/from16 v35, v14

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v27, 0x400

    :goto_30
    move-object/from16 v14, p0

    goto/16 :goto_49

    :cond_4c
    const/4 v0, 0x3

    if-ne v7, v0, :cond_4a

    const/16 v4, 0x400

    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_4d
    :goto_31
    if-eqz v13, :cond_4f

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4e
    :goto_32
    move/from16 v27, v4

    move-object/from16 v34, v12

    move/from16 v33, v13

    move/from16 v35, v14

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_30

    :cond_4f
    invoke-static {v5, v9}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_32

    :cond_50
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v16, :cond_51

    if-eqz v13, :cond_51

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    if-eq v0, v1, :cond_51

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_32

    :cond_51
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionTypeFromInfo(Landroid/window/TransitionInfo;)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, p2

    move/from16 v23, v3

    move-object v3, v5

    move/from16 v27, v4

    move v4, v15

    move/from16 v33, v13

    move-object v13, v5

    move/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->loadAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_7a

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_52

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    invoke-static/range {v23 .. v23}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eq v2, v3, :cond_52

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v3, v23

    invoke-static {v13, v8, v2, v3}, Lcom/android/wm/shell/transition/Transitions;->calculateAnimLayer(Landroid/window/TransitionInfo$Change;III)I

    move-result v2

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v10, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_52
    if-eqz v18, :cond_5d

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    goto :goto_33

    :cond_53
    const/4 v2, 0x0

    :goto_33
    if-nez v2, :cond_54

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v2

    if-eqz v2, :cond_54

    if-nez v15, :cond_54

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    const v3, 0x10602e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v17

    :cond_54
    const/4 v2, 0x2

    if-eq v15, v2, :cond_56

    if-eqz v16, :cond_55

    const/4 v2, 0x6

    if-ne v15, v2, :cond_55

    goto :goto_34

    :cond_55
    const/4 v5, 0x1

    goto :goto_35

    :cond_56
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_57

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_37

    :cond_57
    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    add-int/2addr v2, v1

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_37

    :goto_35
    if-eqz v29, :cond_58

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    :cond_58
    if-eqz v1, :cond_5c

    const/4 v1, 0x3

    if-ne v15, v1, :cond_5c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    move v3, v5

    goto :goto_36

    :cond_59
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_5a

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    :cond_5a
    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    :cond_5b
    const/4 v3, 0x2

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    sub-int/2addr v2, v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_5c
    :goto_37
    move/from16 v1, v17

    goto :goto_38

    :cond_5d
    const/4 v5, 0x1

    goto :goto_37

    :goto_38
    if-eqz v21, :cond_5e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasRoundedCornerRadius()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getRoundedCornerRadius()F

    move-result v2

    :goto_39
    move v6, v2

    goto :goto_3b

    :cond_5e
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result v2

    if-eqz v2, :cond_61

    if-eqz v18, :cond_5f

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_3a

    :cond_5f
    invoke-static {v13, v9}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result v2

    :goto_3a
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_60

    const/4 v2, 0x0

    goto :goto_39

    :cond_60
    invoke-static {v2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    goto :goto_39

    :cond_61
    const/4 v6, 0x0

    :goto_3b
    invoke-static {v9, v13, v0, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    move-result v32

    if-eqz v18, :cond_62

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_64

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result v1

    if-nez v1, :cond_64

    :cond_62
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-nez v1, :cond_63

    invoke-static {v13, v0, v10, v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_3c

    :cond_63
    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, v13, v0, v11}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :goto_3c
    if-eqz v19, :cond_65

    if-eqz v20, :cond_65

    move-object/from16 v2, v24

    const/4 v5, 0x0

    goto :goto_40

    :cond_65
    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v2, v24

    iget v3, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    if-nez v3, :cond_66

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_3d

    :cond_66
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v7, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    invoke-static {v3, v7, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :goto_3d
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_3e
    move-object v5, v1

    const/4 v1, 0x0

    goto :goto_3f

    :cond_67
    move-object/from16 v2, v24

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3e

    :goto_3f
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_40
    invoke-static {v13, v9}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v4

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v35, v14

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v14

    invoke-direct {v3, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_68

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    :cond_68
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6a

    if-nez v30, :cond_6a

    iget v4, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    if-eqz v4, :cond_69

    iget-object v2, v2, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    goto :goto_41

    :cond_69
    const/4 v2, 0x0

    :goto_41
    if-nez v2, :cond_6a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    invoke-static {v13, v8, v2, v4}, Lcom/android/wm/shell/transition/Transitions;->calculateAnimLayer(Landroid/window/TransitionInfo$Change;III)I

    move-result v2

    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "Transition ActivityWrap: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v10, v1, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Point;->set(II)V

    const/4 v7, 0x0

    invoke-virtual {v11, v1, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_42

    :cond_6a
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v18

    move-object/from16 v14, p0

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v16, v26

    move-object/from16 v17, v0

    move-object/from16 v19, v25

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v6

    move-object/from16 v24, v5

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v0, :cond_71

    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_70

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    const v2, 0x1080394

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_43

    :cond_6b
    const/16 v1, 0x2000

    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v5, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    :cond_6c
    move-object v5, v7

    :goto_43
    if-nez v5, :cond_6d

    goto/16 :goto_44

    :cond_6d
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v5, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    if-nez v1, :cond_6e

    goto/16 :goto_44

    :cond_6e
    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-static {v2, v5, v1, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    move-result-object v5

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_6f

    goto/16 :goto_44

    :cond_6f
    new-instance v19, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;

    const/16 v16, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v7, v2

    move-object v2, v5

    move-object/from16 v34, v12

    move v12, v4

    move-object/from16 v4, v25

    move-object v12, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, v12, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v22

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v24

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v16, v26

    move-object/from16 v17, v7

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v23, v6

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    goto :goto_45

    :cond_70
    move-object/from16 v34, v12

    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_73

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object v3, v13

    move-object v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    goto :goto_45

    :cond_71
    move-object/from16 v34, v12

    if-eqz v1, :cond_73

    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_73

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object v3, v13

    move-object v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    goto :goto_45

    :cond_72
    :goto_44
    move-object/from16 v34, v12

    :cond_73
    :goto_45
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_79

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->isTransitionWithDim()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iget v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v15, :cond_74

    const/16 v17, 0x0

    goto :goto_47

    :cond_74
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v6, 0x1

    goto :goto_46

    :cond_75
    const/4 v6, 0x2

    :goto_46
    invoke-static {v1, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadDimAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_76

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_76
    move-object/from16 v17, v5

    :goto_47
    if-eqz v17, :cond_79

    invoke-static {v13, v9}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v9, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DimTransitionLayer for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "DimTransitionProvider#attachDimTransitionSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_77
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_78

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v18, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v23

    const-wide v19, -0x6beba1e62c07cb77L    # -6.050099627090014E-212

    const/16 v21, 0x0

    const-string v22, "attach dim transition, change=%s"

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/16 v22, 0x0

    iget-object v2, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v26

    move-object/from16 v18, v0

    move-object/from16 v19, v25

    move-object/from16 v20, v2

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    goto :goto_48

    :cond_79
    const/4 v3, 0x1

    :goto_48
    move/from16 v17, v32

    move/from16 v0, v33

    move/from16 v16, v35

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v4, 0x4

    goto :goto_4a

    :cond_7a
    move v0, v7

    move-object/from16 v34, v12

    move/from16 v35, v14

    const/4 v3, 0x1

    move-object/from16 v14, p0

    const/4 v1, 0x6

    const/4 v4, 0x4

    if-eqz v16, :cond_7b

    if-ne v15, v1, :cond_7b

    invoke-virtual {v13, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_7b
    :goto_49
    move/from16 v0, v33

    move/from16 v16, v35

    const/4 v2, -0x1

    :goto_4a
    add-int/lit8 v5, v8, -0x1

    move-object/from16 v8, p1

    move v13, v1

    move v6, v3

    move v12, v4

    move v4, v5

    move-object v7, v14

    move-object/from16 v5, v34

    const/4 v14, 0x2

    goto/16 :goto_1b

    :cond_7c
    move-object v2, v3

    move-object/from16 v34, v5

    move v3, v6

    move-object v14, v7

    if-eqz v17, :cond_7e

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v0

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    aput v4, v5, v3

    const/4 v1, 0x2

    aput v0, v5, v1

    move v13, v6

    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v0

    if-ge v13, v0, :cond_7e

    invoke-virtual {v9, v13}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v4, "animation-background"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v4, "DefaultTransitionHandler"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v4, v0, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    goto :goto_4c

    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    :goto_4c
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/2addr v13, v3

    goto :goto_4b

    :cond_7e
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_7f
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v11}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/window/TransitionMetrics;->reportAnimationStart(Landroid/os/IBinder;)V

    invoke-virtual/range {v25 .. v25}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;->run()V

    return v3

    :cond_80
    move-object v1, v8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got a duplicate startAnimation call for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4e
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return v3
.end method

.method public final startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;)V
    .locals 13

    move-object v0, p0

    invoke-static/range {p2 .. p3}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v1

    new-instance v10, Lcom/android/wm/shell/transition/ScreenRotationAnimation;

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object/from16 v11, p3

    invoke-virtual {v11, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object v2, v10

    move-object v6, p1

    move-object v7, p2

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda9;

    move-object v2, v8

    move-object v3, v1

    move-object v4, v10

    move-object/from16 v5, p5

    move-object v6, v9

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda9;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_3

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [I

    if-eqz v3, :cond_1

    const v3, 0x7f010208

    aput v3, v5, v4

    const v3, 0x7f010207

    aput v3, v5, v12

    goto :goto_1

    :cond_1
    const v3, 0x7f010206

    aput v3, v5, v4

    const v3, 0x7f010205

    aput v3, v5, v12

    :goto_1
    move-object v3, v5

    goto :goto_2

    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_DISPLAY_CHANGE:Z

    if-eqz v5, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v5

    filled-new-array {v3, v5}, [I

    move-result-object v3

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    aget v7, v3, v4

    aget v11, v3, v12

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v2, v10

    move-object v3, v1

    move-object v4, v8

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda9;FLcom/android/wm/shell/common/ShellExecutor;II)Z

    goto :goto_3

    :cond_4
    iget v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    const/4 v11, -0x1

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v7, -0x1

    move-object v2, v10

    move-object v3, v1

    move-object v4, v8

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda9;FLcom/android/wm/shell/common/ShellExecutor;II)Z

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_4
    if-ltz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    return-void
.end method
