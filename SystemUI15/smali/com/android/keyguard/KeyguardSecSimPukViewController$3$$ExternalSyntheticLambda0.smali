.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$3;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$400(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const-string v2, "KeyguardSecSimPukViewController"

    const/4 v5, 0x0

    if-nez v1, :cond_4

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    sget-boolean v1, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f13092b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f140602

    invoke-direct {v6, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f130d5f

    invoke-virtual {v6, v1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x7d9

    invoke-virtual {v1, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    if-eqz p0, :cond_f

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "ForceHideSoftInput"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_3
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const v6, 0x7f1309a6

    if-ne v1, v4, :cond_e

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v7, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$600(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v10, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    move-result v9

    if-nez v8, :cond_5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1309ae

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0xa

    const v11, 0x7f130929

    const v12, 0x7f130931

    if-le v8, v4, :cond_9

    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz v4, :cond_6

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    rsub-int/lit8 v4, v8, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    rsub-int/lit8 v4, v8, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f13088c

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f130a18

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    if-ne v8, v4, :cond_d

    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_LGU_USIM_TEXT:Z

    if-eqz v4, :cond_a

    if-nez v9, :cond_a

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    rsub-int/lit8 v4, v8, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    rsub-int/lit8 v4, v8, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f13088b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f130a17

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " displayMessage="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "KeyguardSimPukView"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_e
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v4, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    :cond_f
    :goto_4
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    return-void
.end method
