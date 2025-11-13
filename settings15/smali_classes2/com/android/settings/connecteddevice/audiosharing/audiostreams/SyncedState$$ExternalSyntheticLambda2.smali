.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

.field public final synthetic f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

.field public final synthetic f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$2:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SyncedState$$ExternalSyntheticLambda2;->f$3:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;

    const v1, 0x7f0a0260

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-direct {v1, p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->handleSourceAddRequest(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamPreference;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method
