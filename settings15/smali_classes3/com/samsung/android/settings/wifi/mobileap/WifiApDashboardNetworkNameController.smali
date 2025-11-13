.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DIALOG_RESTORE_SSID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiApDashboardNetworkNameController"


# instance fields
.field private mConfigDialogCreate:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mRestoreDialog:Landroid/app/AlertDialog;

.field private mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field private mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiApSettings(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendConfigChangedBroadcastToSmartTethering(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->sendConfigChangedBroadcastToSmartTethering()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowRestoreDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->showRestoreDialog(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mConfigDialogCreate:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendConfigChangedBroadcastToSmartTethering()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendConfigChangedBroadcastToSmartTethering() - Sending Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showRestoreDialog(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showDialog() - dialogId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "showDialog() - DIALOG_RESTORE_SSID is being shown"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1433a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f1433c4

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f143664

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const p1, 0x7f1433e1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;I)V

    const v2, 0x7f1433e0

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;I)V

    const v2, 0x7f1434a4    # 1.9699907E38f

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mRestoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkIfHelpIconForRestoringConfigNeeded()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "WifiApSettingsAllowedToChange:"

    const-string v3, "WifiApFeatureUtils"

    invoke-static {v2, v3, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string v3, "checkIfHelpIconForRestoringConfigNeeded isWifiApSettingUserModificationAllowed:"

    invoke-static {v3, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "HelpIconForRestoring needed() - mContentProviderSSID: "

    const-string v4, ", SSID: "

    invoke-static {v3, v0, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "HelpIconForRestoring not needed()"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceType:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TETH_010"

    const-string v1, "8008"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    const-string v1, "intent_value_focus_network_name"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->isDefaultPassphraseSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const v2, 0x7f14332d

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->launchWifiApEditSettingsActivity(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const v2, 0x7f14339c

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->launchWifiApEditSettingsActivity(ILjava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setContentProviderConfigToFramework()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string v0, "Context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePreviousConfigurationFromContentProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityType(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    move-result-object v3

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    iget v5, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mBroadcastChannel:I

    iget v6, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mMacRandomizationSettingsType:I

    iget-boolean v3, v3, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mIsHiddenNetworkEnabled:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    iput-object v1, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    iput v2, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    iput-object v4, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    iput v5, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mBroadcastChannel:I

    iput v6, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mMacRandomizationSettingsType:I

    iput-boolean v3, v7, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mIsHiddenNetworkEnabled:Z

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->updateConfigurationToFramework(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ssid cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentConfigToContentProvider()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCurrentConfigToContentProvider() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "Context is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setCurrentApConfiguration(Landroid/content/Context;)V

    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string v1, "Setting context from wifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateConfigurationToFramework(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConfigurationToFramework() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "WifiApConfiguration"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v0, "isSoftApConfigurationChanged() - WifiConfiguration to be compared is NULL."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    :cond_0
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "isSsidChanged() - SSID not changed."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "isPassphraseChanged() - Password changed to OPEN."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v0, "isPassphraseChanged() - Password changed from OPEN."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "isPassphraseChanged() - Passphrase changed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "isPassphraseChanged() - Passphrase not changed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_6
    const-string v0, "isSsidChanged() - SSID changed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    const-string v1, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f143435

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f14341e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;Z)V

    const p1, 0x7f1409b7

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$5;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1408bf

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController$6;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mConfigDialogCreate:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setSoftApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->sendConfigChangedBroadcastToSmartTethering()V

    :cond_8
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error InterruptedException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateWifiApConfiguration()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnablingOrEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->checkIfHelpIconForRestoringConfigNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f080699

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->mThisPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
