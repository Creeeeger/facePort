.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o CMD_CLOSE:I = 0x3

.field private static final greylist-max-o CMD_FSYNC:I = 0x2

.field private static final greylist-max-o CMD_WRITE:I = 0x1

.field private static final greylist-max-o MSG_LENGTH:I = 0x8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private blacklist mClient:Landroid/os/ParcelFileDescriptor;

.field private volatile greylist-max-o mClosed:Z

.field private blacklist mServer:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTarget:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o forceClose()V
    .locals 1

    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return-void
.end method

.method public blacklist getClientSocket()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o isClosed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public whitelist test-api run()V
    .locals 8

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    if-ne v2, v3, :cond_6

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x4

    invoke-static {v0, v5, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    :goto_1
    if-lez v3, :cond_2

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    array-length v6, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v0, v4, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v0, v4, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_5
    :goto_2
    goto/16 :goto_0

    :cond_6
    :goto_3
    nop

    :goto_4
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_5

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "FileBridge"

    const-string v4, "Failed during bridge"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    throw v2
.end method

.method public blacklist setTargetFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
