.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field public final mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

.field public final mCallbacks:Ljava/util/Collection;

.field public final mContext:Landroid/content/Context;

.field public final mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mHandlerMap:Ljava/util/Map;

.field public final mIconBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public final mPackageBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

.field public final mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

.field public final mProfileIntentFilter:Landroid/content/IntentFilter;

.field public mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public final mReceiverHandler:Landroid/os/Handler;

.field public final mReceivers:Ljava/util/ArrayList;

.field public final mSemCallbacks:Ljava/util/Collection;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    new-instance v3, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    const-string v4, "BluetoothEventManager"

    const-string v5, "BluetoothEventManager Constructor :: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mUserHandle:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 p6, 0x1

    invoke-direct {p5, p0, p6}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.FOUND"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.UUID"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.samsung.bluetooth.device.action.MANUFACTURER_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ManufacturerChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ManufacturerChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DualModeChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DualModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.intent.action.PHONE_STATE"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.ACL_CONNECTED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AclStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AclStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AclStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AclStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.bluetooth.action.AUTO_ON_STATE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AutoOnStateChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AutoOnStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.android.settings.DEVICE_NAME_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceNameChangedHandler;

    invoke-direct {p5, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceNameChangedHandler;-><init>(I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.samsung.android.intent.action.RESPONSE_RESTORE_BLUETOOTH"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceRestoredHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceRestoredHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.samsung.android.intent.action.NOTIFY_SC_SYNC_BLUETOOTH"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceSyncHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    new-instance p3, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p3, p0, p5, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Landroid/os/Looper;I)V

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDelayedSyncHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$DelayedSyncHandler;

    const-string p3, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioTypeChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioTypeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "com.samsung.intent.action.SETTINGS_WIFI_BLUETOOTH_RESET"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NetworkResetSettingsHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NetworkResetSettingsHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p0, p3, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    new-instance p5, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AppPackageChangedHandler;

    invoke-direct {p5, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AppPackageChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;I)V

    invoke-virtual {p1, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "package"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "BluetoothEventManager"

    const-string p3, "registerPackageIntentReceiver: mPackageBroadcastReceiver was registered already. Receiver will refresh."

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerIntentReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "com.samsung.bluetooth.device.action.RESOURCE_UPDATE"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.bluetooth.adapter.action.RESOURCE_UPDATE_ALL"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "BluetoothEventManager"

    const-string p3, "registerIconIntentReceiver: mIconBroadcastReceiver was registered already. Receiver will refresh."

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v5, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerIntentReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p3, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p5, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda0;

    invoke-direct {p5, p4, p2, p3}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/Collection;Landroid/os/Handler;)V

    invoke-interface {p1, p5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerAdapterIntentReceiver()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/bluetooth/BluetoothEventManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "BluetoothEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The active device is the sub/member device "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". change targetDevice as main device "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActiveDeviceChanged: profile "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CachedBluetoothDevice"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_9

    const/4 v6, 0x2

    if-eq p2, v6, :cond_7

    const/16 v6, 0x15

    if-eq p2, v6, :cond_5

    const/16 v6, 0x16

    if-eq p2, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onActiveDeviceChanged: unknown profile "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isActive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    if-eq v4, v2, :cond_4

    move v5, v3

    :cond_4
    iput-boolean v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    goto :goto_1

    :cond_5
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-eq v4, v2, :cond_6

    move v5, v3

    :cond_6
    iput-boolean v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    goto :goto_1

    :cond_7
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eq v4, v2, :cond_8

    move v5, v3

    :cond_8
    iput-boolean v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    goto :goto_1

    :cond_9
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eq v4, v2, :cond_a

    move v5, v3

    :cond_a
    iput-boolean v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    :goto_1
    if-eqz v5, :cond_b

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged(Z)V

    :cond_b
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_c
    :goto_2
    monitor-exit v2

    goto/16 :goto_0

    :goto_3
    monitor-exit v2

    throw p0

    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_3

    :cond_2
    return-void
.end method

.method public final dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchDeviceRemoved :: cachedDevice - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isBlockingDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth_blocking_device"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "blocking_device_list"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v3, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    :try_start_0
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string p0, "BluetoothEventManager"

    const-string p1, "It\'s blocked device for pairing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final readPairedDevices()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    iput v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findFilteredDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/settingslib/bluetooth/BluetoothEventManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLeadDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    :cond_5
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName$1()V

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_2
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_8

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    goto :goto_3

    :cond_9
    return v2
.end method

.method public final readRestoredDevices()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-boolean v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    const-string v4, "CachedBluetoothDeviceManager"

    const-string v5, "addRestoredDevices :: newDevice is added already"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    iget v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    iput v4, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    iget-boolean v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsBondingByCached:Z

    iput-boolean v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsBondingByCached:Z

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mIsForRestored:Z

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mRestoredDeviceList:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_5
    monitor-exit p0

    goto :goto_6

    :goto_4
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    monitor-exit p0

    throw v0

    :cond_6
    :goto_6
    return-void
.end method

.method public registerAdapterIntentReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "BluetoothEventManager"

    const-string v2, "registerAdapterIntentReceiver :: mBroadcastReceiver was registered already. Receiver will refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerIntentReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerIntentReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 9

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mUserHandle:Landroid/os/UserHandle;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public registerProfileIntentReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "BluetoothEventManager"

    const-string v2, "registerProfileIntentReceiver :: mProfileConnectionReceiver was registered already. Receiver will refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerIntentReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
