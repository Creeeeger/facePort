.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    iget p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;->hapticFeedbackConstant:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;->flag:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p2, p1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$16$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_hapticsToPlay:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;

    iget-object p2, p2, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;->flag:Ljava/lang/Integer;

    invoke-direct {v1, v0, p2}, Lcom/android/systemui/biometrics/ui/viewmodel/HapticsToPlay;-><init>(ILjava/lang/Integer;)V

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
