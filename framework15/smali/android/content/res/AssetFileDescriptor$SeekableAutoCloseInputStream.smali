.class Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekableAutoCloseInputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;
    }
.end annotation


# instance fields
.field private final blacklist mFileOffset:J

.field private blacklist mOffset:J

.field private blacklist mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

.field private blacklist mTotalSize:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    return-void
.end method

.method private blacklist updateChannelPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mTotalSize:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v2, v0

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;-><init>(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffsetCorrectFileChannel:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api mark(I)V
    .locals 0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :goto_0
    return v3
.end method

.method public whitelist test-api read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    add-long v5, v2, v4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    :cond_3
    if-lez v1, :cond_4

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized whitelist test-api reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public whitelist test-api skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_0
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    int-to-long p1, v0

    :cond_1
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mOffset:J

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->mFileOffset:J

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->updateChannelPosition(J)V

    return-wide p1
.end method
