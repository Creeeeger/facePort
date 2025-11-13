.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEventManager"

    if-nez v0, :cond_0

    const-string p0, "onReceive : action is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "onReceive : action "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.bluetooth.adapter.action.RESOURCE_UPDATE_ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.samsung.bluetooth.device.action.RESOURCE_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "com.samsung.bluetooth.device.extra.RESOURCE_URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothDevice.SEM_ACTION_RESOURCE_UPDATE: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p0, "onReceive : cachedDevice is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getResourcePath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string p0, "onReceive : path is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    sget-object p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v8, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda3;

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Landroid/os/Handler;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const-string v0, "com.samsung.bluetooth.adapter.extra.RESOURCE_ALL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothAdapter.SEM_EXTRA_RESOURCE_ALL_URI: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mSemCallbacks:Ljava/util/Collection;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, p0, v1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Collection;Landroid/os/Handler;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method
