.class public final Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V

    return-void
.end method


# virtual methods
.method public final next()V
    .locals 8

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const/16 v1, 0x8

    const v2, 0x7f130906

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    const v6, 0x7f130896

    const/4 v7, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v7, :cond_0

    move v6, v5

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    iget-object p0, v4, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v4, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSim()V

    const v6, 0x7f130851

    goto/16 :goto_1

    :cond_1
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    const v6, 0x7f130922

    goto/16 :goto_1

    :cond_3
    const v6, 0x7f130905

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v7, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_5

    const v6, 0x7f130921

    goto/16 :goto_1

    :cond_5
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p0, :cond_6

    const v6, 0x7f130886

    goto :goto_1

    :cond_6
    const v6, 0x7f130a04

    goto :goto_1

    :cond_7
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_9

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const v6, 0x7f130926

    goto :goto_1

    :cond_9
    move v6, v2

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_d

    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_b

    const v6, 0x7f130925

    goto :goto_1

    :cond_b
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    if-eqz p0, :cond_c

    const v6, 0x7f130889

    goto :goto_1

    :cond_c
    const v6, 0x7f130a05

    goto :goto_1

    :cond_d
    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_10

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const v6, 0x7f130923

    goto :goto_1

    :cond_f
    :goto_0
    const v6, 0x7f130920

    goto :goto_1

    :cond_10
    const v6, 0x7f130a03

    :cond_11
    :goto_1
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$000(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v6, :cond_13

    if-eq v6, v2, :cond_12

    iget-object p0, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_12
    iget-object p0, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_13
    :goto_2
    return-void
.end method

.method public final reset()V
    .locals 2

    const-string v0, "KeyguardSecSimPukViewController"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$SecStateMachine;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result p0

    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    :cond_0
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz p0, :cond_1

    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    iput v1, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mSubscriptionId:I

    :cond_1
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void
.end method
