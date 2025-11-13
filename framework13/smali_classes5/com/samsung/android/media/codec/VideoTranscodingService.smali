.class public Lcom/samsung/android/media/codec/VideoTranscodingService;
.super Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;
.source "VideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    }
.end annotation


# static fields
.field private static final blacklist HANDLER_MESSAGE_QUEUE_UPDATED:I = 0x0

.field private static final blacklist MAX_PRINT_TASKS:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "VideoTranscodingService"

.field private static final blacklist TASK_STATE_STOPPED:I = 0x2

.field private static final blacklist TASK_STATE_TRANSCODING:I = 0x1

.field private static final blacklist TASK_STATE_WAITING:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentId:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mStartingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/media/codec/VideoTranscodingService$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskLock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mWaitingTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/media/codec/VideoTranscodingService$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStartingTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskLock(Lcom/samsung/android/media/codec/VideoTranscodingService;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprintTasks(Lcom/samsung/android/media/codec/VideoTranscodingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->printTasks()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mContext:Landroid/content/Context;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mCurrentId:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TranscodingHandler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/samsung/android/media/codec/VideoTranscodingService$1;

    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/codec/VideoTranscodingService$1;-><init>(Lcom/samsung/android/media/codec/VideoTranscodingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method private blacklist addTask(Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)V
    .locals 2
    .param p1, "task"    # Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTask("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    nop

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->updateQueues()V

    .line 201
    return-void

    .line 197
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 198
    throw v0
.end method

.method private blacklist printTasks()V
    .locals 11

    .line 280
    const-string v0, ""

    .line 281
    .local v0, "tasks":Ljava/lang/String;
    const/4 v1, 0x1

    .line 282
    .local v1, "i":I
    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " ... more"

    const-string v5, " "

    const/16 v6, 0x14

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 283
    .local v3, "s":Ljava/lang/String;
    if-le v1, v6, :cond_0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    goto :goto_1

    .line 287
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    nop

    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 289
    goto :goto_0

    .line 290
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting tasks("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "VideoTranscodingService"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v0, ""

    .line 293
    const/4 v1, 0x1

    .line 294
    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    .line 295
    .local v8, "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    if-le v1, v6, :cond_2

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    goto :goto_3

    .line 299
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    nop

    .end local v8    # "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    add-int/lit8 v1, v1, 0x1

    .line 301
    goto :goto_2

    .line 302
    :cond_3
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting tasks("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method private blacklist updateQueues()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;
    .locals 6
    .param p1, "mode"    # I
    .param p2, "callback"    # Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    monitor-enter p0

    .line 156
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 157
    :try_start_0
    const-string v1, "VideoTranscodingService"

    const-string v2, "callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object v0

    .line 161
    .end local p0    # "this":Lcom/samsung/android/media/codec/VideoTranscodingService;
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mCurrentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "id":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mCurrentId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mCurrentId:I

    .line 163
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 164
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mCurrentId:I

    .line 166
    :cond_1
    new-instance v2, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    invoke-direct {v2, v1, p1, p2}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;-><init>(Ljava/lang/String;ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)V

    .line 167
    .local v2, "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    new-instance v3, Lcom/samsung/android/media/codec/VideoTranscodingService$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/media/codec/VideoTranscodingService$2;-><init>(Lcom/samsung/android/media/codec/VideoTranscodingService;Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    move-result v3

    .line 178
    .local v3, "ret":Z
    if-nez v3, :cond_2

    .line 179
    const-string v4, "VideoTranscodingService"

    const-string v5, "Failed to link to death."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit p0

    return-object v0

    .line 183
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lcom/samsung/android/media/codec/VideoTranscodingService;->addTask(Lcom/samsung/android/media/codec/VideoTranscodingService$Task;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    monitor-exit p0

    return-object v1

    .line 155
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    .end local v3    # "ret":Z
    .end local p1    # "mode":I
    .end local p2    # "callback":Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist startTask(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTask("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    .line 210
    .local v0, "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    if-nez v0, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no task id("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 212
    return-void

    .line 214
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    nop

    .end local v0    # "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    nop

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->updateQueues()V

    .line 223
    return-void

    .line 219
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    throw v0
.end method

.method public blacklist stopTask(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopTask("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "isRemoved":Z
    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, "removedTask":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "Task("

    if-eqz v3, :cond_0

    .line 236
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mWaitingTasks:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    move-object v2, v3

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") has been removed in w queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    goto :goto_1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;

    .line 241
    .local v5, "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    invoke-virtual {v5}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    move-object v2, v5

    .line 243
    invoke-virtual {v5}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getState()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") try to stop."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v5}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->stop()V

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mStartingTasks:Ljava/util/Queue;

    invoke-interface {v3, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") has been removed in s queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_1

    .line 252
    .end local v5    # "task":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    :cond_2
    goto :goto_0

    .line 255
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 256
    invoke-virtual {v2}, Lcom/samsung/android/media/codec/VideoTranscodingService$Task;->unlinkToDeath()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 261
    .end local v2    # "removedTask":Lcom/samsung/android/media/codec/VideoTranscodingService$Task;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 262
    nop

    .line 264
    if-eqz v0, :cond_5

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/media/codec/VideoTranscodingService;->updateQueues()V

    goto :goto_3

    .line 267
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no task id("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_3
    return-void

    .line 261
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/media/codec/VideoTranscodingService;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 262
    throw v1
.end method
