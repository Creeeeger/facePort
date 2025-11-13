.class public Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApOtpSwitchController"


# instance fields
.field private mSwitchStateChangedAfterApEnabled:Z

.field private mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

.field private mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSwitchStateChangedAfterApEnabled(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mSwitchStateChangedAfterApEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThisSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSwitchStateChangedAfterApEnabled(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mSwitchStateChangedAfterApEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mSwitchStateChangedAfterApEnabled:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOneTimePasswordSupported(Landroid/content/Context;)Z

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

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string v1, "Preference screen clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TETH_010"

    const-string v1, "8071"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
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
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

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

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string p2, "onStateChanged:Resume "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string p2, "onStateChanged:Pause"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController$WifiApStateChangeReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChecked: "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "TETH_010"

    const-string v4, "8072"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setOtpPasswordEnabled(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChecked, AP enabled"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "WifiApFrameworkUtils"

    const-string/jumbo v2, "setOtpPassword: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const-string v1, "abcdefgh"

    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mSwitchStateChangedAfterApEnabled:Z

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    return v0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOneTimePasswordSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "state: "

    invoke-static {p1, v3, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isOperatorRequiresProvisioning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
