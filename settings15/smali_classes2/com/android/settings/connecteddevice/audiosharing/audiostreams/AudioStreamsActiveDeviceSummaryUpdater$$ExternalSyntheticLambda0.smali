.class public final synthetic Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsHelper;->getCachedBluetoothDeviceInSharingOrLeConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f1404c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;->mSummary:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;->mSummary:Ljava/lang/String;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsActiveDeviceSummaryUpdater;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
