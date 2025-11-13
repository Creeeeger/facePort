.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final assert:Lcom/android/systemui/util/ThreadAssert;

.field public final blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final blueprintIdMap:Ljava/util/TreeMap;

.field public final handler:Landroid/os/Handler;

.field public final refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Landroid/os/Handler;Lcom/android/systemui/util/ThreadAssert;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/util/ThreadAssert;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->assert:Lcom/android/systemui/util/ThreadAssert;

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p3

    const/16 v0, 0x10

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    invoke-interface {v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->blueprintIdMap:Ljava/util/TreeMap;

    const-string p1, "default"

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x5

    invoke-static {p1, p3, p2, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static synthetic getTargetTransitionConfig$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final applyBlueprint(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->blueprintIdMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not find blueprint with id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Perhaps it was not added to KeyguardBlueprintModule?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBlueprintRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v1
.end method
