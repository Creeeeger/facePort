.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private greylist-max-o mBlocked:Z

.field private greylist-max-o mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMessages:Landroid/os/Message;

.field private greylist mNextBarrierToken:I

.field private greylist-max-o mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private greylist mPtr:J

.field private final greylist mQuitAllowed:Z

.field private greylist-max-o mQuitting:Z


# direct methods
.method constructor greylist-max-o <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 78
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 79
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 80
    return-void
.end method

.method private greylist-max-r dispatchEvents(II)I
    .locals 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 278
    .local v0, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v0, :cond_0

    .line 279
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 282
    :cond_0
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 283
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 284
    if-nez p2, :cond_1

    .line 285
    monitor-exit p0

    return v1

    .line 288
    :cond_1
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 289
    .local v2, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 290
    .local v3, "seq":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v4

    .line 295
    .local v4, "newWatchedEvents":I
    if-eqz v4, :cond_2

    .line 296
    or-int/lit8 v4, v4, 0x4

    .line 301
    :cond_2
    if-eq v4, v1, :cond_4

    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 304
    .local v5, "index":I
    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    iget v6, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v3, :cond_3

    .line 306
    iput v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 307
    if-nez v4, :cond_3

    .line 308
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 311
    .end local v5    # "index":I
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 315
    :cond_4
    :goto_0
    return v4

    .line 290
    .end local v0    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v3    # "seq":I
    .end local v4    # "newWatchedEvents":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private greylist-max-o dispose()V
    .locals 5

    .line 94
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 95
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 96
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 98
    :cond_0
    return-void
.end method

.method private greylist-max-o isPollingLocked()Z
    .locals 2

    .line 168
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeInit()J
.end method

.method private static native greylist-max-o nativeIsPolling(J)Z
.end method

.method private native greylist nativePollOnce(JI)V
.end method

.method private static native greylist-max-o nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native greylist-max-o nativeWake(J)V
.end method

.method private greylist-max-o postSyncBarrier(J)I
    .locals 6
    .param p1, "when"    # J

    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 481
    .local v0, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 483
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 484
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 488
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 489
    :goto_0
    if-eqz v3, :cond_0

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 490
    move-object v2, v3

    .line 491
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    .line 494
    :cond_0
    if-eqz v2, :cond_1

    .line 495
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 496
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 498
    :cond_1
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 499
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 501
    :goto_1
    monitor-exit p0

    return v0

    .line 502
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o removeAllFutureMessagesLocked()V
    .locals 6

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 888
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 889
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 890
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 891
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_1

    .line 895
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 896
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_1

    .line 897
    return-void

    .line 899
    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    .line 900
    nop

    .line 904
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 906
    :cond_2
    move-object v2, v3

    .line 907
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 908
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 909
    if-nez v3, :cond_2

    goto :goto_1

    .line 902
    :cond_3
    move-object v2, v3

    goto :goto_0

    .line 912
    .end local v3    # "n":Landroid/os/Message;
    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o removeAllMessagesLocked()V
    .locals 2

    .line 877
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 878
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 879
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 880
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 881
    move-object v0, v1

    .line 882
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 883
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 884
    return-void
.end method

.method private greylist-max-o updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 233
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 235
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 236
    .local v1, "index":I
    const/4 v2, 0x0

    .line 237
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 239
    if-ltz v1, :cond_0

    .line 240
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 241
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_0

    .line 242
    return-void

    .line 247
    :cond_0
    if-eqz p2, :cond_3

    .line 248
    or-int/lit8 p2, p2, 0x4

    .line 249
    if-nez v2, :cond_2

    .line 250
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 251
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 253
    :cond_1
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    move-object v2, v3

    .line 254
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_2
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 257
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 258
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 260
    :goto_0
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_1

    .line 261
    :cond_3
    if-eqz v2, :cond_4

    .line 262
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 263
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 264
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 266
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 125
    if-eqz p1, :cond_0

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 197
    if-eqz p1, :cond_1

    .line 200
    if-eqz p3, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;

    .line 915
    monitor-enter p0

    .line 916
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 917
    .local v0, "now":J
    const/4 v2, 0x0

    .line 918
    .local v2, "n":I
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v3, :cond_2

    .line 919
    if-eqz p3, :cond_0

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_1

    .line 920
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 922
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 918
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    .line 924
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(Total messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", polling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quitting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 926
    .end local v0    # "now":J
    .end local v2    # "n":I
    monitor-exit p0

    .line 927
    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 930
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 931
    .local v0, "messageQueueToken":J
    monitor-enter p0

    .line 932
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_0

    .line 933
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Message;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 932
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v3

    goto :goto_0

    .line 935
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-wide v2, 0x10800000002L

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 936
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 937
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 939
    return-void

    .line 937
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method greylist-max-o enqueueMessage(Landroid/os/Message;J)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 550
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 559
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 564
    monitor-exit p0

    return v1

    .line 567
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 568
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 569
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 571
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_5

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto :goto_2

    .line 580
    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 583
    .local v1, "needWake":Z
    :cond_2
    :goto_0
    move-object v3, v0

    .line 584
    .local v3, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 585
    if-eqz v0, :cond_4

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_3

    .line 586
    goto :goto_1

    .line 588
    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 589
    const/4 v1, 0x0

    goto :goto_0

    .line 592
    :cond_4
    :goto_1
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 593
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 573
    .end local v1    # "needWake":Z
    .end local v3    # "prev":Landroid/os/Message;
    :cond_5
    :goto_2
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 574
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 575
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 597
    .restart local v1    # "needWake":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 598
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 600
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_6
    monitor-exit p0

    .line 601
    return v2

    .line 556
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "msg":Landroid/os/Message;
    .end local p2    # "when":J
    throw v0

    .line 600
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "msg":Landroid/os/Message;
    .restart local p2    # "when":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 551
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    throw v0
.end method

.method blacklist hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 622
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 623
    return v0

    .line 626
    :cond_0
    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 628
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_3

    .line 629
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 632
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 634
    :cond_3
    monitor-exit p0

    return v0

    .line 635
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 657
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 658
    return v0

    .line 661
    :cond_0
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 663
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_2

    .line 664
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1

    .line 665
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 667
    :cond_1
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 669
    :cond_2
    monitor-exit p0

    return v0

    .line 670
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 605
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 606
    return v0

    .line 609
    :cond_0
    monitor-enter p0

    .line 610
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 611
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_3

    .line 612
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 613
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 615
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 617
    :cond_3
    monitor-exit p0

    return v0

    .line 618
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-r hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 640
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 641
    return v0

    .line 644
    :cond_0
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 646
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_3

    .line 647
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 648
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 650
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 652
    :cond_3
    monitor-exit p0

    return v0

    .line 653
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist isIdle()Z
    .locals 4

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    .line 111
    .end local v0    # "now":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o isPolling()Z
    .locals 1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist next()Landroid/os/Message;
    .locals 13

    .line 323
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 324
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 325
    return-object v3

    .line 328
    :cond_0
    const/4 v2, -0x1

    .line 329
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    .line 331
    .local v4, "nextPollTimeoutMillis":I
    :goto_0
    if-eqz v4, :cond_1

    .line 332
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 335
    :cond_1
    invoke-direct {p0, v0, v1, v4}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 337
    monitor-enter p0

    .line 339
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 340
    .local v5, "now":J
    const/4 v7, 0x0

    .line 341
    .local v7, "prevMsg":Landroid/os/Message;
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 342
    .local v8, "msg":Landroid/os/Message;
    if-eqz v8, :cond_3

    iget-object v9, v8, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_3

    .line 345
    :cond_2
    move-object v7, v8

    .line 346
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v8, v9

    .line 347
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/os/Message;->isAsynchronous()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    :cond_3
    if-eqz v8, :cond_6

    .line 350
    iget-wide v9, v8, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_4

    .line 352
    iget-wide v9, v8, Landroid/os/Message;->when:J

    sub-long/2addr v9, v5

    const-wide/32 v11, 0x7fffffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v4, v9

    goto :goto_2

    .line 355
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 356
    if-eqz v7, :cond_5

    .line 357
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 359
    :cond_5
    iget-object v9, v8, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 361
    :goto_1
    iput-object v3, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 363
    invoke-virtual {v8}, Landroid/os/Message;->markInUse()V

    .line 364
    monitor-exit p0

    return-object v8

    .line 368
    :cond_6
    const/4 v4, -0x1

    .line 372
    :goto_2
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v9, :cond_7

    .line 373
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 374
    monitor-exit p0

    return-object v3

    .line 380
    :cond_7
    if-gez v2, :cond_9

    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v9, :cond_8

    iget-wide v9, v9, Landroid/os/Message;->when:J

    cmp-long v9, v5, v9

    if-gez v9, :cond_9

    .line 382
    :cond_8
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 384
    :cond_9
    if-gtz v2, :cond_a

    .line 386
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 387
    monitor-exit p0

    goto :goto_0

    .line 390
    :cond_a
    iget-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v9, :cond_b

    .line 391
    const/4 v9, 0x4

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 393
    :cond_b
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v9, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 394
    .end local v5    # "now":J
    .end local v7    # "prevMsg":Landroid/os/Message;
    .end local v8    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 398
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_d

    .line 399
    iget-object v6, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v6, v5

    .line 400
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    aput-object v3, v6, v5

    .line 402
    const/4 v6, 0x0

    .line 404
    .local v6, "keep":Z
    :try_start_1
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v8

    .line 407
    goto :goto_4

    .line 405
    :catchall_0
    move-exception v8

    .line 406
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "MessageQueue"

    const-string v10, "IdleHandler threw exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_4
    if-nez v6, :cond_c

    .line 410
    monitor-enter p0

    .line 411
    :try_start_2
    iget-object v8, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    monitor-exit p0

    goto :goto_5

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 398
    .end local v6    # "keep":Z
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 417
    .end local v5    # "i":I
    :cond_d
    const/4 v2, 0x0

    .line 421
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 394
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method public greylist postSyncBarrier()I
    .locals 2

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method greylist-max-o quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .line 426
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_2

    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_0

    .line 432
    monitor-exit p0

    return-void

    .line 434
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 436
    if-eqz p1, :cond_1

    .line 437
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 443
    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 444
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 844
    if-nez p1, :cond_0

    .line 845
    return-void

    .line 848
    :cond_0
    monitor-enter p0

    .line 849
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 852
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 853
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 855
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 856
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 857
    move-object v0, v1

    .line 858
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 861
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 862
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 863
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 864
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 865
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 866
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 867
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 868
    goto :goto_1

    .line 871
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 872
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 873
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 874
    return-void

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 811
    if-nez p1, :cond_0

    .line 812
    return-void

    .line 815
    :cond_0
    monitor-enter p0

    .line 816
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 819
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    .line 821
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 822
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 823
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 824
    move-object v0, v1

    .line 825
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 828
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 829
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 830
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 831
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_4

    .line 832
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 833
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 834
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 835
    goto :goto_1

    .line 838
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 839
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 840
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 708
    if-nez p1, :cond_0

    .line 709
    return-void

    .line 712
    :cond_0
    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 716
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 717
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 719
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 720
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 721
    move-object v0, v1

    .line 722
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 725
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 726
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 727
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 728
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 730
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 731
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 732
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 733
    goto :goto_1

    .line 736
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 737
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 738
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist removeEqualMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 776
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 780
    :cond_0
    monitor-enter p0

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 784
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 787
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 788
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 789
    move-object v0, v1

    .line 790
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 793
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 794
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 795
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 796
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 799
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 800
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 801
    goto :goto_1

    .line 804
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 805
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 806
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 777
    :cond_6
    :goto_2
    return-void
.end method

.method public whitelist removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 674
    if-nez p1, :cond_0

    .line 675
    return-void

    .line 678
    :cond_0
    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 682
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 684
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 685
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 686
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 687
    move-object v0, v1

    .line 688
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 691
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 692
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 693
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 694
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 696
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 697
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 698
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 699
    goto :goto_1

    .line 702
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 703
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 704
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 742
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 746
    :cond_0
    monitor-enter p0

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 750
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 752
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 753
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 754
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 755
    move-object v0, v1

    .line 756
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 759
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 760
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 761
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 762
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 764
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 765
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 766
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 767
    goto :goto_1

    .line 770
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 771
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 772
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 743
    :cond_6
    :goto_2
    return-void
.end method

.method public whitelist removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 222
    if-eqz p1, :cond_0

    .line 226
    monitor-enter p0

    .line 227
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 228
    monitor-exit p0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeSyncBarrier(I)V
    .locals 5
    .param p1, "token"    # I

    .line 520
    monitor-enter p0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 523
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_1

    .line 524
    :cond_0
    move-object v0, v1

    .line 525
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 527
    :cond_1
    if-eqz v1, :cond_6

    .line 532
    if-eqz v0, :cond_2

    .line 533
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 534
    const/4 v2, 0x0

    .local v2, "needWake":Z
    goto :goto_2

    .line 536
    .end local v2    # "needWake":Z
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 537
    if-eqz v2, :cond_4

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 539
    .restart local v2    # "needWake":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 543
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_5

    .line 544
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 546
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_5
    monitor-exit p0

    .line 547
    return-void

    .line 528
    .restart local v0    # "prev":Landroid/os/Message;
    .restart local v1    # "p":Landroid/os/Message;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/MessageQueue;
    .end local p1    # "token":I
    throw v2

    .line 546
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .restart local p0    # "this":Landroid/os/MessageQueue;
    .restart local p1    # "token":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
