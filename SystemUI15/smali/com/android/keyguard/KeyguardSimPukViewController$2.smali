.class public final Lcom/android/keyguard/KeyguardSimPukViewController$2;
.super Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onSimLockChangedResponse(Landroid/telephony/PinResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSimCheckResponse  empty One result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPukView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$400(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$300(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-static {p0, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method
