.class public Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AutoConnectHotspotPrefereneController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final AUTO_CONNECT_HOTSPOT_ALWAYS_VALUE:I = 0x3

.field private static final AUTO_CONNECT_HOTSPOT_ASK_BEFORE_CONNECTING_VALUE:I = 0x2

.field private static final AUTO_CONNECT_HOTSPOT_NEVER_VALUE:I = 0x1

.field private static final KEY_COMMON_MODE:Ljava/lang/String; = "MODE"

.field private static final KEY_IS_FROM_SETTING:Ljava/lang/String; = "IS_FROM_SETTING"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.AutoConnectHotspotPrefereneController"


# instance fields
.field private mAutoConnectHotspot:Landroidx/preference/Preference;

.field mContext:Landroid/content/Context;

.field private mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private getSamsungAccountCount()I
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mContext:Landroid/content/Context;

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 111
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 112
    array-length p0, p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mAutoConnectHotspot:Landroidx/preference/Preference;

    .line 51
    sget v1, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_title:I

    invoke-static {v1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mAutoConnectHotspot:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 43
    invoke-static {}, Lcom/android/settings/Utils;->isAdvancedAutohotspotSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getAdvancedAutohotspotConnectSettings()I

    move-result v1

    .line 61
    sget v2, Lcom/android/settings/R$string;->wifi_ap_not_signed_in:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->getSamsungAccountCount()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_always_option:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_ask_before_connecting_option:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 66
    :cond_2
    sget p0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_never_option:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    return-object v2
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 86
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->getSamsungAccountCount()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sems.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.osp.app.signin"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "MODE"

    const-string v2, "ADD_ACCOUNT"

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_FROM_SETTING"

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "client_id"

    const-string v2, "s5d189ajvs"

    .line 94
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->wifi_auto_connect_hotspot_title:I

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return v1

    :cond_1
    return v0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotPrefereneController;->mAutoConnectHotspot:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
