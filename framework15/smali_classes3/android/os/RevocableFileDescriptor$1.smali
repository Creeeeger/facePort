.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RevocableFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private blacklist checkRevoked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmRevoked(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/system/ErrnoException;

    const-string v1, "RevocableFileDescriptor"

    sget v2, Landroid/system/OsConstants;->EPERM:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public whitelist onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    return v0
.end method

.method public whitelist onRelease()V
    .locals 2

    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fputmRevoked(Landroid/os/RevocableFileDescriptor;Z)V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    return v0
.end method
