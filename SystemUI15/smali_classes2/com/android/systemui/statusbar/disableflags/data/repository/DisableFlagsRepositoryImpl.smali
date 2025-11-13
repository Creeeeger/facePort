.class public final Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepository;


# instance fields
.field public final disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final thisDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;ILkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->thisDisplayId:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p6, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlagsLogger:Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p5, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1;

    const/4 p6, 0x0

    invoke-direct {p5, p1, p0, p4, p6}, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$2;

    invoke-direct {p2, p0, p6}, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$2;-><init>(Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance p2, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    const/4 p5, 0x3

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p5, p6}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p4, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->disableFlags:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
