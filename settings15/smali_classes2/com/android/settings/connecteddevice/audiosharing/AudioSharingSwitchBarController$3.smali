.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSourceAddFailed(), sink = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", reason = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "AudioSharingSwitchBarCtl"

    invoke-static {v0, p3, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$3;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)Landroid/content/Context;

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
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSourceAdded(), sink = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", sourceId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AudioSharingSwitchBarCtl"

    invoke-static {p0, p3, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

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

    return-void
.end method
