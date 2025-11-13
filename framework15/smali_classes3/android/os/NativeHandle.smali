.class public final Landroid/os/NativeHandle;
.super Ljava/lang/Object;
.source "NativeHandle.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mFds:[Ljava/io/FileDescriptor;

.field private blacklist mInts:[I

.field private blacklist mOwn:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/io/FileDescriptor;

    new-array v2, v0, [I

    invoke-direct {p0, v1, v2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-array v1, v1, [I

    invoke-direct {p0, v0, v1, p2}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method private constructor blacklist <init>([I[IZ)V
    .locals 1

    invoke-static {p1}, Landroid/os/NativeHandle;->createFileDescriptorArray([I)[Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor whitelist <init>([Ljava/io/FileDescriptor;[IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    invoke-virtual {p1}, [Ljava/io/FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    iput-boolean p3, p0, Landroid/os/NativeHandle;->mOwn:Z

    return-void
.end method

.method private blacklist checkOpen()V
    .locals 2

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is invalidated after close."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createFileDescriptorArray([I)[Ljava/io/FileDescriptor;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist getFdsAsIntArray()[I
    .locals 4

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_1
    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-void
.end method

.method public whitelist dup()Landroid/os/NativeHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v1

    sget v4, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_1
    new-instance v1, Landroid/os/NativeHandle;

    iget-object v2, p0, Landroid/os/NativeHandle;->mInts:[I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-object v1
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    invoke-virtual {p0}, Landroid/os/NativeHandle;->hasSingleFileDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is not single file descriptor. Contents must be retreived through getFileDescriptors and getInts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getInts()[I
    .locals 1

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-object v0
.end method

.method public whitelist hasSingleFileDescriptor()Z
    .locals 2

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
