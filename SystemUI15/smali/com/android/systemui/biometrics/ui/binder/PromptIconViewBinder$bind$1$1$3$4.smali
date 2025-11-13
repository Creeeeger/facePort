.class public final Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$4;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$4;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt;->assetIdToString:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconOverlayFailureListener$1;

    invoke-direct {v1, p2}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinderKt$setIconOverlayFailureListener$1;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$4;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$4;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;->_previousIconOverlayWasError:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
