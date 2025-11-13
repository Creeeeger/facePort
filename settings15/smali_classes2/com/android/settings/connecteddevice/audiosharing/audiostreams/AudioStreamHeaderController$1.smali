.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-static {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$mupdateSummary(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$fgetmAudioStreamsHelper(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->access$000(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$fgetmBroadcastId(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)I

    move-result p3

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$fgetmBroadcastName(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->startMediaService(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSourceLost(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceLost(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$mupdateSummary(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;->-$$Nest$mupdateSummary(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamHeaderController;)V

    return-void
.end method
