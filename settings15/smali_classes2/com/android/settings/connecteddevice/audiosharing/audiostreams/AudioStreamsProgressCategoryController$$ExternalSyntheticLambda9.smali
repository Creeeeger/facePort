.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->$r8$lambda$Rb-WrR318TXf0YtdNUZPZI9ICWA(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Ljava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method
