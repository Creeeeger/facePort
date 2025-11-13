.class public Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;
.super Ljava/lang/Object;
.source "AudioVolumeGroupChangeHandler.java"


# static fields
.field private static final blacklist AUDIOVOLUMEGROUP_EVENT_NEW_LISTENER:I = 0x4

.field private static final blacklist AUDIOVOLUMEGROUP_EVENT_VOLUME_CHANGED:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "AudioVolumeGroupChangeHandler"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mJniCallback:J

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$VolumeGroupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native blacklist native_finalize()V
.end method

.method private native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_finalize()V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method blacklist handler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist init()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioVolumeGroupChangeHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :cond_1
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler$1;-><init>(Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->native_setup(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist registerListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 3

    const-string v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist unregisterListener(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 1

    const-string v0, "volume group callback shall not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
