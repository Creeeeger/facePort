.class public final Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/VolumeControlProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/VolumeControlProfile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;-><init>(Lcom/android/settingslib/bluetooth/VolumeControlProfile;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string p1, "Bluetooth service connected"

    const-string v0, "VolumeControlProfile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    check-cast p2, Landroid/bluetooth/BluetoothVolumeControl;

    iput-object p2, p1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mService:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothVolumeControl;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VolumeControlProfile found new device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mIsProfileReady:Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    const-string p1, "VolumeControlProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile$VolumeControlProfileServiceListener;->this$0:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mIsProfileReady:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mService:Landroid/bluetooth/BluetoothVolumeControl;

    return-void
.end method
