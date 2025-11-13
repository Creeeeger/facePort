.class public Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApSaAutoHotspotController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOnAutoHotspotSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$OnStateChangeListener;

.field private mWifiApAutoHotspotPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;

.field private mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mOnAutoHotspotSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$OnStateChangeListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const v0, 0x7f1433ff

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const v0, 0x7f1433fe

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mOnAutoHotspotSwitchChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$OnStateChangeListener;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$OnStateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;->updateSwitchState()V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSamsungAccountFamilySupported()V

    const/4 p0, 0x4

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

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

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot switch preference screen clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TETH_010"

    const-string v1, "8009"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isDefaultPassphraseSet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->TAG:Ljava/lang/String;

    const-string v1, "AutoHotspot FirstTime Configuration dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autohotspot_waiting_for_password_change"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const v1, 0x7f14332d

    const-string v2, "intent_value_focus_password"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->launchWifiApEditSettingsActivity(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->TAG:Ljava/lang/String;

    const-string v1, "isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChecked: "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "TETH_010"

    const-string v3, "8010"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSmartTetheringApkUtils;->setFamilySharingSwitchChangedAutomatically(Landroid/content/Context;Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApAutoHotspotSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
