.class public Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mState:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const p0, 0x7f1309f5

    goto :goto_0

    :cond_0
    const p0, 0x7f130907

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const p0, 0x7f130897

    goto :goto_0

    :cond_2
    const p0, 0x7f130906

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->updateSim()V

    const p0, 0x7f130851

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const p0, 0x7f130905

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$000(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz p0, :cond_6

    iget-object v0, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    :cond_6
    return-void
.end method

.method public reset()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result p0

    iget v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    if-eq p0, v2, :cond_0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    :cond_0
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    :cond_1
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result v2

    iget v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimInputView;->disableESimButton:Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v4, :cond_2

    iput v3, v4, Lcom/android/keyguard/KeyguardEsimArea;->mSubscriptionId:I

    :cond_2
    const/16 v3, 0x8

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimInputView;->simImageView:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
