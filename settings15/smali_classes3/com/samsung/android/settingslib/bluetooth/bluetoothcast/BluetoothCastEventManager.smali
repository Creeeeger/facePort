.class public final Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBluetoothCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field public final mCallbacks:Ljava/util/Collection;

.field public final mCastAdapterFilter:Landroid/content/IntentFilter;

.field public final mCastAdapterReceiver:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

.field public final mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field public final mCastProfileFilter:Landroid/content/IntentFilter;

.field public final mCastProfileReceiver:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerMap:Ljava/util/Map;

.field public final mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field public final mReceivers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BluetoothCastEventManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;I)V

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;I)V

    iput-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

    const-string v3, "BluetoothCastEventManager"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterFilter:Landroid/content/IntentFilter;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileFilter:Landroid/content/IntentFilter;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;I)V

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    const-string p2, "com.samsung.android.bluetooth.cast.action.DISCOVERY_STARTED"

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Z)V

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    const-string p2, "com.samsung.android.bluetooth.cast.action.DISCOVERY_FINISHED"

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Z)V

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    const-string p2, "com.samsung.android.bluetooth.cast.device.action.FOUND"

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;I)V

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    const-string p2, "com.samsung.android.bluetooth.cast.device.action.REMOVED"

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;I)V

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    const-string/jumbo p0, "registerReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo p0, "registerReceiver :: mCastAdapterReceiver was registered already. Receiver will refresh."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p3, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
