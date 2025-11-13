.class public final Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field public static final SHELL_TRANSITIONS_ROTATION:Z


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mHandlers:Ljava/util/ArrayList;

.field public final mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

.field public final mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

.field public mIsRegistered:Z

.field public final mKnownTransitions:Landroid/util/ArrayMap;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mObservers:Ljava/util/ArrayList;

.field public final mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mPendingTransitions:Ljava/util/ArrayList;

.field public final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field public final mReadyDuringSync:Ljava/util/ArrayList;

.field public mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

.field public final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final mRunWhenIdleQueue:Ljava/util/ArrayList;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

.field public final mTracks:Ljava/util/ArrayList;

.field public mTransitionAnimationScaleSetting:F

.field public final mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.wm.debug.shell_transit"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ShellTransitions"

    const-string v3, "Error getting system features"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_1

    const-string v2, "persist.wm.debug.shell_transit_rotate"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/HomeTransitionObserver;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v5, p8

    move-object/from16 v4, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;I)V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    new-instance v0, Lcom/android/wm/shell/transition/SleepHandler;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/SleepHandler;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    iput-boolean v1, v6, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v6, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    move-object/from16 v2, p5

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v2, p1

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    iput-object v5, v6, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object v4, v6, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p7

    iput-object v3, v6, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v7, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-direct {v7, v6, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;I)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    new-instance v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {v7, v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-object/from16 v2, p3

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object/from16 v2, p4

    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v8, 0x1

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_0

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v10, -0x557cf9dbb952c7aaL    # -6.635797692286788E-104

    const/4 v12, 0x0

    const-string v13, "addHandler: Default"

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_1

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v9, -0x21d1122a3a5bcd5eL

    const/4 v11, 0x0

    const-string v12, "addHandler: Remote"

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_2

    new-instance v8, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iget-object v2, v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    move-object v0, v8

    move-object v9, v1

    move-object v1, v2

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-object v10, v4

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;-><init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v8, v6, Lcom/android/wm/shell/transition/Transitions;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object v8, v9, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object v8, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object v10, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    goto :goto_0

    :cond_2
    move-object v9, v1

    move-object v10, v4

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_3

    new-instance v7, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    iput-object v7, v9, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/wm/shell/transition/DimTransitionProvider;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/DimTransitionProvider;-><init>()V

    iput-object v0, v9, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    :cond_4
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v6}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object/from16 v0, p12

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    invoke-static {}, Landroid/tracing/Flags;->perfettoTransitionTracing()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/tracing/PerfettoTransitionTracer;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/transition/HomeTransitionObserver;)V
    .locals 13

    new-instance v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-direct {v3}, Lcom/android/wm/shell/sysui/ShellCommandHandler;-><init>()V

    new-instance v11, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p7

    invoke-direct {v11, v8, p1, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;)V

    move-object v0, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/transition/Transitions;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/HomeTransitionObserver;)V

    return-void
.end method

.method public static calculateAnimLayer(Landroid/window/TransitionInfo$Change;III)I
    .locals 8

    add-int/lit8 v0, p2, 0x1

    invoke-static {p3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    invoke-static {p3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    neg-int p0, v0

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_1
    :goto_1
    neg-int p0, v0

    add-int/2addr p0, p2

    goto :goto_0

    :cond_2
    if-eq v3, v5, :cond_8

    if-ne v3, v6, :cond_3

    goto :goto_5

    :cond_3
    if-eq v3, v7, :cond_7

    const/4 p3, 0x4

    if-ne v3, p3, :cond_4

    goto :goto_4

    :cond_4
    if-nez v2, :cond_6

    invoke-static {p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/2addr v0, p2

    sub-int/2addr v0, p1

    return v0

    :cond_6
    :goto_3
    sub-int/2addr v0, p1

    return v0

    :cond_7
    :goto_4
    if-eqz v1, :cond_5

    sub-int/2addr v0, p1

    return v0

    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x450

    if-ne p3, v1, :cond_5

    invoke-static {p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_a
    sub-int/2addr v0, p1

    return v0
.end method

.method public static hasDuplicatedOpenTypeChanges(Landroid/window/TransitionInfo;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-le p0, v2, :cond_3

    const-string p0, "ShellTransitions"

    const-string v0, "duplicated split open changes in default transition"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    return v1
.end method

.method public static setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_1
    const-string p0, "ShellTransitions"

    const-string v0, "Unable to boost animation process. This should only happen during unit tests"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "addHandler: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x5e7fb9f0661a3d8cL    # 1.584665717496446E147

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected handler added prior to initialization, please use ShellInit callbacks to ensure proper ordering"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v5

    move v4, v3

    :goto_0
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v8, :cond_1

    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_2

    int-to-long v7, v3

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v12, 0x1

    const-string v13, "Start finish-for-sync track %d"

    const-wide v10, 0x6e3a4a5177f93b0bL    # 9.503256323778737E222

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v3, v7}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Landroid/os/IBinder;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    move v4, v6

    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    return v5

    :cond_4
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getTrack()I

    move-result v3

    :goto_2
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/wm/shell/transition/Transitions$Track;

    invoke-direct {v7, v5}, Lcom/android/wm/shell/transition/Transitions$Track;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v4, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v7, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->transitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    :cond_7
    move v4, v5

    :goto_3
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v7, v8, v2, v9, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    add-int/2addr v4, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_9

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, 0x373c3d4d3b0c3f67L    # 1.2663011681844677E-42

    const/4 v10, 0x0

    const-string v11, "No transition roots in %s so abort"

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return v6

    :cond_a
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    move v7, v6

    goto :goto_4

    :cond_b
    move v7, v5

    :goto_4
    add-int/lit8 v8, v4, -0x1

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_5
    const/16 v12, 0x8

    if-ltz v8, :cond_13

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-eqz v14, :cond_c

    move v14, v6

    goto :goto_6

    :cond_c
    move v14, v5

    :goto_6
    or-int/2addr v9, v14

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    or-int/2addr v10, v12

    const v12, 0x44000

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    move-result v12

    if-nez v12, :cond_d

    const/16 v12, 0x4200

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_d
    add-int/2addr v11, v6

    :cond_e
    const v12, 0x8000

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    if-nez v12, :cond_f

    move v7, v5

    goto :goto_7

    :cond_f
    const v12, 0x48000

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    :goto_7
    const/high16 v12, 0x20000

    invoke-virtual {v13, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_12
    :goto_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_13
    const/4 v8, 0x3

    const/4 v13, 0x4

    if-nez v9, :cond_15

    if-nez v10, :cond_14

    if-ne v11, v4, :cond_15

    :cond_14
    if-ge v4, v6, :cond_17

    :cond_15
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    if-eq v4, v13, :cond_16

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    if-ne v4, v8, :cond_1a

    :cond_16
    if-eqz v7, :cond_1a

    :cond_17
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v4, :cond_18

    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v4, :cond_18

    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v4, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->canMergeAbortedTransition(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_1a

    iget-object v2, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v19

    const-wide v15, -0x302ec6cb1d36c236L    # -3.116157485423626E76

    const/16 v17, 0x0

    const-string v18, "Non-visible anim, but playing %s can merged %s"

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_19

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x7612871b68b8cdc7L    # -7.487673244925308E-261

    const/4 v10, 0x0

    const-string v11, "Non-visible anim so abort: %s"

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return v6

    :cond_1a
    :goto_9
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v7

    invoke-static {v2, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v9

    :goto_a
    if-ltz v9, :cond_37

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    const v11, 0x10100

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v11

    if-eqz v11, :cond_1b

    move v5, v8

    move v8, v13

    goto/16 :goto_17

    :cond_1b
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    :cond_1c
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v10, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    const/4 v12, 0x6

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1f

    if-eq v14, v6, :cond_1d

    if-eq v14, v8, :cond_1d

    if-ne v14, v12, :cond_1f

    :cond_1d
    invoke-virtual {v4, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v15, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move v5, v8

    move v8, v13

    :cond_1e
    :goto_b
    const/16 v12, 0x8

    goto/16 :goto_17

    :cond_1f
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    const/16 v13, 0x451

    if-ne v5, v13, :cond_20

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v5

    const/high16 v13, 0x2000000

    and-int/2addr v5, v13

    if-eqz v5, :cond_20

    move v5, v8

    :goto_c
    const/4 v8, 0x4

    goto :goto_b

    :cond_20
    if-ne v14, v8, :cond_22

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_d

    :cond_21
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v4, v15, v5, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v4, v15, v5, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_22
    :goto_d
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v5, :cond_27

    sget-object v16, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->sForceHidingAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v16

    if-nez v16, :cond_23

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v16

    if-eqz v16, :cond_27

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    iget-boolean v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    if-eqz v13, :cond_27

    :cond_23
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->isForceHidingWithoutAnimation()Z

    move-result v16

    if-eqz v16, :cond_24

    goto :goto_e

    :cond_24
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    move-result v16

    cmpl-float v16, v16, v11

    if-eqz v16, :cond_26

    :cond_25
    const/4 v11, 0x0

    goto :goto_e

    :cond_26
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v11

    if-ne v11, v6, :cond_25

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_e
    invoke-virtual {v4, v13, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v8, "applyForceHideAlpha: leash="

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", startAlpha="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", transit="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "MultiTaskingTransitionProvider"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    goto :goto_f

    :cond_27
    const/4 v8, 0x0

    :goto_f
    invoke-static {v10, v2}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v11

    if-nez v11, :cond_2f

    if-eq v14, v6, :cond_2b

    const/4 v11, 0x3

    if-eq v14, v11, :cond_2b

    const/4 v11, 0x6

    if-ne v14, v11, :cond_28

    goto :goto_11

    :cond_28
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v5, :cond_29

    const/4 v5, 0x4

    if-ne v14, v5, :cond_2a

    const/16 v5, 0x200

    invoke-virtual {v10, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v1, v15}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_29
    :goto_10
    const/4 v5, 0x3

    goto/16 :goto_c

    :cond_2a
    move v8, v5

    const/4 v5, 0x3

    goto/16 :goto_b

    :cond_2b
    :goto_11
    invoke-virtual {v4, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2c

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2c

    move-object v11, v15

    goto :goto_12

    :cond_2c
    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object v14, v4

    move-object v11, v15

    invoke-virtual/range {v14 .. v19}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :goto_12
    if-eqz v5, :cond_2d

    if-eqz v8, :cond_2d

    goto :goto_13

    :cond_2d
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v11, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_13
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v4, v11, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v5, :cond_2e

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_10

    :cond_2e
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v11, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_10

    :cond_2f
    move-object v11, v15

    const/4 v5, 0x3

    if-eq v14, v6, :cond_30

    if-ne v14, v5, :cond_31

    :cond_30
    const/4 v8, 0x4

    goto :goto_15

    :cond_31
    const/4 v8, 0x2

    if-eq v14, v8, :cond_33

    const/4 v8, 0x4

    if-ne v14, v8, :cond_32

    goto :goto_14

    :cond_32
    if-eqz v7, :cond_1e

    const/4 v10, 0x6

    if-ne v14, v10, :cond_1e

    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_b

    :cond_33
    const/4 v8, 0x4

    :goto_14
    invoke-virtual {v1, v11}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_b

    :goto_15
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object v14, v4

    move-object v15, v11

    invoke-virtual/range {v14 .. v19}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v12, :cond_34

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    move-result v12

    if-eqz v12, :cond_34

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v4, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_b

    :cond_34
    if-eqz v7, :cond_35

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v10

    const/16 v12, 0x8

    and-int/2addr v10, v12

    if-nez v10, :cond_36

    const/4 v10, 0x0

    invoke-virtual {v4, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_16

    :cond_35
    const/16 v12, 0x8

    :cond_36
    :goto_16
    invoke-virtual {v1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_17
    add-int/lit8 v9, v9, -0x1

    move v13, v8

    move v8, v5

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_37
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v6, :cond_38

    return v6

    :cond_38
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return v6
.end method

.method public final dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance p1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_6

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, p6

    if-ne v3, v4, :cond_0

    move-object/from16 v5, p7

    goto/16 :goto_1

    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, p7

    if-ne v3, v5, :cond_2

    goto/16 :goto_1

    :cond_1
    move-object/from16 v5, p7

    :cond_2
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v7, 0x2024484d86b63caeL    # 7.563664792257138E-154

    const/4 v9, 0x0

    const-string v10, " try handler %s"

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x4972616276f430eaL    # 6.5583489775633E45

    const/4 v6, 0x0

    const-string v7, " animated by %s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    invoke-interface {v4, v2, v3}, Lcom/android/wm/shell/transition/tracing/TransitionTracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-object v0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This shouldn\'t happen, maybe the default handler is broken."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final finishForSync(Landroid/os/IBinder;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ShellTransitions"

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "finishForSleep: already played sync transition "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/Transitions$Track;

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$Track;

    if-eq v7, v4, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "finishForSleep: mismatched Tracks between forceFinish and logic "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-ne v7, v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Forcing transition to finish due to sync timeout: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    iget-object v7, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget-object v9, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v7, v9, v6, v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v8}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    :cond_3
    iget-object v3, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v3, :cond_4

    iget-object v3, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v13, Landroid/window/TransitionInfo;

    const/16 v7, 0xc

    const/4 v14, 0x0

    invoke-direct {v13, v7, v14}, Landroid/window/TransitionInfo;-><init>(II)V

    :cond_6
    iget-object v7, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v15, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v8}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v8

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Somehow blocked on a non-sync transition? "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v21

    const-wide v17, -0x780c15175627cd37L

    const/16 v19, 0x0

    const-string v20, " Attempt to merge sync %s into %s via a SLEEP proxy"

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v8, v15, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v9, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v11, v15, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    new-instance v12, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda4;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    move-object v10, v3

    invoke-interface/range {v7 .. v12}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v7, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-ne v7, v15, :cond_6

    new-instance v3, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v1, v2, v15}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final isEmptyExceptZombie(Ljava/util/ArrayList;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mPendingTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    invoke-interface {v3, v2}, Lcom/android/wm/shell/transition/tracing/TransitionTracer;->logAborted(I)V

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void
.end method

.method public final onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const-string v1, "ShellTransitions"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Trying to finish a non-existent transition: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v2

    if-gez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Trying to finish a invalid track transition: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    if-eqz v2, :cond_29

    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eq v3, v0, :cond_2

    goto/16 :goto_18

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionFinished(Landroid/os/IBinder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x3

    const-string v10, "Transition animation finished (aborted=%b), notifying core %s"

    const-wide v7, 0x4863957e921631eeL    # 5.331261708211386E40

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->clear()V

    :cond_5
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    if-eqz v4, :cond_10

    move-object v5, v1

    move v4, v3

    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v7, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_7

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    :goto_2
    iget-object v7, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_9

    if-nez v5, :cond_8

    move-object v5, v7

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    :goto_3
    iget-object v7, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    if-eqz v7, :cond_e

    move v7, v3

    :goto_4
    iget-object v8, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    iget-object v8, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v9, :cond_b

    if-nez v5, :cond_a

    move-object v5, v9

    goto :goto_5

    :cond_a
    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    :goto_5
    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v8, :cond_d

    if-nez v5, :cond_c

    move-object v5, v8

    goto :goto_6

    :cond_c
    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_f
    if-eqz v5, :cond_11

    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_10
    move-object v5, v1

    :cond_11
    :goto_7
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v4, :cond_12

    if-eqz v5, :cond_12

    goto :goto_8

    :cond_12
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    :goto_8
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    if-eqz v4, :cond_17

    move v4, v3

    :goto_9
    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_17

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v7, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_14

    if-nez v5, :cond_13

    move-object v5, v7

    goto :goto_a

    :cond_13
    invoke-virtual {v5, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_14
    :goto_a
    iget-object v6, v6, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-eqz v6, :cond_16

    if-nez v5, :cond_15

    move-object v5, v6

    goto :goto_b

    :cond_15
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_16
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_18
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v4, :cond_19

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_c

    :cond_19
    move-object v4, v1

    :goto_c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    iget-object v6, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz v5, :cond_21

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    if-eqz v5, :cond_21

    move v5, v3

    :goto_d
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_20

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v4, :cond_1a

    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v8}, Landroid/window/WindowContainerTransaction;->addTransferTransitionToken(Landroid/os/IBinder;)V

    goto :goto_e

    :cond_1a
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v8, v1}, Landroid/window/TaskOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    :goto_e
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v8, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v8}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    :goto_f
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    if-eqz v8, :cond_1f

    move v8, v3

    :goto_10
    iget-object v9, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1e

    iget-object v9, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v4, :cond_1c

    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v10}, Landroid/window/WindowContainerTransaction;->addTransferTransitionToken(Landroid/os/IBinder;)V

    goto :goto_11

    :cond_1c
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v10, v1}, Landroid/window/TaskOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    :goto_11
    iget-object v9, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v9, :cond_1d

    goto :goto_12

    :cond_1d
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    :goto_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_1e
    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_20
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_21
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v5, :cond_22

    goto :goto_13

    :cond_22
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    :goto_13
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    goto :goto_14

    :cond_23
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v5, p2}, Landroid/window/TaskOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    move-object v5, v1

    :goto_14
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    if-eqz v7, :cond_27

    :goto_15
    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_26

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v8, :cond_24

    if-eqz v4, :cond_24

    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v8}, Landroid/window/WindowContainerTransaction;->addMergedTransitionToken(Landroid/os/IBinder;)V

    goto :goto_16

    :cond_24
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v8, v1}, Landroid/window/TaskOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    :goto_16
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v8, :cond_25

    goto :goto_17

    :cond_25
    invoke-virtual {v8}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    :goto_17
    iget-object v8, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_26
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_27
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p1, :cond_28

    invoke-virtual {v6, v5, p2, v4}, Landroid/window/TaskOrganizer;->finishAllTransitions(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransaction;)V

    :cond_28
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_29
    :goto_18
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz p0, :cond_2a

    iget-object p0, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz p0, :cond_2a

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    if-eqz p0, :cond_2a

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Finishing is skipped due to transferred transit="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Trying to finish a non-running transition. Either remote crashed or  a handler didn\'t properly deal with a merge. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x65f62038e5d63665L    # 1.4689861525719594E183

    const/4 v6, 0x0

    const-string v7, "Transition was merged: %s into %s"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Merged transition out-of-order? "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShellTransitions"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Merged a transition that is no-longer queued? "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v1, :cond_5

    iget-boolean v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-nez v3, :cond_5

    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v4, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v3, v2, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p2

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p1

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    invoke-interface {v1, p2, p1}, Lcom/android/wm/shell/transition/tracing/TransitionTracer;->logMerged(II)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t merge across tracks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " into "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "tracing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p2, p2, v0

    invoke-static {v1, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Landroid/tracing/Flags;->perfettoTransitionTracing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    check-cast p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

    array-length v0, p2

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    return v1

    :cond_1
    const-string p0, "Command not supported. Use the Perfetto command instead to start and stop this trace instead."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    const-string v0, "Transitions.onTransitionReady"

    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x1

    const-string v9, "onTransitionReady (#%d) %s: %s"

    const-wide v6, 0x12cc1150b3ae3049L    # 3.975566420465114E-218

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    const-string v0, "ShellTransitions"

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-eqz v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Got duplicate transitionReady for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got transitionReady for non-pending transition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". expecting one of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iput-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object p3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-lez v2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Transition might be ready out-of-order "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". This is ok if it\'s on a different track."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    :goto_2
    return-void
.end method

.method public final playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v14

    const-wide v10, 0x6e1a939596143ba4L

    const/4 v12, 0x0

    const-string v13, "Playing animation for %s"

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    invoke-interface {v5}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionStarting()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v5, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v9

    if-ge v7, v9, :cond_2

    invoke-virtual {v4, v7}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v9

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const/4 v9, -0x1

    const/4 v10, 0x2

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v11, v7, 0x1

    invoke-static {v4, v2}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v12

    :goto_2
    if-ltz v12, :cond_4

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v13

    if-ne v13, v10, :cond_3

    add-int/2addr v7, v11

    sub-int v9, v7, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v11, v7, -0x1

    const/4 v12, 0x0

    :goto_4
    if-ltz v11, :cond_1a

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const/4 v3, 0x6

    if-eqz v15, :cond_a

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    if-eqz v15, :cond_a

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v15

    if-ne v15, v3, :cond_5

    add-int/2addr v14, v7

    goto :goto_5

    :cond_5
    add-int/2addr v14, v7

    sub-int/2addr v14, v11

    :goto_5
    if-ge v14, v9, :cond_6

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v3

    if-ne v3, v2, :cond_6

    add-int/2addr v14, v9

    :cond_6
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static {v13, v4}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v15

    invoke-static {v4}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->isDisplayRotating(Landroid/window/TransitionInfo;)Z

    move-result v17

    if-eqz v17, :cond_8

    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v17, :cond_7

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v17

    if-eqz v17, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v4, v15}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v15

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v5, v3, v15}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v5, v3, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "assignChangeLeashLayer: z="

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", leash="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", reparent="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChangeTransitionProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_b

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_b

    invoke-virtual {v4}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v2, :cond_c

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_10

    if-eq v6, v3, :cond_d

    const/16 v2, 0x3ef

    if-ne v6, v2, :cond_10

    :cond_d
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v15, 0x3

    if-eq v2, v15, :cond_e

    const/4 v15, 0x4

    if-eq v2, v15, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    const/16 v15, 0x200

    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v15

    if-eqz v15, :cond_f

    :goto_7
    move-object/from16 v17, v4

    move v4, v10

    goto/16 :goto_a

    :cond_f
    const/16 v15, 0x20

    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v15

    if-eqz v15, :cond_10

    if-ne v2, v3, :cond_10

    const/4 v12, 0x1

    :cond_10
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->shouldSkipSetupAnimHierarchy()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v13, v4}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-static {v13, v4}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v15

    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const-string v10, "ShellTransitions"

    if-eqz v17, :cond_14

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v17

    const/16 v18, 0x2

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_14

    move-object/from16 v17, v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v2, "setupAnimHierarchy: skip to reparent wallpaper, rootLeash is split"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/4 v4, 0x2

    goto :goto_a

    :cond_14
    move-object/from16 v17, v4

    :cond_15
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x5

    if-ne v15, v4, :cond_16

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    const/high16 v19, 0x1000000

    and-int v4, v4, v19

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->isActivityRootLeash()Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupAnimHierarchy: skip to reparent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason=non_activity_root_leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_16
    const/4 v4, 0x1

    if-ne v6, v4, :cond_17

    const/4 v4, 0x2

    if-ne v15, v4, :cond_18

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_a

    :cond_17
    const/4 v4, 0x2

    :cond_18
    if-nez v2, :cond_19

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v5, v14, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v3

    int-to-float v3, v10

    invoke-virtual {v5, v14, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    invoke-static {v13, v11, v7, v6}, Lcom/android/wm/shell/transition/Transitions;->calculateAnimLayer(Landroid/window/TransitionInfo$Change;III)I

    move-result v2

    invoke-virtual {v5, v14, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_a
    add-int/lit8 v11, v11, -0x1

    move v10, v4

    move-object/from16 v4, v17

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1a
    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v2, :cond_1d

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v14

    const-wide v10, 0x463014e5574532b2L    # 1.2741175565597104E30

    const/4 v12, 0x0

    const-string v13, " try firstHandler %s"

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v15, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v3, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    new-instance v5, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v1, v6}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;I)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-interface/range {v15 .. v20}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1c

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x23473d8c65563f63L    # 9.757892868681644E-139

    const/4 v5, 0x0

    const-string v6, " animated by firstHandler"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/transition/tracing/TransitionTracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void

    :cond_1d
    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v3, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    new-instance v5, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v1, v6}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;I)V

    iget-object v6, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v0

    iput-object v0, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/tracing/Flags;->perfettoTransitionTracing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tracing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    check-cast p0, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V
    .locals 11

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v3, p1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x1

    const-string v9, "Track %d became idle"

    const-wide v6, -0xeddd48c2ff5ca92L    # -9.243473914748986E236

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v3, :cond_8

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->isEmptyExceptZombie(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_5

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x4ea0a5eb060131acL    # 5.745054180372328E70

    const/4 v5, 0x0

    const-string v6, "All active transition animations finished"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    :goto_2
    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v3, :cond_c

    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-eqz v1, :cond_b

    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    return-void

    :cond_c
    iget-boolean p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/transition/Transitions;->onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    return-void

    :cond_d
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x7aec613fd0a13d79L    # 1.3187925438825337E284

    const/4 v7, 0x0

    const-string v8, "Transition %s ready while %s is still animating. Notify the animating transition in case they can be merged"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p1

    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionTracer:Lcom/android/wm/shell/transition/tracing/TransitionTracer;

    invoke-interface {v2, p1, v1}, Lcom/android/wm/shell/transition/tracing/TransitionTracer;->logMergeRequested(II)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_f

    iget-object p1, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v2, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {p1, v1, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->beforeMergeAnimation(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    :cond_f
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    iget-object v6, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    iget-object v7, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    new-instance v9, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0, v0, v3}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public final registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final runOnIdle(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions$Track;

    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x54cf776aaf263ecbL    # 3.441253143008983E100

    const/4 v7, 0x1

    const-string v8, "Directly starting a new transition type=%d wct=%s handler=%s"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p1, p2}, Landroid/window/TaskOrganizer;->startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(Landroid/os/IBinder;)V

    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mKnownTransitions:Landroid/util/ArrayMap;

    iget-object p2, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mPendingTime:J

    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "startTransition done, active="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShellTransitions"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    return-object p0
.end method
