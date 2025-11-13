.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# static fields
.field public static final EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I


# instance fields
.field public final mAppBounds:Landroid/graphics/Rect;

.field public final mContext:Landroid/content/Context;

.field public final mCrossFadeAnimationDuration:I

.field public mCurrentRotation:I

.field public mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mEnterAnimationDuration:I

.field public final mExitAnimationDuration:I

.field public mHasFadeOut:Z

.field public mIsInSecureFolder:Z

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNeedToCheckRotation:Z

.field public mNextRotation:I

.field public mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

.field public mPictureInPictureParams:Landroid/app/PictureInPictureParams;

.field public final mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

.field public final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

.field public final mPipLogHistory:Ljava/util/LinkedList;

.field public final mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

.field public mPipOverlay:Landroid/view/SurfaceControl;

.field public final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public final mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

.field final mPipTransitionCallback:Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

.field public final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public final mPipUiEventLoggerLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

.field public mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field public final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field public mSwipeSourceRectHint:Landroid/graphics/Rect;

.field public mSwipingPipTaskId:I

.field public final mSwipingPipTimeout:Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

.field public final mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public mTaskVanishedCallback:Ljava/util/function/Consumer;

.field public final mTmpFloat9:[F

.field public mToken:Landroid/window/WindowContainerToken;

.field public mWaitForFixedRotation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.extra_content_overlay_fade_out_delay_ms"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/common/pip/PipMenuController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/pip/PipPerfHintController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p10

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v6, 0x9

    new-array v6, v6, [F

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTmpFloat9:[F

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipLogHistory:Ljava/util/LinkedList;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNeedToCheckRotation:Z

    new-instance v6, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipingPipTimeout:Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipingPipTaskId:I

    new-instance v6, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    new-instance v6, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionCallback:Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

    new-instance v7, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    invoke-direct {v7, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    move-object v7, p1

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    move-object v8, p2

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    move-object v8, p5

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCrossFadeAnimationDuration:I

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    new-instance v7, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-direct {v7}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;-><init>()V

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    const/4 v7, 0x0

    move-object/from16 v8, p13

    invoke-virtual {v8, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V

    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    iput-object v0, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v5, p14

    invoke-virtual {v5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v3, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iget-object v0, v4, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-object v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    return-void
.end method

.method public static isHomeVisible()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move/from16 v13, p4

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v14, "PipTaskOrganizer"

    const/4 v15, 0x3

    const/16 v16, 0x0

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, p3

    invoke-static {v1, v12}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->isSourceRectHintValidForEnterPip(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v1, v16

    goto :goto_0

    :cond_1
    move-object/from16 v1, p3

    :cond_2
    :goto_0
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    iget v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    invoke-static {v2, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v2

    move v11, v2

    goto :goto_1

    :cond_3
    move v11, v3

    :goto_1
    iget-object v10, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v11, :cond_5

    const/4 v2, 0x2

    if-ne v13, v2, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object v2, v9, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    invoke-static {v12, v2, v4, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    if-ne v11, v15, :cond_5

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_4
    if-ne v13, v15, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v9, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v2, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :cond_5
    :goto_2
    move-object v8, v1

    const/4 v1, 0x6

    if-ne v13, v1, :cond_6

    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v4, v1

    goto :goto_3

    :cond_6
    move-object/from16 v4, p1

    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_4

    :cond_7
    move/from16 v17, v3

    :goto_4
    if-eqz v17, :cond_8

    iget-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    move-object v7, v2

    goto :goto_5

    :cond_8
    move-object/from16 v7, v16

    :goto_5
    iget-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v3

    :cond_9
    move/from16 v18, v3

    if-eqz v17, :cond_a

    invoke-static/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v10}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v19

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v15, v7

    move-object v7, v8

    move-object v12, v8

    move/from16 v8, p4

    move-object/from16 v20, v9

    move/from16 v9, p6

    move-object/from16 v21, v10

    move v10, v11

    move/from16 v22, v11

    move-object/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFILandroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    iput-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    move/from16 v2, p5

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    if-nez v17, :cond_b

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    :cond_b
    if-eqz v17, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "animateResizePip: existingAnimatorRunning, existingAnimatorCallback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_c

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    :cond_d
    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v12, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    move-object/from16 v3, v20

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mLauncherState:Lcom/android/wm/shell/common/pip/PipBoundsState$LauncherState;

    iget v6, v3, Lcom/android/wm/shell/common/pip/PipBoundsState$LauncherState;->mAppIconSizePx:I

    new-instance v8, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;

    new-instance v3, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v3, v2}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    goto :goto_6

    :cond_e
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x505196c6d45c38f4L    # 8.14665498278892E78

    const/4 v5, 0x0

    const-string v6, "%s: TaskInfo.topActivityInfo is null"

    move-object/from16 p1, v1

    move-wide/from16 p2, v3

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    invoke-static {v1}, Lcom/android/wm/shell/common/pip/PipUtils;->getTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v2, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;

    invoke-direct {v2, v1, v12}, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;-><init>(Landroid/window/TaskSnapshot;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    :cond_11
    :goto_6
    iget-object v1, v7, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    if-nez v1, :cond_12

    move-object/from16 v1, v16

    goto :goto_7

    :cond_12
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    :goto_7
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v22, :cond_13

    invoke-virtual/range {v21 .. v21}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    :cond_13
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    return-object v7

    :cond_14
    :goto_8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x45977d68f2aa35d7L    # 1.8174416389584988E27

    const/4 v4, 0x0

    const-string v5, "%s: Abort animation, invalid leash"

    move-object/from16 p0, v0

    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    return-object v16
.end method

.method public final applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda9;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public final applyFinishBoundsResize(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ZLandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void
.end method

.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final cancelCurrentAnimator()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    :cond_0
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBackgroundColorApplied:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    const-string v2, "PipTaskOrganizer"

    const-string v4, "cancelCurrentAnimator unsetColor, mBackgroundColorApplied"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBackgroundColorApplied:Z

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p0}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->quietCancel(Landroid/animation/ValueAnimator;)V

    iput-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    :cond_2
    return-void
.end method

.method public final clearStashDimOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipContentOverlay;->detach(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    :cond_0
    return-void
.end method

.method public final createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v3, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v3}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createFinishResizeSurfaceTransaction: destination="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getDebuggingString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Callers="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    const-string p1, "PipTaskOrganizer"

    invoke-static {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTaskOrganizer"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mTaskInfo="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mToken="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLeash="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPipOverlay="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mState="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v3, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mPictureInPictureParams="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p2, p1, v1}, Lcom/android/wm/shell/pip/PipTransitionController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz p2, :cond_1

    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PipPerfHintController"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "activeSessionCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->sActiveSessions:Ljava/util/Map;

    check-cast p2, Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-wide v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mTaskAppearedTime:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    const-string p2, "mTaskAppearedTime="

    invoke-static {v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string p2, "mPipLogHistory="

    invoke-static {v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipLogHistory:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final exitPip(IZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v4, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v4}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v4

    const-string v5, "PipTaskOrganizer"

    const/4 v6, 0x5

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eq v4, v6, :cond_22

    iget-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v7, :cond_0

    goto/16 :goto_12

    :cond_0
    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    iget-object v10, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-nez v4, :cond_2

    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;IZ)V

    invoke-virtual {v10, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->end(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;)V

    return-void

    :cond_2
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4, v11}, [Ljava/lang/Object;

    move-result-object v17

    const-wide v13, 0xadb32968ed03ca4L

    const/4 v15, 0x0

    const-string v16, "exitPip: %s, state=%s"

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    move v11, v8

    :goto_1
    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v13, 0x0

    if-eqz v11, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    invoke-virtual {v4, v1, v13}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v12, v4}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    return-void

    :cond_5
    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v11, :cond_7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x205347e5777b352cL    # 5.752124503894834E-153

    const/4 v4, 0x0

    const-string v5, "exitPip: leash is null"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    new-instance v11, Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v15, v14, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v15, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v15}, Ljava/util/Optional;->isEmpty()Z

    move-result v15

    const/4 v7, -0x1

    if-eqz v15, :cond_8

    goto :goto_4

    :cond_8
    iget-object v15, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v15}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    if-lez v6, :cond_9

    invoke-virtual {v15, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitPosition(I)I

    move-result v6

    goto :goto_2

    :cond_9
    move v6, v7

    :goto_2
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v18, :cond_a

    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {v15, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageOfTask(I)I

    move-result v13

    goto :goto_3

    :cond_a
    move v13, v7

    :goto_3
    if-ne v6, v7, :cond_c

    if-nez v2, :cond_c

    if-eqz v18, :cond_b

    if-eq v13, v7, :cond_b

    invoke-virtual {v15}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v19

    if-nez v19, :cond_c

    :cond_b
    :goto_4
    const/4 v6, 0x3

    goto :goto_9

    :cond_c
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v8, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v2, :cond_f

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_5

    :cond_d
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result v6

    if-nez v6, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    move-object v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_f
    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    move-object v8, v9

    :goto_7
    invoke-virtual {v11, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v18, :cond_11

    if-eq v13, v7, :cond_11

    invoke-virtual {v15, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_11
    :goto_8
    const/4 v6, 0x4

    :goto_9
    if-eqz v2, :cond_12

    const/4 v8, 0x4

    if-ne v6, v8, :cond_12

    invoke-static {}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isHomeVisible()Z

    move-result v21

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v25}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onPipToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V

    return-void

    :cond_12
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v8, :cond_16

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_16

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    if-ne v9, v7, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v12, v9}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "syncWithFreeformTaskBounds: invalid bounds, "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_15
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "syncWithFreeformTaskBounds: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", lastParent t#"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", exitingPip t#"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v9, v5, v13}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v9, 0x1

    goto :goto_b

    :cond_16
    :goto_a
    const/4 v9, 0x0

    :goto_b
    sget-boolean v12, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v12, :cond_17

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :goto_c
    const/4 v5, 0x5

    goto/16 :goto_10

    :cond_17
    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_18

    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v25

    const-wide v21, 0x6a02591a6af43c1bL    # 4.494250087484038E202

    const/16 v23, 0x0

    const-string v24, "exitPip: %s, dest=%s"

    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v12, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    if-eqz v8, :cond_19

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_19

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "exitPip: pipBounds="

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", destinationBounds="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v12, v5, v11, v11}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_19
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v13, v12, v5, v11, v7}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_d
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v12, v5, v7, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    if-eqz v8, :cond_1a

    if-eqz v9, :cond_1a

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v7}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_e

    :cond_1a
    const/4 v5, 0x4

    if-ne v6, v5, :cond_1b

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v7, 0x6

    invoke-virtual {v4, v5, v7}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :goto_e
    const/4 v9, 0x0

    goto :goto_f

    :cond_1b
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move v9, v7

    :goto_f
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v5, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v5, v12}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    move v12, v9

    goto/16 :goto_c

    :goto_10
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_20

    if-eqz v2, :cond_1c

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onPipExpandToSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/16 v0, 0x3ea

    invoke-virtual {v10, v0, v4, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    return-void

    :cond_1c
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x4

    if-ne v6, v2, :cond_1d

    goto :goto_11

    :cond_1d
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageOfTask(I)I

    move-result v0

    invoke-virtual {v1, v0, v5, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->prepareExitSplitScreen(IILandroid/window/WindowContainerTransaction;)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v12, :cond_1f

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSplitInvisible()V

    :cond_1f
    :goto_11
    const/16 v0, 0x3e9

    invoke-virtual {v10, v0, v4, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    return-void

    :cond_20
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    :cond_21
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v11, v6, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void

    :cond_22
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not allowed to exitPip in current state mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLeash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_23

    iget v1, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    int-to-long v1, v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v5, v1, v0}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x4

    const-string v10, "%s: Not allowed to exitPip in current state mState=%d mToken=%s"

    const-wide v7, 0x2e79bca327f033b6L    # 8.280124531938963E-85

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public final fadeExistingPip(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    if-eqz p1, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    :goto_2
    int-to-long v2, v2

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    return-void

    :cond_4
    :goto_4
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTaskOrganizer"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x2db71bb3d1bbc1c8L    # -2.4758528565118745E88

    const/4 v3, 0x0

    const-string v4, "%s: Invalid leash on fadeExistingPip: %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;ZI)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCrossFadeAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, -0x1

    if-eq p3, p0, :cond_1

    int-to-long p0, p3

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-wide/16 p0, 0x1f4

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    int-to-long p0, p0

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finishResize(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishResize destinationBounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    const-string v3, " Callers="

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xa

    const-string v3, "PipTaskOrganizer"

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x0

    const-string/jumbo v9, "removePipImmediately: %s, state=%s"

    const-wide v6, -0x27330decad25cf3cL    # -5.839436801919321E119

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    const/16 p3, 0x3eb

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 p1, 0x2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x0

    const-string v8, "%s: Failed to remove PiP, %s"

    const-wide v5, -0x5505ee1ae94bcfd1L    # -1.163967543935471E-101

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-ne p2, v3, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void

    :cond_4
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const/4 v1, 0x7

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-eq p1, v1, :cond_5

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isSeamlessResizeEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p4, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const v3, 0x7ffffffd

    invoke-static {v1, v2, v2, v0, v3}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v5, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v1, v0, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(ILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    move-result v0

    if-nez v0, :cond_9

    move v4, v3

    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(ILandroid/window/WindowContainerTransaction;Z)V

    if-ne p1, v2, :cond_a

    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda9;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_a
    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final finishResizeForMenu(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {p0, p1, v0, v0}, Lcom/android/wm/shell/common/pip/PipMenuController;->movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getDebuggingString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PipTaskOrganizer{mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v2, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTaskInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TaskInfo(taskId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const-string v4, ")"

    invoke-static {v2, v3, v4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLeash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mWaitForFixedRotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inSwipePipToHome="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureInPictureParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isInPip()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result p0

    return p0
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    return-void
.end method

.method public final onEndOfSwipePipToHomeTransition()V
    .locals 6

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v5

    invoke-virtual {v4, v3, v5, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final onExitPipFinished(Landroid/app/TaskInfo;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v8, "onExitPipFinished: %s, state=%s leash=%s"

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x6337f4f4d95e3fa8L    # 9.041229361064701E169

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;Z)V

    return-void
.end method

.method public final onExitPipFinished(Landroid/app/TaskInfo;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const-string v2, "PipTaskOrganizer"

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v3, 0x3

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v5, 0x2ac71dc0827d3f84L

    const/4 v7, 0x0

    const-string v8, "Warning, onExitPipFinished() called multiple times in the same session"

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v0, v3, :cond_1

    const-string v0, "onExitPipFinished: Re-set the PIP state"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    :cond_3
    iget v4, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v5, 0x0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v4, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_6
    :goto_1
    iput-boolean v0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {v1}, Lcom/android/wm/shell/common/pip/PipMenuController;->detach()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "onExitPipFinished:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getDebuggingString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mIsInSecureFolder:Z

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->clearStashDimOverlay()V

    invoke-virtual {v4, v0, p2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez p2, :cond_8

    return-void

    :cond_8
    iget-boolean p2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz p2, :cond_a

    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_a

    :cond_9
    iget p2, p1, Landroid/app/TaskInfo;->displayId:I

    if-eqz p2, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "onExitPipFinished: reset surface state with WCT"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast p2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTmpFloat9:[F

    invoke-virtual {p2, v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    const-string v1, "ResetPip"

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, p2}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_b
    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p1, :cond_c

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget p1, p1, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p0, :cond_d

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 9

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x77e995c5f1173b26L    # 4.2238883874797275E269

    const/4 v6, 0x0

    const-string v7, "onFixedRotationFinished: %s, state=%s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onFixedRotationFinished: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getDebuggingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PipTaskOrganizer"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    if-eq p1, v1, :cond_2

    iput-boolean v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNeedToCheckRotation:Z

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTransitionController;->onFixedRotationFinished()V

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_3
    iget p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne p1, v3, :cond_5

    iget-boolean p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v3, v1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda13;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Object;I)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    :cond_7
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 9

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x4f2ac7f1c9dc9e5L    # -5.451066699096333E284

    const/4 v6, 0x0

    const-string v7, "onFixedRotationStarted: %s, state=%s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNeedToCheckRotation:Z

    const-string p1, "onFixedRotationStarted: rot="

    const-string v2, ", "

    invoke-static {p2, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getDebuggingString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PipTaskOrganizer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTransitionController;->onFixedRotationStarted()V

    return-void

    :cond_1
    iget p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    :cond_2
    return-void
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Requires RunningTaskInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v6, v5, v3, v4, v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    invoke-virtual {v5, v3, v4}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifyActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :goto_0
    iget-object v3, v5, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/phone/PipController$3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :goto_2
    iget-object v3, v5, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/phone/PipController$3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget v5, v5, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayId:I

    if-eq v3, v5, :cond_4

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz v5, :cond_4

    invoke-interface {v5, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_4
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    goto :goto_4

    :cond_5
    iget-boolean v3, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3, v5, v9}, [Ljava/lang/Object;

    move-result-object v15

    const-wide v11, 0x2dd96577664739f1L    # 7.979076560163251E-88

    const/4 v13, 0x0

    const-string v14, "onTaskAppeared: %s, state=%s, taskId=%s"

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onTaskAppeared: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getDebuggingString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PipTaskOrganizer"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipLogHistory:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_8

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipLogHistory:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_8
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipLogHistory:Ljava/util/LinkedList;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\n\n("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mIsInSecureFolder:Z

    invoke-virtual {v6, v4, v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setStashed(IZ)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    const-string v6, "appeared"

    invoke-virtual {v0, v3, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setSwipingPipTaskId(ILjava/lang/String;)V

    :cond_9
    iget-boolean v3, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v3, :cond_c

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    goto :goto_5

    :cond_a
    const-string v0, "Defer onTaskAppeared-SwipePipToHome until end of fixed rotation."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_b

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v7, -0x38944bbd2e3dc1ccL    # -1.150785143080128E36

    const/4 v9, 0x0

    const-string v10, "%s: Defer onTaskAppeared-SwipePipToHome until end of fixed rotation."

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget v6, v3, Lcom/android/wm/shell/pip/PipAnimationController;->mOneShotAnimationType:I

    if-ne v6, v2, :cond_e

    iput v4, v3, Lcom/android/wm/shell/pip/PipAnimationController;->mOneShotAnimationType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/android/wm/shell/pip/PipAnimationController;->mLastOneShotAlphaAnimationTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x320

    cmp-long v3, v9, v11

    if-lez v3, :cond_e

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_d

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v13, "Alpha animation is expired. Use bounds animation."

    const/4 v14, 0x0

    const-wide v10, -0x3b3b47cb6414cacdL    # -1.956906428981611E23

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    move v6, v4

    :cond_e
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_f

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->setEnterAnimationType(I)V

    return-void

    :cond_f
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    const/4 v9, 0x3

    if-eqz v3, :cond_13

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v10, v6

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v1, v3, v10}, [Ljava/lang/Object;

    move-result-object v17

    const-string v16, "onTaskAppearedWithFixedRotation: %s, state=%s animationType=%d"

    const-wide v13, 0xf9b71b05af23e15L    # 1.726284306898995E-233

    const/16 v15, 0x10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-ne v6, v2, :cond_12

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_11

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x0

    const-string v10, "%s: Defer entering PiP alpha animation, fixed rotation is ongoing"

    const-wide v7, 0x18c2a8f4687f33f9L

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_6

    :cond_12
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v2, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x2

    iget v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    :goto_6
    return-void

    :cond_13
    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "Missing destination bounds"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v6, :cond_14

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v2, v5}, Lcom/android/wm/shell/common/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v1, v4}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget v10, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v3

    move v3, v6

    move-object v4, v5

    move v5, v7

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    goto :goto_7

    :cond_14
    if-ne v6, v2, :cond_15

    iget v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :goto_7
    return-void

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unrecognized animation type: "

    invoke-static {v6, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v4, "onTaskInfoChanged requires valid existing mToken"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v4, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v7, "PipTaskOrganizer"

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_0

    int-to-long v2, v4

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v13

    const/4 v11, 0x4

    const-string v12, "%s: Defer onTaskInfoChange in current state: %d"

    const-wide v9, 0x28719c26a6533c98L    # 7.150890605909048E-114

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v8, v4}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v4

    iget-object v9, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v9, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getOverrideMinSize()Landroid/util/Size;

    move-result-object v10

    invoke-static {v4, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v2

    iput-object v4, v9, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    if-eqz v10, :cond_2

    iget-object v4, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v5, v3, v9, v10}, [Ljava/lang/Object;

    move-result-object v16

    const-wide v12, 0xa5b9a1e38653af1L

    const/4 v14, 0x0

    const-string v15, "onTaskInfoChanged: %s, state=%s oldParams=%s newParams=%s"

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_14

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-nez v3, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-ne v3, v1, :cond_5

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onTaskInfoChanged: clear deferredTaskInfo, Callers="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v5, v7, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v4, v3}, Landroid/app/PictureInPictureParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onTaskInfoChanged: tid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldParams="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newParams="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v3

    sget-object v5, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled:Ljava/lang/Boolean;

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v1, v9, v11

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    if-lez v1, :cond_c

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v1

    iget v5, v8, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v5, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gtz v5, :cond_b

    iget v5, v8, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gtz v1, :cond_b

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v1

    iget-object v5, v3, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/pip/phone/PipController$3;

    iget-object v8, v7, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v9, v8, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v9, v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setAspectRatio(F)V

    iget-object v9, v8, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v11, v9, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    iget-object v12, v8, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v10, v12, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gtz v10, :cond_7

    iget v10, v12, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-static {v11, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gtz v10, :cond_7

    invoke-virtual {v12, v11, v13, v2, v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(FLandroid/graphics/Rect;ZZ)V

    :cond_7
    invoke-virtual {v9}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, v8, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    if-nez v9, :cond_a

    iget-object v9, v8, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget v11, v8, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    invoke-virtual {v9, v11, v6, v13}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(IILandroid/graphics/Rect;)V

    iget-object v8, v8, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v9, v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v9, :cond_9

    iget-object v11, v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    iget-object v11, v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object v11, v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Ljava/util/List;

    :goto_1
    iget-object v8, v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-virtual {v9, v13, v11, v8}, Lcom/android/wm/shell/pip/phone/PipMenuView;->setActions(Landroid/graphics/Rect;Ljava/util/List;Landroid/app/RemoteAction;)V

    :cond_9
    iget-object v8, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v8, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v9, v7, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/pip/phone/PipController;->updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_a
    iget-object v7, v10, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v7, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v7, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePipSizeConstraints(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_c

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v5

    float-to-double v8, v5

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v7, v1, v5}, [Ljava/lang/Object;

    move-result-object v15

    const-string v14, "%s: New aspect ratio is not valid. hasAspectRatio=%b aspectRatio=%f"

    const-wide v11, -0x154414b140bacb7bL    # -1.4005530378972223E206

    const/16 v13, 0x2c

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v5

    if-nez v1, :cond_d

    if-nez v5, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_12

    if-nez v5, :cond_e

    goto :goto_4

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_11

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/RemoteAction;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/RemoteAction;

    invoke-static {v8, v9}, Lcom/android/wm/shell/common/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_4

    :cond_10
    add-int/2addr v6, v2

    goto :goto_2

    :cond_11
    :goto_3
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/wm/shell/common/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_4
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifyActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V

    :cond_13
    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    :cond_14
    :goto_5
    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0xe0dfea62d2cc584L    # -7.503715368313218E240

    const/4 v6, 0x0

    const-string v7, "onTaskVanished: %s, state=%s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskVanishedCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget v0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v4, "Requires valid WindowContainerToken"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v5}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_5

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTaskOrganizer"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x60b52f1b7702c1bdL    # -6.103600138874695E-158

    const/4 v3, 0x0

    const-string v4, "%s: Unrecognized token: %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-nez v4, :cond_6

    iget v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    new-instance v4, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_6
    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->cancelCurrentAnimator()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;Z)V

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    move-object v3, v4

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->forceFinishTransition(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;)V

    :cond_8
    return-void
.end method

.method public final prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p1, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, v0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTaskOrganizer"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x491fe862519e383bL    # 1.7789165191289175E44

    const/4 v3, 0x0

    const-string v4, "%s: Invalid leash on prepareFinishResizeTransaction: %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x1abbc4e7647ce41L    # -3.39273574519445E300

    const/4 v8, 0x0

    const-string/jumbo v9, "removeContentOverlay: %s, state=%s, surface=%s"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeContentOverlay task="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " caller="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    const-string v4, "PipTaskOrganizer"

    invoke-static {v3, v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x77f1583c2e8c396dL    # 5.726933380128874E269

    const/4 v8, 0x0

    const-string v9, "%s: trying to remove overlay (%s) which is not local reference (%s)"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    iget v0, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-nez v0, :cond_4

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x606aa6c9fb3cc766L    # -1.554924235601959E-156

    const/4 v8, 0x0

    const-string v9, "%s: trying to remove overlay (%s) while in UNDEFINED state"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast p0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void

    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "trying to remove invalid content overlay surface="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x68bdcba3cc82ca4aL

    const/4 v8, 0x0

    const-string v9, "%s: trying to remove invalid content overlay (%s)"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final removePip()V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    iput-object v3, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, 0x6a125916017b3f82L    # 8.988467194797283E202

    const/4 v4, 0x0

    const-string/jumbo v5, "removePip: %s, state=%s"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Not allowed to removePip in current state mState="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PipTaskOrganizer"

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x4

    const-string v8, "%s: Not allowed to removePip in current state mState=%d mToken=%s mLeash=%s"

    const-wide v5, -0x588ad2a572d9c115L    # -1.312168160572574E-118

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final scheduleAnimateResizePip(IILandroid/graphics/Rect;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p0, "PipTaskOrganizer"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x319de4e337833f81L    # 1.0828452159732193E-69

    const/4 v3, 0x0

    const-string v4, "%s: skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p3

    move v6, p2

    move v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public final scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz p7, :cond_1

    invoke-interface {p7, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const-string v2, "PipTaskOrganizer"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "scheduleFinishResizePip: failed, leash is null, state="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget v3, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_4

    iget p0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    int-to-long p0, p0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v8

    const-string v7, "%s: scheduleFinishResizePip with null leash! mState=%d"

    const-wide v4, 0x39a09badff6301eL

    const/4 v6, 0x4

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x3

    const-string v2, "PipTaskOrganizer"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v1, v7, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, v7, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    move-object v1, v7

    move-object v2, v0

    move-object v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0, p3, p1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {p1}, Lcom/android/wm/shell/common/pip/PipMenuController;->isMenuVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, p2, v0, p0}, Lcom/android/wm/shell/common/pip/PipMenuController;->movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "Attempted to user resize PIP to or from empty bounds, aborting."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_5

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x32a2faa82d6ec9e8L    # -4.775397600697806E64

    const/4 v6, 0x0

    const-string v7, "%s: Attempted to user resize PIP to or from empty bounds, aborting."

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string p0, "Abort animation, invalid leash"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_7

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x45977d68f2aa35d7L    # 1.8174416389584988E27

    const/4 v6, 0x0

    const-string v7, "%s: Abort animation, invalid leash"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public sendOnPipTransitionFinished(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method public final setPipVisibility(Z)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x13a70f8316893761L    # 5.351599213491725E-214

    const/4 v6, 0x0

    const-string/jumbo v7, "setPipVisibility: %s, state=%s visible=%s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_5
    :goto_2
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTaskOrganizer"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x4876f5bec7cb3637L    # 1.2500581631889086E41

    const/4 v3, 0x0

    const-string v4, "%s: Invalid leash on setPipVisibility: %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final setStashDimOverlayAlpha(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->clearStashDimOverlay()V

    new-instance v0, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    const v1, 0x7f06056c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast v2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "PipTaskOrganizer"

    const-string v5, "attachDimOverlay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/graphics/Color;->alpha()F

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mStashDimOverlay:Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast p0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    return-void
.end method

.method public setSurfaceControlTransactionFactory(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-void
.end method

.method public final setSwipingPipTaskId(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipingPipTaskId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipingPipTaskId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSwipingPipTaskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PipTaskOrganizer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipingPipTimeout:Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final shouldShowSplitMenu()Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v3, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    move-result-object v3

    iget-object v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v2, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_7

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_6

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    if-eq v0, v2, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v1, :cond_5

    :cond_3
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v0, :cond_5

    :cond_4
    return v3

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsPipOnly:Z

    xor-int/2addr p0, v4

    return p0

    :cond_6
    return v3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PIP split menu does not show. estimatedSize w="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PipTaskOrganizer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final supportCompatUI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PipTaskOrganizer:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    const-string v0, "TASK_LISTENER_TYPE_PIP"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAnimatorBounds(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    invoke-static {v2, v1, v3, p0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method
