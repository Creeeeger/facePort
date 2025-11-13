.class final Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field final synthetic $view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;",
            "Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/UdfpsTouchOverlayViewModel;Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$2;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1;->$udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/biometrics/ui/binder/UdfpsTouchOverlayBinder$bind$1$1$2;-><init>(Lcom/android/systemui/biometrics/ui/view/UdfpsTouchOverlay;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;)V

    check-cast p1, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
