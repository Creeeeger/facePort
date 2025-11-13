.class public final Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final customTextModel:Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;

.field public final knoxState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepository;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v7, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->customTextModel:Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    iget-object v4, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarHidden:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, p2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    iget-object v4, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->statusBarIconsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, p2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$3;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {v0, p2, p1, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/domain/interactor/KnoxStatusBarControlInteractor;->knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
