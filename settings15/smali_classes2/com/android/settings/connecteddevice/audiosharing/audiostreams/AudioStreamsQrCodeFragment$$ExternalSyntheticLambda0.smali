.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v2, "AudioStreamsQrCodeFragment"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "getBroadcastMetadataQrCode: localBluetoothLeBroadcast is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v1, v3

    goto :goto_2

    :cond_0
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v1, :cond_1

    const-string v1, "LocalBluetoothLeBroadcast"

    const-string v4, "The BluetoothLeBroadcast is null."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "getBroadcastMetadataQrCode: metadata is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    :goto_2
    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->toQrCodeString(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "getQrCodeBitmap: metadataStr is empty!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getQrCodeBitmap: metadata : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070177

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/settingslib/qrcode/QrCodeGenerator;->encodeQrCode$default(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getQrCodeBitmap: broadcastMetadata "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " qrCode generation exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p0, v2, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsQrCodeFragment;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method
