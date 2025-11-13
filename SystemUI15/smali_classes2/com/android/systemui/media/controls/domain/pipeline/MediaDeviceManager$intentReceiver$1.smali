.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;

    iget-object v0, p1, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->context:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0, v1, v2, v3, v2}, Lcom/android/settingslib/media/InfoMediaManager;->createInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaSession$Token;)Lcom/android/settingslib/media/InfoMediaManager;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p1, p1, Lcom/android/systemui/media/controls/util/LocalMediaManagerFactory;->context:Landroid/content/Context;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4e6e32e7

    if-eq v0, v1, :cond_4

    const p2, -0x18ba89be

    if-eq v0, p2, :cond_2

    const p2, 0x1691e02

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_START"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "MediaDeviceManager"

    const-string p2, "ACTION_MEDIA_ROUTER_SCAN_START"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->startScanOnRouter()V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_STOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "MediaDeviceManager"

    const-string p2, "ACTION_MEDIA_ROUTER_SCAN_STOP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->stopScanOnRouter()V

    goto :goto_0

    :cond_4
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    const-string p1, "MediaDeviceManager"

    const-string p2, "SEM_STREAM_DEVICES_CHANGED_ACTION"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_6
    :goto_0
    return-void
.end method
