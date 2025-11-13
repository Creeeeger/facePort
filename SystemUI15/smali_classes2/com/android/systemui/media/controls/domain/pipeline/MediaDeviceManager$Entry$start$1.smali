.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

.field public final synthetic this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "MediaDeviceManager"

    const-string/jumbo v1, "startScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->started:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    sget-object v0, Lcom/android/settingslib/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/media/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->registerMuteAwaitConnectionCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    iget-object v5, v4, Lcom/android/settingslib/media/DeviceIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/android/settingslib/media/DeviceIconUtil;->getIconResIdFromAudioDeviceType(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {v4, v2, v1, v3}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackType:I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->started:Z

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
