.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda14;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper$$ExternalSyntheticLambda14;->f$1:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceId()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
