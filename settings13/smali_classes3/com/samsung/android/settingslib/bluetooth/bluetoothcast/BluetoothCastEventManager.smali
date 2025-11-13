.class public Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;
.super Ljava/lang/Object;
.source "BluetoothCastEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;,
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;,
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;,
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;,
        Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBluetoothCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCastAdapterFilter:Landroid/content/IntentFilter;

.field private final mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

.field private final mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

.field private mCastProfileFilter:Landroid/content/IntentFilter;

.field private final mCastProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field private final mReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mBluetoothCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerMap(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    .line 40
    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    iput-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$2;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;)V

    iput-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "BluetoothCastEventManager"

    .line 68
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    .line 72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterFilter:Landroid/content/IntentFilter;

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileFilter:Landroid/content/IntentFilter;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$AdapterStateChangedHandler-IA;)V

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 77
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Z)V

    const-string p3, "com.samsung.android.bluetooth.cast.action.DISCOVERY_STARTED"

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 78
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$CastDiscoveryStateChangedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Z)V

    const-string p3, "com.samsung.android.bluetooth.cast.action.DISCOVERY_FINISHED"

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 79
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceFoundHandler-IA;)V

    const-string p3, "com.samsung.android.bluetooth.cast.device.action.FOUND"

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 80
    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$BluetootCastDeviceRemovedHandler-IA;)V

    const-string p2, "com.samsung.android.bluetooth.cast.device.action.REMOVED"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->registerReceiver()V

    return-void
.end method


# virtual methods
.method addCastAdapterHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method addCastProfileHandler(Ljava/lang/String;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager$Handler;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method dispatchCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;

    .line 239
    invoke-interface {v1, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;->onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    goto :goto_0

    .line 241
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dispatchCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;

    .line 247
    invoke-interface {v1, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;->onCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    goto :goto_0

    .line 249
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dispatchCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;II)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;

    .line 231
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;->onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;II)V

    goto :goto_0

    .line 233
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method registerCastProfileIntentReceiver()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->TAG:Ljava/lang/String;

    const-string v2, "registerCastProfileIntentReceiver :: mProfileConnectionReceiver was registered already. Receiver will refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method registerReceiver()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver :: mCastAdapterReceiver was registered already. Receiver will refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mReceivers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCastAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mBluetoothCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastCallback;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/BluetoothCastEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
