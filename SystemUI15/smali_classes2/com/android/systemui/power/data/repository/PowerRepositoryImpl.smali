.class public final Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/power/data/repository/PowerRepository;


# instance fields
.field public final _screenPowerState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _wakefulness:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final applicationContext:Landroid/content/Context;

.field public final isInteractive:Lkotlinx/coroutines/flow/Flow;

.field public final manager:Landroid/os/PowerManager;

.field public final screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/content/Context;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->manager:Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p0, p3}, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl$isInteractive$1;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/power/shared/model/WakefulnessModel;-><init>(Lcom/android/systemui/power/shared/model/WakefulnessState;Lcom/android/systemui/power/shared/model/WakeSleepReason;Lcom/android/systemui/power/shared/model/WakeSleepReason;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->_wakefulness:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_OFF:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->_screenPowerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final wakeUp(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->manager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, ":"

    invoke-static {p0, v3, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
