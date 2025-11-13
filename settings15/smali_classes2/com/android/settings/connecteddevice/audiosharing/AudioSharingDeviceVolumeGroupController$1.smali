.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothVolumeControl$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    return-void
.end method


# virtual methods
.method public final onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$fgetmBtManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$fgetmBtManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$fgetmValueMap(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$fgetmVolumePreferences(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget-object v3, v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {v0, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->-$$Nest$mgetAudioVolumeIfNeeded(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;I)I

    move-result p2

    const-string v0, "onDeviceVolumeChanged: set volume to "

    const-string v1, " for "

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioSharingDeviceVolumeGroupController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v2, p2, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;II)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
