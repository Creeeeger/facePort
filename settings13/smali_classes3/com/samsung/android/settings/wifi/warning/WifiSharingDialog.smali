.class public Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "WifiSharingDialog.java"


# direct methods
.method public static synthetic $r8$lambda$Lc3mTLKVnP2EnPIBBNjkTEDkXV8(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;->lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZuULCOl9ykBP05qbHUX70Lpx2s(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;->lambda$getClickListener$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjNZzCP1dxemqCtcwqBdyiytSPo(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;->lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    return-void
.end method

.method private getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method private synthetic lambda$getClickListener$2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 85
    sget-object p1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SHARING_LITE_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->putIntSharedPref(Ljava/lang/String;I)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_sharing_lite_popup_status"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->stopDialog()V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setNegativeButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;->launchWifiSharingSettings()V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchWifiSharingSettings()V
    .locals 2

    const-string v0, "WifiWarningControlDialog"

    const-string v1, "startActivity for WifiSharingSettings"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_ap_menu_configure_hotspot:I

    .line 105
    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 84
    new-instance v0, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;)V

    return-object v0
.end method

.method protected neverShowAgainVzwAlertDialog()Z
    .locals 1

    const-string v0, "SHARING_LITE_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getBoolSharedPref(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected setAlertDialog()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_tethering_on_text:I

    goto :goto_0

    .line 66
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_on_text:I

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_wifiwarning_text:I

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setAlertDialogForVzw()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTitleVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_on_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContentVzw:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_wifiwarning_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setCheckboxForVzw()V

    return-void
.end method

.method protected setNegativeButton()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->settings_label:I

    new-instance v2, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected setShowAgainOptionForVzw()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sharing_lite_popup_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "WifiWarningControlDialog"

    const-string v0, "Finish dialog because do not show again option is checked"

    .line 46
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
