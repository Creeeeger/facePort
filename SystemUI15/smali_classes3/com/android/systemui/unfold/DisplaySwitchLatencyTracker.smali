.class public final Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final SCREEN_EVENT_TIMEOUT:J


# instance fields
.field public final animationStatusRepository:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final context:Landroid/content/Context;

.field public final deviceStateRepository:Lcom/android/systemui/display/data/repository/DeviceStateRepository;

.field public final displaySwitchLatencyLogger:Lcom/android/systemui/unfold/DisplaySwitchLatencyLogger;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final singleThreadBgExecutor:Ljava/util/concurrent/Executor;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 v0, 0x3a98

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->SCREEN_EVENT_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/display/data/repository/DeviceStateRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/unfold/DisplaySwitchLatencyLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->deviceStateRepository:Lcom/android/systemui/display/data/repository/DeviceStateRepository;

    iput-object p3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iput-object p4, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;

    iput-object p5, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->animationStatusRepository:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

    iput-object p6, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p7, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->displaySwitchLatencyLogger:Lcom/android/systemui/unfold/DisplaySwitchLatencyLogger;

    iput-object p10, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-static {p7}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final access$toStatsInt(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public static final access$waitForDisplaySwitch(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;

    iget v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :cond_3
    iget p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;

    iget-object p2, p2, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->repository:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;

    check-cast p2, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;->unfoldProgressProvider:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->animationStatusRepository:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

    invoke-interface {p2}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;->areAnimationsEnabled()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->I$0:I

    iput v5, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v5

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, v5, :cond_a

    if-eqz p2, :cond_a

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result p1

    const-string p2, "DisplaySwitchLatency"

    const-string/jumbo v2, "waitForTransitionStart()"

    invoke-static {p1, p2, v2}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->unfoldTransitionInteractor:Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;

    iput-object p2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->I$0:I

    iput v4, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor;->repository:Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepository;

    check-cast p0, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/unfold/data/repository/UnfoldTransitionRepositoryImpl;->getTransitionStatus()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$waitForTransitionStart$$inlined$filter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/unfold/domain/interactor/UnfoldTransitionInteractor$waitForTransitionStart$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_3

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    if-ne p0, v1, :cond_8

    goto :goto_8

    :cond_8
    move p0, p1

    move-object p1, p2

    :goto_4
    :try_start_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_9
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :goto_6
    move-object v6, p2

    move-object p2, p0

    move p0, p1

    move-object p1, v6

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_7
    invoke-static {p0, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$3;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$3;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$4;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$4;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    filled-new-array {p1, v2}, [Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iput-object p2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForDisplaySwitch$1;->label:I

    invoke-static {p0, v0}, Lcom/android/systemui/util/kotlin/SuspendKt;->race([Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_8
    return-object v1
.end method

.method public static final access$waitForGoToSleepWithScreenOff(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;

    iget v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->I$0:I

    iget-object v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result p1

    const-string v2, "DisplaySwitchLatency"

    const-string/jumbo v4, "waitForGoToSleepWithScreenOff()"

    invoke-static {p1, v2, v4}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v5, v5, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v6, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$lambda$4$$inlined$filter$1;

    invoke-direct {v6, v5, p0}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$lambda$4$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;)V

    iput-object v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForGoToSleepWithScreenOff$1;->label:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    move v7, p1

    move-object p1, p0

    move p0, v7

    :goto_1
    :try_start_2
    check-cast p1, Lcom/android/systemui/power/shared/model/WakefulnessModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    move-object v0, v2

    move v7, p1

    move-object p1, p0

    move p0, v7

    :goto_3
    invoke-static {p0, v0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    throw p1
.end method

.method public static final access$waitForScreenTurnedOn(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;

    iget v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->I$0:I

    iget-object v1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result p1

    const-string v2, "DisplaySwitchLatency"

    const-string/jumbo v4, "waitForScreenTurnedOn()"

    invoke-static {p1, v2, v4}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$lambda$2$$inlined$filter$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$lambda$2$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$waitForScreenTurnedOn$1;->label:I

    invoke-static {v5, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    move v6, p1

    move-object p1, p0

    move p0, v6

    :goto_1
    :try_start_2
    check-cast p1, Lcom/android/systemui/power/shared/model/ScreenPowerState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    move-object v0, v2

    move v6, p1

    move-object p1, p0

    move p0, v6

    :goto_3
    invoke-static {p0, v0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final isAsleepDueToFold()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {p0}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/power/shared/model/WakeSleepReason;->FOLD:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    iget-object p0, p0, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastSleepReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->isDeviceFoldable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
