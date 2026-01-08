.class public final Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroid/transition/ChangeBounds;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 30
    .line 31
    .line 32
    const-wide/16 p2, 0x1c2

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 35
    .line 36
    .line 37
    sget-object p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DIALOG_EXTEND:Landroid/view/animation/Interpolator;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescLayout:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/4 p3, 0x1

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/transition/ChangeBounds;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/transition/ChangeBounds;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 54
    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
