.class public final Lokio/JvmFileHandle;
.super Lokio/FileHandle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(ZLjava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lokio/FileHandle;-><init>(Z)V

    iput-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final declared-synchronized protectedClose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized protectedFlush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized protectedRead(IIJ[B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object p4, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v0, p2, p3

    invoke-virtual {p4, p5, p1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    if-nez p3, :cond_1

    monitor-exit p0

    return v0

    :cond_0
    add-int/2addr p3, p4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return p3

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized protectedSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized protectedWrite(IIJ[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p3, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p3, p5, p1, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
