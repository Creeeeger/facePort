.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :pswitch_1
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    if-ne v1, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    const/16 v2, 0xb

    if-eq p1, v2, :cond_4

    const/16 v2, 0xc

    if-eq p1, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mAllowCaptiveByKme:Z

    if-nez p1, :cond_3

    const p1, 0x7f1434a9    # 1.9699917E38f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetCurrentNetwork$1()V

    const p1, 0x7f141b4c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;

    iput-object v2, p1, Lcom/android/settings/wifi/WifiSettings;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    const p1, 0x7f143247

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f143246

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f143249

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f1434a4    # 1.9699907E38f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_4
    const p1, 0x7f141a3c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f141a3a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f140d33

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x802

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
