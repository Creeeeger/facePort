.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    return-void
.end method


# virtual methods
.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onBroadcastMetadataChanged(), broadcastId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", metadata = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSharingDialogHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 2

    const-string v0, "onBroadcastStartFailed(), reason = "

    const-string v1, "AudioSharingDialogHandler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to start broadcast, reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 2

    const-string p0, "onBroadcastStarted(), reason = "

    const-string v0, ", broadcastId = "

    const-string v1, "AudioSharingDialogHandler"

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 2

    const-string v0, "onBroadcastStopFailed(), reason = "

    const-string v1, "AudioSharingDialogHandler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to stop broadcast, reason "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 2

    const-string p0, "onBroadcastStopped(), reason = "

    const-string v0, ", broadcastId = "

    const-string v1, "AudioSharingDialogHandler"

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 0

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStarted(II)V
    .locals 3

    const-string v0, "onPlaybackStarted(), reason = "

    const-string v1, ", broadcastId = "

    const-string v2, "AudioSharingDialogHandler"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mTargetSinks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p2, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mTargetSinks:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mLocalBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->addSourceToTargetSinks(Ljava/util/List;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p2, p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p2, p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mHostFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, p2, Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;->this$0:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mTargetSinks:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method
