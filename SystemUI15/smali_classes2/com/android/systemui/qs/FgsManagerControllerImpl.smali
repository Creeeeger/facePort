.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/qs/FgsManagerController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityManager:Landroid/app/IActivityManager;

.field public final appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public final currentProfileIds:Ljava/util/Set;

.field public final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

.field public informJobSchedulerOfPendingAppStop:Z

.field public initialized:Z

.field public final jobScheduler:Landroid/app/job/JobScheduler;

.field public lastNumberOfVisiblePackages:I

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public newChangesSinceDialogWasDismissed:Z

.field public final onDialogDismissedListeners:Ljava/util/Set;

.field public final onNumberOfPackagesChangedListeners:Ljava/util/Set;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final runningApps:Landroid/util/ArrayMap;

.field public final runningTaskIdentifiers:Ljava/util/Map;

.field public final secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

.field public final showFooterDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public showStopBtnForUserAllowlistedApps:Z

.field public showUserVisibleJobs:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

.field public final userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Landroid/app/IActivityManager;Landroid/app/job/JobScheduler;Landroid/content/pm/PackageManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    iput-object p6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    iput-object p7, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p8, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p9, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p10, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p11, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p12, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p13, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->_showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showFooterDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    new-instance p1, Lcom/android/systemui/qs/SecFgsManagerController;

    new-instance p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance p3, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance p4, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$3;

    invoke-direct {p4, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$secFgsManagerController$3;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    invoke-direct {p1, p2, p3, p4}, Lcom/android/systemui/qs/SecFgsManagerController;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Supplier;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onDialogDismissedListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "newChangesSinceDialogWasShown="

    const-string v0, "current user profiles = "

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->newChangesSinceDialogWasDismissed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Running task identifiers: ["

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Loaded package UI info: ["

    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    const-string/jumbo v3, "{"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->dump(Ljava/io/PrintWriter;Lcom/android/systemui/util/time/SystemClock;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1

    throw p0
.end method

.method public final getNumRunningPackages()I
    .locals 3

    const-string v0, "numRunningPackages: "

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumVisiblePackagesLocked()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v2

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final getNumVisibleButtonsLocked()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    iget v1, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return v2
.end method

.method public final getNumVisiblePackagesLocked()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->getUiControl()Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    iget v1, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return v2
.end method

.method public final showDialog$1()V
    .locals 12

    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_6

    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iget-object v6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance v8, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance v9, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$4;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    new-instance v10, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$5;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    iget-object p0, v4, Lcom/android/systemui/qs/SecFgsManagerController;->dialogSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p0, "setup dialog"

    invoke-static {p0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    monitor-enter v7

    :try_start_0
    invoke-virtual {v10}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$5;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v10, 0x7f140604

    invoke-direct {p0, v3, v10}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f13109f

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    const v3, 0x7f13109e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    const v3, 0x7f1310d9

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v3, :cond_2

    const v10, 0x800033

    invoke-virtual {v1, v10}, Landroid/view/Window;->setGravity(I)V

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070fc7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f07148f

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v10, v1

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x51

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v10, 0x0

    const v11, 0x7f0d0377

    invoke-virtual {v1, v11, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0a0a84

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_4

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    move-object v0, v10

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$1;->accept(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f0a0a83

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/android/systemui/qs/SecFgsManagerController;->noItemTextView:Landroid/widget/TextView;

    iget-object v0, v4, Lcom/android/systemui/qs/SecFgsManagerController;->dialogConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance v10, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;

    move-object v0, v10

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/systemui/qs/SecFgsManagerController;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p0, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;

    invoke-direct {p0, v7, v9}, Lcom/android/systemui/qs/SecFgsManagerController$setupDialog$3;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-interface {v6, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v3

    const v4, 0x7f1306c7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    const v4, 0x7f1306c6

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0703c2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iput-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;

    invoke-direct {v5, v0, p0, v3}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$2;-><init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2

    throw p0
.end method

.method public final updateAppItemsLocked(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    iget-wide v4, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/util/Map;Ljava/util/Set;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateNumberOfVisibleRunningPackagesLocked()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumVisiblePackagesLocked()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lastNumberOfVisiblePackages:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lastNumberOfVisiblePackages:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->newChangesSinceDialogWasDismissed:Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;-><init>(Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateNumberOfVisibleRunningPackagesLocked: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final visibleButtonsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumVisibleButtonsLocked()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
