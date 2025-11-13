.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic $indicatorMessageView:Landroid/widget/TextView;

.field public final synthetic $textColorError:I

.field public final synthetic $textColorHint:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;IILandroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$indicatorMessageView:Landroid/widget/TextView;

    iput p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$textColorError:I

    iput p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$textColorHint:I

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage;

    instance-of p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$indicatorMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Error;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptMessage$Help;->helpMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$indicatorMessageView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$textColorError:I

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$textColorHint:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$indicatorMessageView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$8$13$1;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
