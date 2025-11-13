.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

.field public final coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

.field public currentlyRunningAnimationJob:Lkotlinx/coroutines/Job;

.field public final desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public eventCancellationJob:Lkotlinx/coroutines/Job;

.field public hasPersistentDot:Z

.field public final headerBatteryChipController:Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;

.field public final listeners:Ljava/util/Set;

.field public final logger:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

.field public final scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public showingDotWhileChipAnim:Z

.field public statusBarHidden:Z

.field public final statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p6, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p7, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->logger:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    iput-object p8, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    iput-object p9, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p10, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->headerBatteryChipController:Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    iput-object p0, p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    const-string p1, "SystemStatusAnimationSchedulerImpl"

    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-interface {p9, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p6, p2, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$2;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$2;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, p2, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$3;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$3;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, p2, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$runChipDisappearAnimation(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarHidden:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    instance-of v2, v2, Lcom/android/systemui/statusbar/events/BatteryEvent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    invoke-interface {v4, v5, v0, v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/StatusEvent;)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->headerBatteryChipController:Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;

    invoke-virtual {v3, v0, v0, v2}, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    new-instance v0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipDisappearAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$runChipDisappearAnimation$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->start()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final collectStartAnimations(Z)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    instance-of v1, v1, Lcom/android/systemui/statusbar/events/BatteryEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v3, p1, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->headerBatteryChipController:Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Scheduled event: "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Currently displayed event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    const-string v0, "Has persistent privacy dot: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Listeners:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "(none)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final notifyHidePersistentDot(Z)Landroidx/core/animation/AnimatorSet;
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->logger:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "SystemStatusAnimationSchedulerLog"

    const-string v4, "Hide persistent dot callback invoked"

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onHidePersistentDot(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/core/animation/AnimatorSet;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/StatusEvent;)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->logger:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "SystemStatusAnimationSchedulerLog"

    const-string v4, "Transition to persistent dot callback invoked"

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemStatusAnimationTransitionToPersistentDot(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v2, 0x32

    if-ne v0, v2, :cond_2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$onDesktopModeStateChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$onDesktopModeStateChanged$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/StatusEvent;)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 12

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "privacy"

    const-string v1, "enable_immersive_indicator"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    :cond_3
    return-void

    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/events/StatusEvent;

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string v6, "SystemStatusAnimationSchedulerLog"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->logger:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    if-le v0, v3, :cond_10

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v4

    :cond_6
    if-le v0, v4, :cond_10

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-nez v0, :cond_10

    :cond_7
    if-eqz v8, :cond_8

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logScheduleEvent$2;->INSTANCE:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logScheduleEvent$2;

    iget-object v4, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v6, v0, v3, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v9, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v3

    iput v3, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v3

    iput-boolean v3, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v3

    iput-boolean v3, v9, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_8
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    if-eqz v0, :cond_d

    :cond_9
    instance-of v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->name(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Hide dot for next chip animation. state="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showingDotWhileChipAnim="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v6, v9, v0, v7}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->removePersistentDot(Z)V

    goto :goto_1

    :cond_b
    instance-of v0, p1, Lcom/android/systemui/statusbar/events/BatteryEvent;

    if-eqz v0, :cond_d

    if-eqz v8, :cond_c

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v4, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "Show battery chip and privacy dot"

    invoke-virtual {v4, v6, v0, v8, v7}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_d
    :goto_1
    invoke-virtual {v1, v7, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->eventCancellationJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-ne p1, v2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$cancelCurrentlyDisplayedEvent$1;

    invoke-direct {p1, p0, v7}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$cancelCurrentlyDisplayedEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v7, v7, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->eventCancellationJob:Lkotlinx/coroutines/Job;

    goto/16 :goto_3

    :cond_f
    :goto_2
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, v7, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_17

    if-eqz v8, :cond_11

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, p1, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logUpdateEvent(Lcom/android/systemui/statusbar/events/StatusEvent;I)V

    :cond_11
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    if-eqz v8, :cond_12

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object p1, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v0, "skip updating since animation is already started"

    invoke-virtual {p1, v6, p0, v0, v7}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :cond_14
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_15

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    :cond_15
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1a

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1a

    if-eqz v8, :cond_16

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v0, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "Reset chip animation since privacy items are updated"

    invoke-virtual {v0, v6, p1, v2, v7}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/events/BatteryEvent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->prepareChipAnimation(Lkotlin/jvm/functions/Function1;Z)V

    goto :goto_3

    :cond_17
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz p0, :cond_19

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result p0

    if-ne p0, v2, :cond_19

    if-eqz v8, :cond_18

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v8, p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logUpdateEvent(Lcom/android/systemui/statusbar/events/StatusEvent;I)V

    :cond_18
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/events/StatusEvent;

    if-eqz p0, :cond_1a

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    goto :goto_3

    :cond_19
    if-eqz v8, :cond_1a

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logIgnoreEvent$2;->INSTANCE:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logIgnoreEvent$2;

    iget-object v1, v8, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v6, p0, v0, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iput v0, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_1a
    :goto_3
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    :cond_0
    return-void
.end method

.method public final removePersistentDot(Z)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/StatusEvent;->setForceVisible()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyHidePersistentDot(Z)Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyHidePersistentDot(Z)Landroidx/core/animation/AnimatorSet;

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyHidePersistentDot(Z)Landroidx/core/animation/AnimatorSet;

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->showingDotWhileChipAnim:Z

    return-void
.end method
