.class public final synthetic Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$500(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardSimPersoView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v3, "KeyguardSimPersoView"

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    const-string/jumbo v6, "verifyPasswordAndUnlock onSimCheckResponse verifySucceed"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x14

    if-ne v3, v7, :cond_1

    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    :cond_2
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-boolean v3, v2, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v2, v4, v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "verifyPasswordAndUnlock onSimCheckResponse verifyFail"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1309a3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    return-void
.end method
