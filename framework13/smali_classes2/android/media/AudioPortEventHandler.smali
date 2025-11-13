.class Landroid/media/AudioPortEventHandler;
.super Ljava/lang/Object;
.source "AudioPortEventHandler.java"


# static fields
.field private static final greylist-max-o AUDIOPORT_EVENT_NEW_LISTENER:I = 0x4

.field private static final greylist-max-o AUDIOPORT_EVENT_PATCH_LIST_UPDATED:I = 0x2

.field private static final greylist-max-o AUDIOPORT_EVENT_PORT_LIST_UPDATED:I = 0x1

.field private static final greylist-max-o AUDIOPORT_EVENT_SERVICE_DIED:I = 0x3

.field private static final greylist-max-o RESCHEDULE_MESSAGE_DELAY_MS:J = 0x64L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioPortEventHandler"


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-r mJniCallback:J

.field private final greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$OnAudioPortUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/AudioPortEventHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioPortEventHandler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method constructor greylist-max-o <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native greylist-max-o native_finalize()V
.end method

.method private native greylist-max-o native_setup(Ljava/lang/Object;)V
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "module_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 185
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 186
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPortEventHandler;

    .line 187
    .local v0, "eventHandler":Landroid/media/AudioPortEventHandler;
    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->handler()Landroid/os/Handler;

    move-result-object v1

    .line 193
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 195
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    .line 197
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1

    .line 154
    invoke-direct {p0}, Landroid/media/AudioPortEventHandler;->native_finalize()V

    .line 155
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 158
    :cond_0
    return-void
.end method

.method greylist-max-o handler()Landroid/os/Handler;
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method greylist-max-o init()V
    .locals 3

    .line 62
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 64
    monitor-exit v0

    return-void

    .line 67
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AudioPortEventHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 70
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Landroid/media/AudioPortEventHandler$1;

    iget-object v2, p0, Landroid/media/AudioPortEventHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/media/AudioPortEventHandler$1;-><init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/AudioPortEventHandler;->native_setup(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    .line 147
    :goto_0
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 162
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void

    .line 164
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 172
    iget-object v0, p0, Landroid/media/AudioPortEventHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioPortEventHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
