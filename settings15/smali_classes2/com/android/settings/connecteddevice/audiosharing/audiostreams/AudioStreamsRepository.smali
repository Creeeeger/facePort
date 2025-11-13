.class public final Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;


# instance fields
.field public final mBroadcastIdToMetadataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->mBroadcastIdToMetadataCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;
    .locals 2

    const-class v0, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    invoke-direct {v1}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;-><init>()V

    sput-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;->sInstance:Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamsRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
