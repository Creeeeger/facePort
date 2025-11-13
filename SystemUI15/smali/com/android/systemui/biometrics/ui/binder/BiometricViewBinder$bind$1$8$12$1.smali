.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic $backgroundView:Landroid/view/View;

.field public final synthetic $iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $iconView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field public final synthetic $subtitleView:Landroid/widget/TextView;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$subtitleView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$backgroundView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$view:Landroid/view/View;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;

    iget-boolean p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$subtitleView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$backgroundView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$backgroundView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {p2, v1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$iconOverlayView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$2;

    invoke-direct {p2, v1}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$iconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-boolean p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->isAuthenticated:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;->needsUserConfirmation:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$3;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {p2, p1, v1, v0}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/PromptAuthState;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$12$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, p2, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
