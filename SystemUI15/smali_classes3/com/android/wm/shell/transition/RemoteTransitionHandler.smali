.class public final Lcom/android/wm/shell/transition/RemoteTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final SUPPORT_MINIMIZE_REMOTE_TRANSITION:Z


# instance fields
.field public mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mDeathHandlers:Landroid/util/ArrayMap;

.field public final mFilters:Ljava/util/ArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mRequestedInfoList:Landroid/util/ArrayMap;

.field public final mRequestedRemotes:Landroid/util/ArrayMap;

.field public final mTakeoverFilters:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.mt.debug.minimize_remote_transition"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->SUPPORT_MINIMIZE_REMOTE_TRANSITION:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mTakeoverFilters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-interface {p1}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "android.window.IRemoteTransition"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static dumpRemote(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/window/RemoteTransition;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static mergeAnimationIfNeeded(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p2, p0, p0}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const-string p0, "RemoteTransitionHandler"

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget p0, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mUsers:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mUsers:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 9

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result p0

    int-to-long v1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x444c0a017ef633e0L    # 1.0344596621502416E21

    const/4 v6, 0x1

    const-string v7, "RemoteTransition directly requested for (#%d) %s: %s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v1, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/window/RemoteTransition;

    if-nez v11, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v12, 0x1

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x2b7d128bb0b6c401L    # -1.2937284552874686E99

    const/4 v5, 0x0

    const-string v6, "   Merge into remote: %s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v11}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v13

    if-nez v13, :cond_2

    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v1, :cond_3

    iget-object v1, v9, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    move-object v4, v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    new-instance v15, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/TransitionInfo;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :try_start_0
    invoke-static {v9, v13}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    if-ne v3, v9, :cond_4

    move-object v2, v8

    goto :goto_1

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v1

    move-object v2, v1

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo;

    if-eqz v1, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    const/high16 v6, 0x1000000

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    const/4 v5, 0x0

    move v7, v5

    :goto_2
    if-ltz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v16

    if-eqz v16, :cond_9

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v14, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    :cond_7
    add-int/lit8 v4, v4, -0x1

    const/high16 v6, 0x1000000

    goto :goto_2

    :cond_8
    if-ne v5, v7, :cond_9

    if-lez v5, :cond_9

    goto :goto_7

    :cond_9
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    const/4 v14, 0x0

    :goto_4
    if-ltz v4, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskIdForActivity()I

    move-result v7

    const/4 v6, -0x1

    if-ne v7, v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_c

    :cond_b
    :goto_5
    move-object/from16 v4, p1

    goto :goto_6

    :cond_c
    if-nez v14, :cond_d

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->getMergeableTasks(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v14, v6

    :cond_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda0;-><init>(Landroid/window/TransitionInfo$Change;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :goto_6
    invoke-virtual {v0, v4, v11, v8, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->prepareMergeOrTransferAnimationIfNeeded(Landroid/os/IBinder;Landroid/window/RemoteTransition;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_e
    :goto_7
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_f

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "   Merge translucent, activity only transit into remote: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x479e6ee5a139ce3eL    # -4.129936860720014E-37

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    invoke-static {v8, v9, v15}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mergeAnimationIfNeeded(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;)V

    return-void

    :cond_10
    move-object/from16 v4, p1

    :goto_8
    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object v5, v15

    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :goto_9
    const-string v1, "ShellTransitions"

    const-string v2, "Error attempting to merge remote transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/RemoteTransition;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/window/IRemoteTransition;->onTransitionConsumed(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionHandler"

    const-string p2, "Error delegating onTransitionConsumed()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final prepareMergeOrTransferAnimationIfNeeded(Landroid/os/IBinder;Landroid/window/RemoteTransition;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getRemoteAppThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getRemoteAppThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->setCanTransferAnimation()V

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/RemoteTransition;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x0

    const-string v4, "findRemoteTransition, Request to merge transit=%s"

    const-wide v1, -0x572f404d85c2ce2eL    # -4.352770421230073E-112

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_6

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x0

    const-string v7, "findRemoteTransition, Checking filter %s"

    const-wide v4, 0x79824469b62634d0L    # 2.023852752260107E277

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/window/TransitionFilter;

    invoke-virtual {v2, p3}, Landroid/window/TransitionFilter;->matches(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "findRemoteTransition, Found filter"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteTransitionHandler"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/window/RemoteTransition;

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eq p0, p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p4}, Lcom/android/wm/shell/shared/TransitionUtil;->getMergeableTasks(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p3}, Lcom/android/wm/shell/shared/TransitionUtil;->getMergeableTasks(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eq p2, p4, :cond_8

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_b

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz p4, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {p4, v0}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->setCanMergeAnimation()V

    :cond_c
    :goto_4
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    const-string v11, "RemoteTransitionHandler"

    const/4 v12, 0x1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->SUPPORT_MINIMIZE_REMOTE_TRANSITION:Z

    if-nez v1, :cond_5

    invoke-static {v0, v12}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAnimation: skipped by minimize, transit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimizeChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v2

    :cond_5
    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/RemoteTransition;

    if-nez v1, :cond_8

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v12

    if-eqz v3, :cond_6

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v18

    const-wide v14, -0x7eee008d456bca0aL

    const/16 v16, 0x0

    const-string v17, "Transition doesn\'t have explicit remote, search filters for match for %s"

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v3, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    :goto_2
    if-ltz v3, :cond_8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v12

    if-eqz v4, :cond_7

    iget-object v4, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v18

    const-wide v14, 0x68cbc3b9975533aaL    # 6.485714616210739E196

    const/16 v16, 0x0

    const-string v17, " Checking filter %s"

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v4, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/TransitionFilter;

    invoke-virtual {v4, v0}, Landroid/window/TransitionFilter;->matches(Landroid/window/TransitionInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Found filter"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/window/RemoteTransition;

    iget-object v3, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object v13, v1

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :goto_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v19

    const/16 v17, 0x1

    const-string v18, " Delegate animation for (#%d) to %s"

    const-wide v15, -0xd49994f1db0c790L    # -3.823900204409804E244

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    if-nez v13, :cond_b

    return v2

    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_c

    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-instance v14, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;)V

    invoke-virtual {v13}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-ne v1, v9, :cond_d

    move-object v2, v0

    goto :goto_4

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v2

    :goto_4
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    :goto_5
    if-ltz v3, :cond_10

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v5, :cond_e

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v5, :cond_f

    iget-object v5, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    invoke-static {v11, v4, v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildForceHideAnimationIfNeeded(Ljava/lang/String;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/transition/MultiTaskingTransitions;)Z

    move-result v5

    if-eqz v5, :cond_f

    :goto_6
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v12

    if-eqz v5, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v19, " Excluded change from remote targets at (#%d), change=%s"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v20

    const-wide v16, 0x7c7f2a2e3fe333f3L    # 4.8593672371400994E291

    const/16 v18, 0x1

    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_f
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v13}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    invoke-virtual {v13}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v0

    invoke-interface {v0, v8, v2, v1, v14}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->clear()V

    invoke-virtual {v13}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    const-string v2, "ShellTransitions"

    const-string v3, "Error running remote transition."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eq v1, v9, :cond_11

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v13}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v10}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_12

    iget-object v0, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedInfoList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    new-instance v0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v10, v1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    return v12
.end method

.method public final unhandleDeath(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget p2, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mUsers:I

    add-int/lit8 p2, p2, -0x1

    iput p2, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mUsers:I

    if-nez p2, :cond_3

    iget-object p2, v1, Lcom/android/wm/shell/transition/RemoteTransitionHandler$RemoteDeathHandler;->mPendingFinishCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mDeathHandlers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unhandling death for binder that still has pending finishCallback(s)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
