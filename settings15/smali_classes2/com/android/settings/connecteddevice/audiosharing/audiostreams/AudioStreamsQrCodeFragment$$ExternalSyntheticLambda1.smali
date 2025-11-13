.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;->f$3:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f0a0c19

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const v3, 0x7f1404db

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0b24

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f1404da

    invoke-virtual {v0, v2, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
