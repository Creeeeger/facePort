.class public Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecWifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final TAG:Ljava/lang/String; = "SecWifiTetherPreferenceController"


# instance fields
.field private mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTm:Landroid/net/TetheringManager;

.field private mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiApSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "tethering"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    .line 38
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 98
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/app/Activity;Landroidx/preference/SecSwitchPreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 66
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "persist.sys.tether_data"

    const/4 v4, -0x1

    .line 67
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 68
    sget-object v5, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTetheredData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.sys.tether_data_wifi"

    .line 69
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_2

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 80
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 81
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "This model is Wifi Only"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 85
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiAvailable : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v2
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

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public isChecked()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 3

    .line 103
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mWifiApSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onStop()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 54
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecWifiTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
