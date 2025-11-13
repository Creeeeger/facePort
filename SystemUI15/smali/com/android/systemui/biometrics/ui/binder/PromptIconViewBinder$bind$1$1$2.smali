.class final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;
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
.field final synthetic $faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->iconAsset:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    sget-object v3, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$2;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$2;

    iget-object v4, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->activeAuthType:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v5, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->shouldAnimateIconView:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->showingError:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v5, p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$3;

    sget-object v4, Lcom/android/systemui/util/kotlin/Utils;->Companion:Lcom/android/systemui/util/kotlin/Utils$Companion;

    invoke-direct {v3, v4}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, p1, v3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->$faceIcon:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
