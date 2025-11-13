.class public final synthetic Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;Landroid/telephony/PinResult;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinViewController;->access$100(Lcom/android/keyguard/KeyguardSimPinViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPinViewController;->-$$Nest$mgetSimRemainingAttemptsDialog(Lcom/android/keyguard/KeyguardSimPinViewController;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardSimPinViewController;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinViewController;->access$200(Lcom/android/keyguard/KeyguardSimPinViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1309a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardSimPinView"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_5
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
