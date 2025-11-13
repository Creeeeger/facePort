.class public Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiNetworkDiagnosticsPrefController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final ACTION_NETWORK_DIAGNOSTICS:Ljava/lang/String; = "com.samsung.android.NETWORK_DIAGNOSTICS"

.field private static final KEY_NETWORK_DIAGNOSTICS:Ljava/lang/String; = "wifi_network_diagnostics"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings"


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIsAvailable:Z

.field private mNetworkDiagnostics:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mtogglePreferences(Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->togglePreferences(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mIsAvailable:Z

    .line 60
    new-instance p2, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string p2, "connectivity"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mCm:Landroid/net/ConnectivityManager;

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mCm:Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private togglePreferences(Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mNetworkDiagnostics:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_network_diagnostics"

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mNetworkDiagnostics:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mNetworkDiagnostics:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi_network_diagnostics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.NETWORK_DIAGNOSTICS"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiNetworkDiagnosticsPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

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
