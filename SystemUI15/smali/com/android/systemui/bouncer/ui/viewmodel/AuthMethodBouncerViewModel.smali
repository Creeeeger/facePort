.class public abstract Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _animateFailure:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final animateFailure:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactor:Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;

.field public final isInputEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final viewModelScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method private constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;->viewModelScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;)V

    return-void
.end method


# virtual methods
.method public abstract getAuthenticationMethod()Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;
.end method
