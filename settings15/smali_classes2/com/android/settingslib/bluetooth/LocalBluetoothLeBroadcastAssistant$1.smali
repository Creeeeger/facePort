.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string p1, "Bluetooth service connected"

    const-string v0, "LocalBluetoothLeBroadcastAssistant"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    iput-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mService:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocalBluetoothLeBroadcastAssistant found new device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mIsProfileReady:Z

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onServiceConnected, register mCachedCallbackExecutorMap = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCachedCallbackExecutorMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCachedCallbackExecutorMap:Ljava/util/Map;

    new-instance p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    const/16 v0, 0x1d

    const-string v1, "LocalBluetoothLeBroadcastAssistant"

    if-eq p1, v0, :cond_0

    const-string p0, "The profile is not LE_AUDIO_BROADCAST_ASSISTANT"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Bluetooth service disconnected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mIsProfileReady:Z

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mCachedCallbackExecutorMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
