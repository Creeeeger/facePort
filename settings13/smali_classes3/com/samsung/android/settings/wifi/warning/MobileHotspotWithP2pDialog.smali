.class public Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "MobileHotspotWithP2pDialog.java"


# direct methods
.method public static synthetic $r8$lambda$nujNybA263PPqwnDyAl81f9PnbE(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2UyHgA-odMvoPHpdMv0g8EYBrU(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->lambda$getClickListener$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQxTVO28efdK7HJ0VAV9c2Egioc(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method

.method private finishDialog()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getClickListener$2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 83
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HOTSPOT_P2P_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->putIntSharedPref(Ljava/lang/String;I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->disableMobileHotspot()V

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->finishDialog()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->finishDialog()V

    return-void
.end method


# virtual methods
.method protected getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 82
    new-instance v0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;)V

    return-object v0
.end method

.method protected getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_button_turn_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected neverShowAgainVzwAlertDialog()Z
    .locals 1

    const-string v0, "HOTSPOT_P2P_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected sendNotifySelectedBroadcast(Z)V
    .locals 1

    const-string v0, "WifiDirect"

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendBroadcastAsUser(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setAlertDialog()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_p2p_enable_warning_body:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setAlertDialogForVzw()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTitleVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_warning_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContentVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_enable_warning_body:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setCheckboxForVzw()V

    return-void
.end method

.method protected setNegativeButton()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setShowAgainOptionForVzw()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->disableMobileHotspot()V

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    const-string p0, "WifiWarningControlDialog"

    const-string v0, "Finish dialog because do not show again option is checked"

    .line 37
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
