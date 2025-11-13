.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;
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

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->started:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaDeviceManager"

    const-string/jumbo v1, "stopScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->started:Z

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    sget-object v0, Lcom/android/settingslib/media/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/media/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMuteAwaitConnectionCallback(Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$configListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
