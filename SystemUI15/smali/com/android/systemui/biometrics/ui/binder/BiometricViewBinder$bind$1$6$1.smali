.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $iconSizeOverride:Lkotlin/Pair;

.field public final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconSizeOverride:Lkotlin/Pair;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder;->$r8$clinit:I

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v1, v5, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->iconViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconSizeOverride:Lkotlin/Pair;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$6$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel;Lcom/airbnb/lottie/LottieAnimationView;Lkotlin/Pair;Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
