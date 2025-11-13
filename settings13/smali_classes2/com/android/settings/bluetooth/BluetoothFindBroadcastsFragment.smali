.class public Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothFindBroadcastsFragment.java"


# instance fields
.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    .line 58
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 123
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 69
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BTFindBroadcastsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 114
    sget p0, Lcom/android/settings/R$xml;->bluetooth_find_broadcasts_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_0

    const-string p1, "BTFindBroadcastsFrg"

    const-string/jumbo v0, "onAttach() CachedDevice is null!"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->finishFragmentIfNecessary()V

    return-void
.end method
