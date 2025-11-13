.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;
.super Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;
.source "WifiApNetworkDisplaySSIDPreference.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mWifiApConfigUpdater:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x0

    .line 46
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    .line 54
    move-object p3, p2

    check-cast p3, Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mActivity:Landroid/app/Activity;

    const-string p3, "wifi"

    .line 55
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    const-string p3, "sem_wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 57
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mWifiApConfigUpdater:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-nez p1, :cond_0

    .line 59
    sget p1, Lcom/android/settings/R$string;->wifi_ap_devicename:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->checkIfHelpIconForRestoringConfigNeeded()V

    return-void
.end method

.method private isWifiApSettingUserModificationAllowed()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 178
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApSettingsAllowedToChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private showDialog(I)V
    .locals 5

    .line 67
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog() - dialogId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "showDialog() - DIALOG_RESTORE_SSID is being shown"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_ap_network_name_to_be_restored:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/android/settings/R$string;->wifi_ap_password_to_be_restored:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_0
    sget p1, Lcom/android/settings/R$string;->wifi_ap_restore_network_name:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->wifi_ap_restore_button:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;)V

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->wifi_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;)V

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mDialog:Landroid/app/AlertDialog;

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkIfHelpIconForRestoringConfigNeeded()V
    .locals 4

    .line 138
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "checkIfNeededHelpIconForRestoringConfig() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_ap_tips:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiApDeviceInfoPreference() - Restore Icon shown as configuration mismatched with Current SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setPreferenceListener(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference$PreferenceItemsOnCLickListener;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "checkIfNeededHelpIconForRestoringConfig() - ContentProviderSSID is equal to CurrentSSID. Restore Icon removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceClicked(Ljava/lang/Object;)V
    .locals 0

    .line 156
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string p1, "WifiApCustomPreferenceListener`s onPreferenceClicked() - Triggered "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSecondaryIconClicked(Ljava/lang/Object;)V
    .locals 1

    .line 161
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, "WifiApCustomPreferenceListener`s onSecondaryIconClicked() - Help Triggered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->isWifiApSettingUserModificationAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, "MDM enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, " setSummary() is called"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->checkIfHelpIconForRestoringConfigNeeded()V

    return-void
.end method

.method public updateContentProviderConfigToFramework()V
    .locals 3

    .line 122
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviousConfigurationFromContentProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityType(Landroid/content/Context;)I

    move-result v2

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mWifiApConfigUpdater:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateConfigurationToFramework(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateCurrentConfigToContentProvider()V
    .locals 2

    .line 116
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "updateCurrentConfigToContentProvider() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setCurrentApConfiguration(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplayCustomPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
