.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mFailedAttempts:I

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f130881

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method
