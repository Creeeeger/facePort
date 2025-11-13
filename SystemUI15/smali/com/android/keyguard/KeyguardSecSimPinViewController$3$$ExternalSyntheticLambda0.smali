.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iput p3, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$100(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v6, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardSecSimPinViewController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput-boolean v6, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v1, v6, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "ForceHideSoftInput"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getResult()I

    move-result v2

    if-ne v2, v6, :cond_a

    const-string/jumbo v2, "verifyPasswordAndUnlock : PIN_RESULT_TYPE_INCORRECT"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v2, ""

    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :cond_3
    sget-boolean v2, Lcom/android/systemui/CscRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v3, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-ne v1, v6, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13092f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130930

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :cond_5
    sget-boolean v2, Lcom/android/systemui/CscRune;->SECURITY_KTT_USIM_TEXT:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f130924

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v2

    if-ne v2, v6, :cond_8

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130887

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1309aa

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_8
    sget-boolean v2, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f130888

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1309ab

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1309a5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_b
    :goto_2
    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_c
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    return-void
.end method
