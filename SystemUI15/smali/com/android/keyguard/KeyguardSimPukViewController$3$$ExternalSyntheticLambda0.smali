.class public final synthetic Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->onSimLockChangedResponse(Landroid/telephony/PinResult;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$600(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

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

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v4, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$800(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$700(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-static {v6, v5}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1000(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$900(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->mSubId:I

    invoke-static {v6, v5}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$1100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1309a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardSimPukView"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
