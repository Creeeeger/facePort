.class public Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private blacklist mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api mark(I)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
