.class public final Lcom/android/keyguard/KeyguardSecESimArea$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecESimArea;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecESimArea;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.keyguard.disable_esim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const-string v1, "KeyguardSecEsimArea"

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_1

    const-string v3, "Error disabling esim, result code = "

    invoke-static {p1, v3, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v3, "switch detailedCode: "

    invoke-static {p1, v3, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2711

    if-ne p1, v3, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecESimArea;->access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130898

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130899

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f13089a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecESimArea$1;)V

    const v4, 0x7f13089b

    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p1, "Success ACTION_DISABLE_ESIM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object v3, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimState(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Dismiss SIM PIN/PUK View"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object v4, v3, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecESimArea;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v5, 0x1

    invoke-interface {v4, v5, p1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-boolean v3, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    :cond_5
    const-string p1, "com.android.keyguard.euicc_reset"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_6

    const-string p2, "Error euicc memory reset, result code = "

    invoke-static {p1, p2, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mESimText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const-string p1, "Success ACTION_EUICC_RESET"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mPendingEsimTextVisible:Z

    :cond_7
    return-void
.end method
