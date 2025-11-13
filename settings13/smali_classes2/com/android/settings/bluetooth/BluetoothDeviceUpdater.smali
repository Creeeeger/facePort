.class public abstract Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.super Ljava/lang/Object;
.source "BluetoothDeviceUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final DBG:Z


# instance fields
.field protected final mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field protected mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field protected mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field protected mPrefContext:Landroid/content/Context;

.field protected final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BluetoothDeviceUpdater"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1

    .line 73
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 80
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 81
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 82
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 83
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothDeviceUpdater"

    const-string v0, "forceUpdate() Bluetooth is not supported on this device"

    .line 118
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 123
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removeAllDevicesFromPreference()V

    :cond_2
    return-void
.end method

.method public isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 317
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->DBG:Z

    if-eqz v1, :cond_1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceConnected() device name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , is profile connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothDeviceUpdater"

    .line 318
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public abstract isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .line 183
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->DBG:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAclConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothDeviceUpdater"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removeAllDevicesFromPreference()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->DBG:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bluetoothProfile: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothDeviceUpdater"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public refreshPreference()V
    .locals 0

    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothDeviceUpdater"

    const-string/jumbo v0, "registerCallback() Bluetooth is not supported on this device"

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public removeAllDevicesFromPreference()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothDeviceUpdater"

    const-string/jumbo v0, "removeAllDevicesFromPreference() BT is not supported on this device"

    .line 134
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 267
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 269
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {p1, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    .line 271
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    .line 279
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPrefContext(Landroid/content/Context;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothDeviceUpdater"

    const-string/jumbo v0, "unregisterCallback() Bluetooth is not supported on this device"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method protected update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return-void
.end method
