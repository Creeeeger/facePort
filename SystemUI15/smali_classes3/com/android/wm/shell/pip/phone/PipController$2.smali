.class public final Lcom/android/wm/shell/pip/phone/PipController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPinned(ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x5dd8e5ddc4c513L

    const/4 v4, 0x0

    const-string v5, "onActivityPinned: %s"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iput-boolean v2, v3, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v2, v3, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentAdded(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object v0, p1, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->registerInputConsumer()V

    return-void
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x1d3145e78009ca05L    # -9.059554935132418E167

    const/4 v5, 0x0

    const-string v6, "onActivityRestartAttempt: %s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v6, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v6, v4, :cond_2

    iget-boolean v3, v3, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "PipTaskOrganizer"

    const-string v3, "onActivityRestartAttempt: force exit pip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->cancelCurrentAnimator()V

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-eq v0, v5, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const-string v5, "onActivityRestartAttempt: Skip expandLeavePip, t #"

    const-string v6, "PipController"

    if-ne v3, v2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason=exit_before_enterAnimation"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-boolean v7, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    if-eqz v7, :cond_5

    if-ne v3, v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason=entering_with_fixed_rot"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-boolean v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason=entering_with_SwipePipToHomeTransition"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isLaunchToSplit(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip$1(ZZ)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip$1(ZZ)V

    :goto_0
    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 9

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/common/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x54313d982fd437e2L    # 3.6825705432387215E97

    const/4 v6, 0x0

    const-string v7, "onActivityUnpinned: %s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDismissButtonView:Lcom/android/wm/shell/pip/phone/PipDismissButtonView;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v3, v0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissViewManager;->cleanUpDismissTarget()V

    :cond_1
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v3, v3, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener$mAppOpsChangedListener$1;

    invoke-virtual {v1, v0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->destroyInputConsumer(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "PipInputConsumer"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v4, 0x0

    const-string v5, "%s: Failed to destroy input consumer, %s"

    const-wide v2, -0x24d763805ca3c963L    # -1.364781366284579E131

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
