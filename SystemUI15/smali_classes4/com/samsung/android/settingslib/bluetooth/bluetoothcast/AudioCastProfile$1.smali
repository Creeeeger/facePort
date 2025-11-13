.class public final Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "AudioCastProfile Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    iput-object p1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioCastDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getRemoteDeviceRole()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "/"

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v5, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v5

    if-eq v5, v2, :cond_1

    if-ne v5, v4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v2, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->addCastDevice(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add castdevice "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v3, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v3, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v3, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v3, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;I)V

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->dispatchAttributesChanged()V

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v1, v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "cacheddevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "change cacheddevice "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v3, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v3, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v3, v3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v3, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getPeerName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f130276

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBluetoothCastMsg:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->TAG:Ljava/lang/String;

    const-string v1, "AudioCastProfile Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    :cond_0
    return-void
.end method
