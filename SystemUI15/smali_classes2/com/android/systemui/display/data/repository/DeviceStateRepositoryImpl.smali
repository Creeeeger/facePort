.class public final Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/display/data/repository/DeviceStateRepository;


# instance fields
.field public final deviceStateMap:Ljava/util/List;

.field public final state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p4, p0, v2}, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$state$1;-><init>(Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p4, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object v0, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->UNKNOWN:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-static {p2, p3, p4, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const p2, 0x1070103

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance p4, Lkotlin/Pair;

    invoke-direct {p4, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p2, 0x107010a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->HALF_FOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p2, 0x107013c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->UNFOLDED:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p2, 0x1070142

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->REAR_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const p2, 0x10700bc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;->CONCURRENT_DISPLAY:Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p4, v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/Pair;

    new-instance v0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;

    invoke-direct {v0, v1, p4}, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl$IdsPerDeviceState;-><init>(Ljava/util/Set;Lcom/android/systemui/display/data/repository/DeviceStateRepository$DeviceState;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->deviceStateMap:Ljava/util/List;

    return-void
.end method
