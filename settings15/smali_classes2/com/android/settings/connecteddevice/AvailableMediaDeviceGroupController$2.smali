.class public final Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;->this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "AvailableMediaDeviceGroupController"

    const-string p2, "onReceiveStateChanged: synced, update media device list."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;->this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;->this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public final onSearchStartFailed(I)V
    .locals 0

    return-void
.end method

.method public final onSearchStarted(I)V
    .locals 0

    return-void
.end method

.method public final onSearchStopFailed(I)V
    .locals 0

    return-void
.end method

.method public final onSearchStopped(I)V
    .locals 0

    return-void
.end method

.method public final onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    return-void
.end method

.method public final onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    return-void
.end method

.method public final onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p1, "AvailableMediaDeviceGroupController"

    const-string p2, "onSourceRemoved: update media device list."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;->this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;->this$0:Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method
