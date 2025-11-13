.class public Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SavedNetworksPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DBG:Z

.field private static final KEY_MANAGE_NETWORK:Ljava/lang/String; = "wifi_manage_network"

.field private static final MANAGE_NETWORK:Ljava/lang/String; = "manage_network"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.ManageNetwork"


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mManageNetwork:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmManageNetwork(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mManageNetwork:Landroidx/preference/Preference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 70
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private togglePreferences()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mManageNetwork:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mManageNetwork:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mManageNetwork:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->togglePreferences()V

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
