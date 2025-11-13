.class Landroid/os/RedactingFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RedactingFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RedactingFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RedactingFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RedactingFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

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

    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v4, :cond_1

    :try_start_0
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v5

    sub-int v8, v4, v11

    int-to-long v6, v11

    add-long v9, v2, v6

    move-object/from16 v6, p4

    move v7, v11

    invoke-static/range {v5 .. v10}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v11, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v5, v0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v11, v5

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    iget-object v0, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v0

    const/4 v5, 0x0

    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_5

    aget-wide v6, v0, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v8, v2

    add-int/lit8 v10, v5, 0x1

    aget-wide v12, v0, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v12, v6

    :goto_4
    cmp-long v10, v12, v8

    const/16 v16, 0x0

    if-gez v10, :cond_2

    sub-long v14, v12, v2

    long-to-int v10, v14

    aput-byte v16, p4, v10

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    goto :goto_4

    :cond_2
    iget-object v10, v1, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v10}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmFreeOffsets(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v10

    array-length v12, v10

    move/from16 v13, v16

    :goto_5
    if-ge v13, v12, :cond_4

    aget-wide v14, v10, v13

    const-wide/16 v17, 0x4

    move-object/from16 v16, v0

    add-long v0, v14, v17

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    move-wide/from16 v21, v17

    :goto_6
    cmp-long v23, v21, v19

    if-gez v23, :cond_3

    move-wide/from16 v23, v0

    sub-long v0, v21, v2

    long-to-int v0, v0

    sub-long v1, v21, v14

    long-to-int v1, v1

    const-string v2, "free"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    const-wide/16 v0, 0x1

    add-long v21, v21, v0

    move-wide/from16 v2, p1

    move-wide/from16 v0, v23

    goto :goto_6

    :cond_3
    move-wide/from16 v23, v0

    const-wide/16 v0, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, v16

    goto :goto_5

    :cond_4
    move-object/from16 v16, v0

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto :goto_3

    :cond_5
    return v11
.end method

.method public whitelist onRelease()V
    .locals 2

    const-string v0, "RedactingFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v0}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v1}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;

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

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    iget-object v2, p0, Landroid/os/RedactingFileDescriptor$1;->this$0:Landroid/os/RedactingFileDescriptor;

    invoke-static {v2}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J

    move-result-object v2

    int-to-long v3, v0

    add-long/2addr v3, p1

    invoke-static {v2, p1, p2, v3, v4}, Landroid/os/RedactingFileDescriptor;->removeRange([JJJ)[J

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/RedactingFileDescriptor;->-$$Nest$fputmRedactRanges(Landroid/os/RedactingFileDescriptor;[J)V

    return v0
.end method
