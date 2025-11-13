.class public Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "P2pWithNanDialog.java"


# direct methods
.method public static synthetic $r8$lambda$JIQWHlU1yRxqTUXvbkRwfTn9i_c(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UxO9y9Mdmwvorca2E-37CMdODmA(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->lambda$getClickListener$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j4jBvjjwXC5pCztr9zNDl1jb6Ko(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendEnableNanBroadcast(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->sendNotifySelectedBroadcast(Z)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getClickListener$2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 103
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "P2P_NAN_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->putIntSharedPref(Ljava/lang/String;I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showProgressDialog()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->sendNotifySelectedBroadcast(Z)V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->dismissDialogs()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->dismissDialogs()V

    return-void
.end method


# virtual methods
.method protected getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 102
    new-instance v0, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;)V

    return-object v0
.end method

.method protected getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_button_turn_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected neverShowAgainVzwAlertDialog()Z
    .locals 1

    const-string v0, "P2P_NAN_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected sendNotifySelectedBroadcast(Z)V
    .locals 1

    const-string v0, "WifiAware"

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendBroadcastAsUser(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setAlertDialog()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_aware_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_p2p_enable_aware_warning_body:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setAlertDialogForVzw()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTitleVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_aware_warning_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContentVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_aware_warning_body:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setCheckboxForVzw()V

    return-void
.end method

.method protected setNegativeButton()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setShowAgainOptionForVzw()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showProgressDialog()V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;->sendNotifySelectedBroadcast(Z)V

    const-string p0, "WifiWarningControlDialog"

    const-string v0, "Finish dialog because do not show again option is checked"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
