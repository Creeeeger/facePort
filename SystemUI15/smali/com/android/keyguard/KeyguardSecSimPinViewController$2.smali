.class Lcom/android/keyguard/KeyguardSecSimPinViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 6

    const-string p2, "onSimStateChanged(subId="

    const-string v0, ",state="

    const-string v1, ")"

    invoke-static {p1, p3, p2, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardSecSimPinViewController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    if-eqz p3, :cond_9

    const/4 p0, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    if-eq p3, p0, :cond_2

    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    if-eq p3, v2, :cond_4

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    iget-object p1, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    :cond_2
    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 p0, 0x0

    iput-object p0, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p2, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    :cond_4
    if-ne p3, v3, :cond_5

    const-string v4, "Card Remove during SIM PIN "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ne p3, v2, :cond_6

    const-string v4, "Card READY during SIM PIN "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    iget-object v4, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "Dismiss SIM PIN View"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    iget-object p1, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v1, v3, p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_7
    if-ne p3, v2, :cond_8

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_8

    iget p0, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    if-eq p0, p1, :cond_8

    const-string p0, "READY already came. Skip this"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto :goto_1

    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz p1, :cond_a

    iget-object p1, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimRemoveButtonClicked()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;

    const/4 p1, 0x1

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    :cond_a
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    :cond_b
    :goto_1
    return-void
.end method
