.class public final synthetic Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogCode:I

    if-eq v5, v1, :cond_4

    if-eq v5, v0, :cond_3

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v3, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsEsimSupported:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupporteSimBootstrap"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, p1, :cond_6

    const p1, 0x7f14329f

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f14329e

    goto :goto_0

    :cond_5
    const p1, 0x7f14329d

    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    const v0, 0x7f1434bf    # 1.9699962E38f

    invoke-virtual {v3, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x802

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_8
    :goto_3
    return-void

    :pswitch_0
    sget p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
