.class public Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityIoTSetupController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

.field private mSecSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecSwitchPreferenceScreen(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSecSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mContext:Landroid/content/Context;

    return-void
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSecSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mOnWifiConnectivityIoTSetupSwitchChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->mOnStateChangeListener:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler$OnStateChangeListener;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

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

    const p0, 0x7f1417ba

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSecSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSecSwitchPreferenceScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->setChecked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setHost(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mSettingsPreferenceFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupController;->mWifiConnectivityIoTSetupSwitchEnabler:Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiConnectivityIoTSetupSwitchEnabler;->updateSwitchState(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
