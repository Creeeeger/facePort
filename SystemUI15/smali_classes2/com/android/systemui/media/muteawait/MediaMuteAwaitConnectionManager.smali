.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public currentMutedDevice:Landroid/media/AudioDeviceAttributes;

.field public final deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/settingslib/media/LocalMediaManager;Landroid/content/Context;Lcom/android/settingslib/media/DeviceIconUtil;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iput-object p4, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    iput-object p5, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    const-string p1, "audio"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;-><init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    return-void
.end method
