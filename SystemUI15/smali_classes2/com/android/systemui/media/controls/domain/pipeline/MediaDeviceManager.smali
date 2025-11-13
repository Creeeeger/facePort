.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# static fields
.field public static final EMPTY_AND_DISABLED_MEDIA_DEVICE_DATA:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final entries:Ljava/util/Map;

.field public final fgExecutor:Ljava/util/concurrent/Executor;

.field public final listeners:Ljava/util/Set;

.field public final localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;

.field public final mr2manager:Ldagger/Lazy;

.field public final muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    const/16 v10, 0x58

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->EMPTY_AND_DISABLED_MEDIA_DEVICE_DATA:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;Ldagger/Lazy;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ldagger/Lazy;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/controls/util/MediaControllerFactory;",
            "Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ldagger/Lazy;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->mr2manager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    new-instance p3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V

    new-instance p4, Landroid/content/IntentFilter;

    const-string p0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p0, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_START"

    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_STOP"

    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p7, 0x0

    const/4 p8, 0x0

    const/4 p5, 0x0

    const/16 p9, 0x30

    move-object p2, p10

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "MediaDeviceManager state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    const-string v2, "  key="

    invoke-static {p1, v2, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->mr2manager:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter2Manager;

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->mr2manager:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter2Manager;

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_2
    move-object v4, v2

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    current device is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v2

    :goto_4
    iget v5, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackType:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    PlaybackType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (1 for local, 2 for remote) cached="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    volumeControlId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cached= "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    routingSession="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    selectedRoutes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    currentConnectedDevice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->stop()V

    :cond_0
    iget-object v1, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->stop()V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v1, :cond_4

    invoke-virtual {v7, v8, v3, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    return-void

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_5

    iget-object v4, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {v4, v1}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_5
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    iget-object v5, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;

    iget-object v6, v5, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v6, v0, v2, v9, v1}, Lcom/android/settingslib/media/InfoMediaManager;->createInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaSession$Token;)Lcom/android/settingslib/media/InfoMediaManager;

    move-result-object v1

    new-instance v6, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v5, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->context:Landroid/content/Context;

    invoke-direct {v6, v2, v9, v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    new-instance v9, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object v0, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;

    iget-object v11, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->context:Landroid/content/Context;

    iget-object v14, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    iget-object v15, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    move-object v10, v9

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;-><init>(Ljava/util/concurrent/Executor;Lcom/android/settingslib/media/LocalMediaManager;Landroid/content/Context;Lcom/android/settingslib/media/DeviceIconUtil;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;)V

    new-instance v10, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V

    iget-object v0, v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;

    invoke-direct {v2, v10, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry$start$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$Entry;->stop()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->remove(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    :cond_0
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    move-object v3, v2

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    :cond_2
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
