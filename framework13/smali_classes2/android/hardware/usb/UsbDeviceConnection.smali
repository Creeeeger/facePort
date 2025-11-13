.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDevice:Landroid/hardware/usb/UsbDevice;

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-r mNativeContext:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 63
    return-void
.end method

.method private static greylist-max-o checkBounds([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 414
    if-eqz p0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 415
    .local v0, "bufferLength":I
    :goto_0
    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    add-int v1, p1, p2

    if-gt v1, v0, :cond_1

    .line 418
    return-void

    .line 416
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Buffer start or length out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o native_bulk_request(I[BIII)I
.end method

.method private native greylist-max-o native_claim_interface(IZ)Z
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_control_request(IIII[BIII)I
.end method

.method private native greylist-max-o native_get_desc()[B
.end method

.method private native greylist-max-o native_get_fd()I
.end method

.method private native greylist-max-o native_get_serial()Ljava/lang/String;
.end method

.method private native greylist-max-o native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native greylist-max-o native_release_interface(I)Z
.end method

.method private native greylist-max-o native_request_wait(J)Landroid/hardware/usb/UsbRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_reset_device()Z
.end method

.method private native greylist-max-o native_set_configuration(I)Z
.end method

.method private native greylist-max-o native_set_interface(II)Z
.end method


# virtual methods
.method public whitelist bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "timeout"    # I

    .line 294
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public whitelist bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "timeout"    # I

    .line 314
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 315
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/16 v0, 0x4000

    if-le p4, v0, :cond_0

    .line 317
    const/16 p4, 0x4000

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result v0

    return v0
.end method

.method blacklist cancelRequest(Landroid/hardware/usb/UsbRequest;)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;

    .line 101
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->cancelIfOpen()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "force"    # Z

    .line 185
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist close()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    .line 148
    iget-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 150
    :cond_0
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist controlTransfer(IIII[BII)I
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I
    .param p7, "timeout"    # I

    .line 242
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public whitelist controlTransfer(IIII[BIII)I
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I
    .param p8, "timeout"    # I

    .line 267
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 268
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    nop

    .line 429
    return-void

    .line 427
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    throw v0
.end method

.method public greylist-max-o getContext()Landroid/content/Context;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getFileDescriptor()I
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public whitelist getRawDescriptors()[B
    .locals 1

    .line 172
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSerial()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist isOpen()Z
    .locals 4

    .line 83
    iget-wide v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;

    .line 66
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v1

    .line 71
    .local v1, "wasOpened":Z
    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Landroid/hardware/usb/UsbDeviceConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v3, "UsbDeviceConnection.close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 75
    :cond_0
    monitor-exit v0

    return v1

    .line 76
    .end local v1    # "wasOpened":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 129
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 134
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbRequest;->queueIfConnectionOpen(Ljava/nio/ByteBuffer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/usb/UsbRequest;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "length"    # I

    .line 115
    iget-object v0, p0, Landroid/hardware/usb/UsbDeviceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/hardware/usb/UsbRequest;->queueIfConnectionOpen(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 194
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 3

    .line 357
    const/4 v0, 0x0

    .line 360
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    const-wide/16 v1, -0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v1

    .line 365
    :goto_0
    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 366
    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    .line 369
    :cond_1
    return-object v0
.end method

.method public whitelist requestWait(J)Landroid/hardware/usb/UsbRequest;
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 394
    const-string/jumbo v0, "timeout"

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide p1

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait(J)Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 397
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_0

    .line 398
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbRequest;->dequeue(Z)V

    .line 400
    :cond_0
    return-object v0
.end method

.method public whitelist resetDevice()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_reset_device()Z

    move-result v0

    return v0
.end method

.method public whitelist setConfiguration(Landroid/hardware/usb/UsbConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/usb/UsbConfiguration;

    .line 213
    invoke-virtual {p1}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_configuration(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 2
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .line 204
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->native_set_interface(II)Z

    move-result v0

    return v0
.end method
