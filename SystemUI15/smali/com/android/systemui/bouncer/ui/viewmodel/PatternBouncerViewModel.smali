.class public final Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;
.super Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _currentDot:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dots:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _selectedDots:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final applicationContext:Landroid/content/Context;

.field public final authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

.field public final columnCount:I

.field public final currentDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hitFactor$delegate:Lkotlin/Lazy;

.field public final isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final onIntentionalUserInput:Lkotlin/jvm/functions/Function0;

.field public final rowCount:I

.field public final selectedDots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const/4 p5, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/bouncer/ui/viewmodel/AuthMethodBouncerViewModel;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->applicationContext:Landroid/content/Context;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->columnCount:I

    iput p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->rowCount:I

    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$special$$inlined$map$1;

    invoke-direct {v0, p4}, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-static {p4, p1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0, p2, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p1}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const/4 p2, 0x0

    iget p4, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->columnCount:I

    invoke-static {p2, p4}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p4

    invoke-virtual {p4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p4

    :cond_0
    iget-boolean p5, p4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p5

    iget v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->rowCount:I

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :goto_0
    iget-boolean v1, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/PatternDotViewModel;

    invoke-direct {v2, p5, v1}, Lcom/android/systemui/bouncer/ui/viewmodel/PatternDotViewModel;-><init>(II)V

    invoke-virtual {p1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p3, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractor;->isPatternVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    new-instance p1, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$hitFactor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel$hitFactor$2;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAuthenticationMethod()Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PatternBouncerViewModel;->authenticationMethod:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    return-object p0
.end method
