.class public final Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepository;


# instance fields
.field public final foregroundServicesCount:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1;-><init>(Lcom/android/systemui/qs/FgsManagerController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl;->foregroundServicesCount:Lkotlinx/coroutines/flow/Flow;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showFooterDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl;Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
