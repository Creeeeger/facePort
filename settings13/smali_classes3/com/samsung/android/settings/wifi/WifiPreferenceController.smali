.class public Lcom/samsung/android/settings/wifi/WifiPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY_WIFI:Ljava/lang/String; = "wifi_settings"

.field private static final TAG:Ljava/lang/String; = "WifiPreferenceController"


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWifiEnablerPreference(Lcom/samsung/android/settings/wifi/WifiPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnablerPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "wifi"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private getWifiStateChangeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnablerPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 62
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroidx/preference/SecSwitchPreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x5

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

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 156
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

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

.method public hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->getWifiStateChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnablerPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    .line 98
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 95
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
