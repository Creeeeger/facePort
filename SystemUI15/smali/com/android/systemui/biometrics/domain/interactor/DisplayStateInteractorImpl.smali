.class public final Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;


# instance fields
.field public final currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final displayChanges:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

.field public final isDefaultDisplayOff:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

.field public final isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepository;Lcom/android/systemui/display/data/repository/DisplayRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-direct {v0, p2}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    check-cast p5, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object p2, p5, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayChangeEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->displayChanges:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$isFolded$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl$isFolded$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;

    iget-object p1, p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p5, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->defaultDisplayOff:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isDefaultDisplayOff:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

    iget-object p1, p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
