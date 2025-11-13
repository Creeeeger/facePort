.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$1;IILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$2;IILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v4, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-virtual {v3, v1, v2, v5, p0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_1
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$2400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$2;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$1;

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$500(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verifyPINAndUnlock : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardUCMPinView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const-string v3, "mUnlockProgressDialog != null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v5, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, p0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$600(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
