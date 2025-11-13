.class final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;
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
.field final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic $backgroundView:Landroid/view/View;

.field final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$subtitleView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$backgroundView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$view:Landroid/view/View;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$subtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$backgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$view:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/widget/TextView;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->L$0:Ljava/lang/Object;

    return-object v10
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->L$0:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object p1, v11, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->isAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$subtitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$backgroundView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$view:Landroid/view/View;

    iget-object v12, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;-><init>(Landroid/widget/TextView;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12;->label:I

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
