.class public Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "MobileHotspotWithoutP2pDialog.java"


# direct methods
.method public static synthetic $r8$lambda$Juh16XZqylVKiyxsmo9SdQyLLvk(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZZeM14xqbF4uuMlMDdUnB2R4co(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;->lambda$getClickListener$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s51L5GyewWcrWfqluPhfWnI8JoU(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method

.method private finishDialog()V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendBroadcastCancelEnablingWifi()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getClickListener$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne p1, p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string p2, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 109
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->putIntSharedPref(Ljava/lang/String;I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->disableMobileHotspot()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;->finishDialog()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;->finishDialog()V

    return-void
.end method


# virtual methods
.method public getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 106
    new-instance v0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;)V

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleWifiApStateChanged(I)Z
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received MHS state changed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiWarningControlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissProgressDialog()V

    .line 42
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne p1, v1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->mobile_ap_disable:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIsAirplaneMode:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return v0
.end method

.method protected neverShowAgainVzwAlertDialog()Z
    .locals 1

    const-string v0, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setAlertDialog()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->wifi_enable_warning_title_jpn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_enable_warning_jpn:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->wifi_enable_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_enable_warning:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    return-void
.end method

.method public setAlertDialogForVzw()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTitleVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_enable_warning_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContentVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_enable_warning:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setCheckboxForVzw()V

    return-void
.end method

.method protected setNegativeButton()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setShowAgainOptionForVzw()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->disableMobileHotspot()V

    const-string p0, "WifiWarningControlDialog"

    const-string v0, "Finish dialog because do not show again option is checked"

    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
