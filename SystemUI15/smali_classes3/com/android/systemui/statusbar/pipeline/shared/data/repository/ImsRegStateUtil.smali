.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final context:Landroid/content/Context;

.field public final ePDGConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final imsManagers:Ljava/util/Map;

.field public final imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

.field public final imsRegStateChangedCallbacks:Ljava/util/List;

.field public final imsRegStates:Ljava/util/Map;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge p2, p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStateChangedCallbacks:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsManagers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final ePDGConnected()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isVoWifiConnected(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
