.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBinder:Lcom/android/systemui/keyguard/KeyguardService$3;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFoldGracePeriodProvider:Lcom/android/systemui/keyguard/KeyguardService$2;

.field public final mKeyguardEnabledInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

.field public final mShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;


# direct methods
.method public static -$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eq p1, v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    const/4 v6, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-eq v3, v6, :cond_3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    if-gez v3, :cond_4

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0, v2}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    move-object v8, p0

    move-object v9, p2

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/keyguard/ui/viewmodel/WindowManagerLockscreenVisibilityViewModel;Lcom/android/systemui/keyguard/WindowManagerLockscreenVisibilityManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSurfaceBehindViewModel;Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Ldagger/Lazy;Ljava/util/concurrent/Executor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;Landroid/app/ActivityManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            "Lcom/android/keyguard/mediator/ScreenOnCoordinator;",
            "Lcom/android/wm/shell/shared/ShellTransitions;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/WindowManagerLockscreenVisibilityViewModel;",
            "Lcom/android/systemui/keyguard/WindowManagerLockscreenVisibilityManager;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSurfaceBehindViewModel;",
            "Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;",
            "Ldagger/Lazy;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;",
            "Landroid/app/ActivityManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardService$3;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$3;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mMainExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardEnabledInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final checkPermission()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Access denied to process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    const-string p3, "KeyguardUnlockInfo"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    monitor-enter p3

    :try_start_0
    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    sget-boolean p3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-nez p3, :cond_1

    sget-boolean p3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz p3, :cond_3

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    iget-wide v0, p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->initShowTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->initShowTime:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, "0"

    :goto_1
    const-string v0, "First shown: "

    invoke-static {p2, v0, p3}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne p3, v1, :cond_4

    const/16 v3, 0x2a

    goto :goto_3

    :cond_4
    const/16 v3, 0x20

    :goto_3
    const-string v4, "User "

    invoke-static {v4, v1, v3}, Landroidx/compose/animation/core/ArcMode$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_5

    move-object v2, v3

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getLockTimeout:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  lockTimeout: "

    invoke-static {v3, v2, p2}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v2, p1

    :goto_5
    const-string v3, "  lockInstantlyWithPowerKey: "

    invoke-static {v3, v2, p2}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "none"

    goto/16 :goto_8

    :cond_8
    const-string/jumbo v2, "swipe"

    goto/16 :goto_8

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    const/high16 v5, 0x10000

    if-eq v3, v5, :cond_c

    const/high16 v5, 0x20000

    if-eq v3, v5, :cond_b

    const/high16 v5, 0x30000

    if-eq v3, v5, :cond_b

    const/high16 v5, 0x40000

    if-eq v3, v5, :cond_a

    const/high16 v5, 0x50000

    if-eq v3, v5, :cond_a

    const/high16 v5, 0x60000

    if-eq v3, v5, :cond_a

    const/high16 v5, 0x80000

    if-eq v3, v5, :cond_a

    sget v5, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "0x%x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const-string v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    const-string v3, "pin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    const-string v3, "pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/16 v3, 0x100

    filled-new-array {p1, v3}, [I

    move-result-object v3

    const-string v5, "fingerprints"

    const-string v6, "face"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    move v6, v4

    :goto_7
    const/4 v7, 0x2

    if-ge v6, v7, :cond_e

    aget v7, v3, v6

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/2addr v6, p1

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    const-string v3, "  lockTypeSummary="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / canSkipBouncer=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_11

    move-object v2, p0

    :cond_11
    iget-object p0, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getStateCallbackCount:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "StateCallback count="

    invoke-static {p1, p0, p2}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void

    :goto_9
    monitor-exit p3

    throw p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$3;

    return-object p0
.end method

.method public final onCreate()V
    .locals 14

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startSystemUserServicesIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getExitAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v7}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v7}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getOccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v9

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getOccludeByDreamAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v4

    const-wide/16 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getUnoccludeAnimationRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v4

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/app/ActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    :cond_1
    return-void
.end method
