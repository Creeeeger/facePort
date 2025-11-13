.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;
.super Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    return-void
.end method


# virtual methods
.method public final onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-static {p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->isConnected(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->access$100(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;

    move-result-object p0

    const/16 p2, 0x79a

    invoke-static {}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$sfgetSOURCE_ORIGIN_REPOSITORY()I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public final onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->access$200(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;

    move-result-object p0

    const/16 p2, 0x7a3

    invoke-static {}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$sfgetSOURCE_ORIGIN_REPOSITORY()I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public final onSourceLost(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceLost(I)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    return-void
.end method

.method public final onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->access$000(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/util/Pair;

    const/16 p3, 0x79c

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public final onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsBroadcastAssistantCallback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;->-$$Nest$mupdateButton(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamButtonController;)V

    return-void
.end method
