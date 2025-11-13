.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field static final greylist-max-o MAX_USBFS_BUFFER_SIZE:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private greylist mBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mClientData:Ljava/lang/Object;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private greylist-max-o mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private greylist-max-o mIsUsingNewQueue:Z

.field private greylist mLength:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-r mNativeContext:J

.field private greylist-max-o mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native greylist-max-o native_cancel()Z
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_dequeue_array([BIZ)I
.end method

.method private native greylist-max-o native_dequeue_direct()I
.end method

.method private native greylist-max-o native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native greylist-max-o native_queue(Ljava/nio/ByteBuffer;II)Z
.end method

.method private native greylist-max-o native_queue_array([BIZ)Z
.end method

.method private native greylist-max-o native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public whitelist cancel()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbDeviceConnection;->cancelRequest(Landroid/hardware/usb/UsbRequest;)Z

    move-result v1

    return v1
.end method

.method blacklist cancelIfOpen()Z
    .locals 5

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const-string v1, "UsbRequest"

    const-string v2, "Detected attempt to cancel a request on a connection which isn\'t open"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist close()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o dequeue(Z)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :cond_2
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    goto :goto_3

    :catchall_0
    move-exception v1

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    nop

    throw v1

    :cond_4
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v3, v5, v0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v3

    :goto_2
    if-ltz v3, :cond_7

    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v1

    if-eqz p1, :cond_6

    :try_start_4
    const-string v4, "UsbRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not have enough space to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    :cond_6
    nop

    throw v1

    :cond_7
    :goto_3
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iput v1, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getClientData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public whitelist initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .locals 7

    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const-string v0, "connection"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "UsbRequest.close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public whitelist queue(Ljava/nio/ByteBuffer;)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist queue(Ljava/nio/ByteBuffer;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist queueIfConnectionOpen(Ljava/nio/ByteBuffer;)Z
    .locals 9

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "request is not initialized"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    xor-int/2addr v1, v2

    const-string v4, "this request is currently queued"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    if-nez p1, :cond_2

    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    invoke-direct {p0, v5, v3, v3}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const-string v7, "number of remaining bytes"

    const/16 v8, 0x4000

    invoke-static {v6, v3, v8, v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v2

    :goto_3
    const-string v7, "buffer can not be read-only when receiving data"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :cond_6
    iget-object v6, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    move-object p1, v6

    :cond_7
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {p0, p1, v2, v6}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_8

    iput-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_8
    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist queueIfConnectionOpen(Ljava/nio/ByteBuffer;I)Z
    .locals 6

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_1

    const/16 v3, 0x4000

    if-le p2, v3, :cond_1

    const/16 p2, 0x4000

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iput v3, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v3, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2, v3, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result p2

    :goto_2
    if-nez p2, :cond_3

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    :cond_3
    monitor-exit v4

    return p2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffer is not direct and has no array"

    invoke-direct {p2, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid connection"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setClientData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-void
.end method
