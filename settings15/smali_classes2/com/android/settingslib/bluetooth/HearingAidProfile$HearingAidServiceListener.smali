.class public final Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HearingAidProfile found new device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->updateHearingAidsDevices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    return-void
.end method
