.class public Lcom/android/wm/shell/splitscreen/StageTaskListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public final mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

.field public final mChildrenLeashes:Landroid/util/SparseArray;

.field public final mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

.field public final mContext:Landroid/content/Context;

.field public mCornerRadiusForLeash:F

.field public mDimLayer:Landroid/view/SurfaceControl;

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public mRootLeash:Landroid/view/SurfaceControl;

.field public mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

.field public mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

.field public final mStageType:I

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mWindowDecorViewModel:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "I",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "I",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iput p9, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mStageType:I

    invoke-virtual {p2, p3, p9, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createStageRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method


# virtual methods
.method public final addToClosingTasks(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addToClosingTaskIds: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StageTaskListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final adjustChildTaskWindowingModeIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v1}, Landroid/window/WindowContainerTransaction;->orderedSetWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCornerRadiusForLeash:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCornerRadiusForLeash:F

    invoke-virtual {p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->findTaskSurface$3(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final contains(Ljava/util/function/Predicate;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final containsToken(Landroid/window/WindowContainerToken;)Z
    .locals 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final doForAllChildTasks(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Children list:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Task#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " taskID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " baseActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    if-eqz p0, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ClosingTaskIds="

    invoke-static {v1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x146cbb95ade635ebL    # 2.731179689322872E-210

    const/4 v5, 0x0

    const-string v6, "Evicting all children"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v4, v1}, Landroid/window/WindowContainerTransaction;->reparentFirst(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v4, v1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final evictChildren(Landroid/window/WindowContainerTransaction;I)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "Evict child: task=%d"

    const-wide v5, -0x3761bd48b02bc5f1L    # -6.590177193471851E41

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_1
    return-void
.end method

.method public final evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    const-string v10, "Evict invisible child: task=%d"

    const-wide v7, 0x1768724edab23b41L    # 6.540783899860311E-196

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x1e1024deec8c39f0L    # 7.00864770841428E-164

    const/4 v5, 0x0

    const-string v6, "evictNonOpeningChildren"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v3, :cond_1

    iget v2, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "Evict non-opening child: task=%d"

    const-wide v5, -0x58f639d9218eccf3L

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    int-to-long v4, p2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    const-string v10, "Evict other child: task=%d"

    const-wide v7, -0x539e849219ecfb4L

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final findTaskSurface$3(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getChildCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopChildTaskUid()I
    .locals 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopVisibleChildTaskId()I
    .locals 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final hasAppsEdgeActivityOnTop()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasChild()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFocused()Z
    .locals 2

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final isMultiWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onResized(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;)V

    :cond_0
    return-void
.end method

.method public final onSplitLayoutChangeRequested(Lcom/samsung/android/multiwindow/TaskOrganizerInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onSplitLayoutChangeRequested(Lcom/samsung/android/multiwindow/TaskOrganizerInfo;)V

    return-void
.end method

.method public final onSplitPairUpdateRequested()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda46;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda46;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public final onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {p1, v1, p2, v2}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v3

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    int-to-long v7, v3

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v9, v3

    goto :goto_0

    :cond_0
    const-wide/16 v9, -0x1

    :goto_0
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7, v3}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x15

    const-string v15, "onTaskAppeared: taskId=%d taskParent=%d rootTask=%d taskActivity=%s"

    const-wide v12, -0x3f48265386aac26aL    # -6105.6737263942105

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    if-nez v3, :cond_3

    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCornerRadiusForLeash:F

    :cond_2
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v1, Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/wm/shell/common/split/SplitDecorManager;-><init>(Landroid/content/res/Configuration;Lcom/android/launcher3/icons/IconProvider;Landroid/view/SurfaceSession;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    check-cast v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean v6, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    new-instance v1, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    invoke-virtual {v5, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto/16 :goto_3

    :cond_3
    iget v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v8, v3, :cond_d

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v8, v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->put(ILjava/lang/Object;)V

    iget-boolean v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v8, :cond_4

    iget-boolean v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_1

    :cond_4
    move v8, v4

    :goto_1
    check-cast v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onChildTaskStatusChanged(IZZ)V

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v8, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_5
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->postDividerPanelAutoOpenIfNeeded()V

    :cond_6
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->verifyFlexPanelStateIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_7
    iget-boolean v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v8, :cond_8

    iget-object v8, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v7, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v10, 0x1f4

    check-cast v8, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_8
    sget-boolean v8, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v8, :cond_9

    return-void

    :cond_9
    iget-object v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    new-instance v9, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda9;

    invoke-direct {v9, v2, v1, v8, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda9;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Z)V

    invoke-virtual {v5, v9}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne v7, v2, :cond_a

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    int-to-long v8, v3

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x7

    const-string v14, "onChildTaskAppeared: isMainStage=%b task=%d"

    const-wide v11, 0x382e5b2660c33c6dL    # 4.460421300428441E-38

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne v7, v2, :cond_c

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v5, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v5, :cond_c

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v2, v5, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2, v5, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    :goto_3
    return-void

    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n Unknown task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n mRootTaskInfo: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "onTaskInfoChanged: taskId=%d taskAct=%s"

    const-wide v5, 0x429089a2eeba3388L    # 4.545832529548883E12

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda4;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-ne v2, v3, :cond_3

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto/16 :goto_2

    :cond_3
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne v0, v2, :cond_d

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->put(ILjava/lang/Object;)V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {v2, v0, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onChildTaskStatusChanged(IZZ)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    new-instance v5, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0, p1, v3, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda9;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Z)V

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->postDividerPanelAutoOpenIfNeeded()V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->verifyFlexPanelStateIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_9
    :goto_2
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    return-void

    :cond_b
    :goto_3
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_c

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, p0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x1

    const-string v7, "onTaskInfoChanged: task=%d no longer supports multiwindow"

    const-wide v4, -0x1948808932ec375L    # -9.197769329424337E300

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onNoLongerSupportMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const-string v8, "onTaskVanished: task=%d"

    const-wide v5, -0xeaa02904279c1e6L    # -8.949557241291704E237

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mWindowDecorViewModel:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda4;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    if-ne v2, v0, :cond_1

    check-cast v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object p1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    new-instance p1, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->remove(I)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    check-cast v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onChildTaskStatusChanged(IZZ)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reparentAllChildren(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->findTaskSurface$3(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final sendStatusChanged()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-nez v5, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eq v5, v2, :cond_d

    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v2, v2, v3

    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v13

    const/4 v11, 0x3

    const-string v12, "onStageHasChildrenChanged: isMainStage=%b"

    const-wide v9, -0x2e11c1a74939cc3bL    # -4.7002549293683027E86

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object v8, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    if-ne v0, v8, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    iget-object v10, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-nez v2, :cond_9

    iget-boolean v11, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    if-nez v11, :cond_9

    iget-boolean v11, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v11, :cond_9

    const/4 v2, 0x2

    if-eqz v9, :cond_6

    iget-boolean v11, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v11, :cond_6

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v11, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v11, v4, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v3

    :goto_3
    invoke-virtual {v9, v2, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(IZ)V

    goto :goto_5

    :cond_6
    if-nez v9, :cond_8

    iget-boolean v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v9, :cond_8

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v11, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-eq v11, v4, :cond_7

    move v11, v4

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    invoke-virtual {v9, v2, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(IZ)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v9, :cond_a

    invoke-virtual {v7, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    goto :goto_5

    :cond_9
    if-eqz v9, :cond_a

    if-eqz v2, :cond_a

    iget-boolean v2, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v2, :cond_a

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;)V

    iget-object v9, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v9, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v11, 0x6

    invoke-direct {v2, v7, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_a
    :goto_5
    iget-boolean v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    if-eqz v2, :cond_d

    iput-boolean v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    iget-object v11, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iget-object v2, v11, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    iget-object v2, v11, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iput-object v6, v11, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    iput v4, v11, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    :goto_6
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    move-result v12

    iget v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v13

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v14

    iget v15, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    move-result v16

    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    move/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    :cond_d
    :goto_7
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eq v2, v1, :cond_12

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eq v1, v0, :cond_f

    goto :goto_9

    :cond_f
    if-nez v1, :cond_10

    iget-boolean v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExitSplitScreenOnHide:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    invoke-virtual {v7, v6, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    goto :goto_9

    :cond_10
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-nez v1, :cond_11

    iget-object v3, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v7, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_8

    :cond_11
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    iget-object v4, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v4, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v7, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    :goto_8
    iget-object v3, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v7, v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_12

    if-ne v1, v2, :cond_12

    invoke-virtual {v7, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_12
    :goto_9
    return-void
.end method

.method public final verifyFlexPanelStateIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mStageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isKeepFlexPanelTask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setExitSplitScreenStageType(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->onSplitLayoutChangeRequested(Lcom/samsung/android/multiwindow/TaskOrganizerInfo;)V

    :cond_1
    return-void
.end method
