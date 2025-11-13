.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController$$ExternalSyntheticLambda10;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->$r8$lambda$g1ehljlcFBuZokuvVMfrWxH4wJ8(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Landroid/bluetooth/BluetoothLeBroadcastMetadata;ILjava/lang/Integer;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    move-result-object p0

    return-object p0
.end method
