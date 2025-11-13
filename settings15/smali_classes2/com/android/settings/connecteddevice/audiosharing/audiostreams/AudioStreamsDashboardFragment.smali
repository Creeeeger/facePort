.class public Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAudioStreamsProgressCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioStreamsDashboardFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x82d

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170065

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "onActivityResult() requestCode : "

    const-string v1, " resultCode : "

    const-string v2, "AudioStreamsDashboardFrag"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-nez p1, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_0

    const-string p1, "key_broadcast_metadata"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "onActivityResult() source is null!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult() broadcastId : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;->mAudioStreamsProgressCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    if-nez p2, :cond_2

    const-string p0, "onActivityResult() AudioStreamsProgressCategoryController is null!"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object p3, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->QR_CODE_SCAN_SETTINGS:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-virtual {p2, p1, p3}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setSourceFromQrCode(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)V

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p2, 0x79e

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_3
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsScanQrCodeController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsScanQrCodeController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsScanQrCodeController;->setFragment(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;)V

    const-class p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;->mAudioStreamsProgressCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setFragment(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_broadcast_metadata"

    const-class v1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsDashboardFragment;->mAudioStreamsProgressCategoryController:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;

    sget-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;->QR_CODE_SCAN_OTHER:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsProgressCategoryController;->setSourceFromQrCode(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Lcom/android/settings/connecteddevice/audiosharing/audiostreams/SourceOriginForLogging;)V

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x79e

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
