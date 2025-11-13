.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "AudioSharingDevicePrefController"

    const-string p3, "onSourceAdded: update sharing device list."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmDeviceManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmDialogHandler(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmDeviceManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmDialogHandler(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsForLeaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_1
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
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fail to add source to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

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
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->access$100(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fail to remove source from "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p1, "AudioSharingDevicePrefController"

    const-string p2, "onSourceRemoved: update sharing device list."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->-$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method
