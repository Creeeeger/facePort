.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;

.field public final configListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;

.field public final controller:Landroid/media/session/MediaController;

.field public current:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

.field public final key:Ljava/lang/String;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

.field public final oldKey:Ljava/lang/String;

.field public playbackType:I

.field public playbackVolumeControlId:Ljava/lang/String;

.field public started:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaController;",
            "Lcom/android/settingslib/media/LocalMediaManager;",
            "Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;

    return-void
.end method


# virtual methods
.method public final onAboutToConnectDeviceAdded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    new-instance v11, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x58

    const/4 v10, 0x0

    move-object v1, v11

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, v11, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->customMediaDeviceData:Lcom/android/systemui/media/SecMediaDeviceDataImpl;

    iput-object p1, p2, Lcom/android/systemui/media/SecMediaDeviceDataImpl;->deviceType:Ljava/lang/Integer;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p1, Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;

    invoke-direct {p1, v0, v11}, Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;-><init>(Lcom/android/settingslib/media/MediaDevice;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onAboutToConnectDeviceAdded backupMediaDeviceData="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;->backupMediaDeviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaDeviceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onAboutToConnectDeviceRemoved()V
    .locals 2

    const-string v0, "MediaDeviceManager"

    const-string v1, "onAboutToConnectDeviceRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackType:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackType:I

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBroadcastMetadataChanged(), broadcastId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , metadata = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaDeviceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 1

    const-string p0, "onBroadcastStartFailed(), reason = "

    const-string v0, "MediaDeviceManager"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStarted(II)V
    .locals 3

    const-string v0, "onBroadcastStarted(), reason = "

    const-string v1, " , broadcastId = "

    const-string v2, "MediaDeviceManager"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 1

    const-string p0, "onBroadcastStopFailed(), reason = "

    const-string v0, "MediaDeviceManager"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastStopped(II)V
    .locals 3

    const-string v0, "onBroadcastStopped(), reason = "

    const-string v1, " , broadcastId = "

    const-string v2, "MediaDeviceManager"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 2

    const-string p0, "onBroadcastUpdateFailed(), reason = "

    const-string v0, " , broadcastId = "

    const-string v1, "MediaDeviceManager"

    invoke-static {p1, p2, p0, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBroadcastUpdated(II)V
    .locals 3

    const-string v0, "onBroadcastUpdated(), reason = "

    const-string v1, " , broadcastId = "

    const-string v2, "MediaDeviceManager"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPlaybackStarted(II)V
    .locals 0

    return-void
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    return-void
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateCurrent()V
    .locals 13

    sget-object v0, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->legacyLeAudioSharing()V

    sget-object v0, Lcom/android/settingslib/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/media/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x48

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->mr2manager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter2Manager;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v12, :cond_2

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    :cond_1
    move-object v4, v0

    iget-object v3, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget-boolean v7, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->showBroadcastButton:Z

    iget-object v8, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->customMediaDeviceData:Lcom/android/systemui/media/SecMediaDeviceDataImpl;

    iget-boolean v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    iget-object v6, v12, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->id:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;)V

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_8

    :cond_3
    new-instance v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    const v2, 0x7f08099e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    const v2, 0x7f130bf6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x58

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;->fullMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x48

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/AboutToConnectDevice;->backupMediaDeviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    goto :goto_1

    :goto_2
    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v1

    :goto_3
    move-object v1, v12

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    sget-object v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->EMPTY_AND_DISABLED_MEDIA_DEVICE_DATA:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    :cond_9
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    iget-boolean v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    if-ne v2, v3, :cond_b

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->showBroadcastButton:Z

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->showBroadcastButton:Z

    if-ne v2, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x0

    :goto_6
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->started:Z

    if-eqz v2, :cond_c

    if-nez v0, :cond_d

    :cond_c
    iput-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$current$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method
