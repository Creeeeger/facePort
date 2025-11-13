.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;
.super Ljava/lang/Object;
.source "AudioCastProfile.java"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCastProfile Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    iput-object p1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioCastDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 168
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getRemoteDeviceRole()I

    move-result v1

    const-string v2, "/"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    if-nez v1, :cond_2

    .line 172
    iget-object v5, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v5, v5, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v5, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v5

    if-eq v5, v4, :cond_1

    if-ne v5, v3, :cond_2

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetmCastDeviceManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetmCastProfileManager(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->addCastDevice(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add castdevice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v3, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v3, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;I)V

    .line 180
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->refresh()V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_0

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetmContext(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 184
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_4

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacheddevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change cacheddevice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {v2, v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onCastProfileStateChanged(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->-$$Nest$fgetTAG(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCastProfile Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    :cond_0
    return-void
.end method
