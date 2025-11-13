.class Landroid/util/apk/ReadFileDataSource;
.super Ljava/lang/Object;
.source "ReadFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist CHUNK_SIZE:I = 0x100000


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    iput-wide p4, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p4

    const/high16 v0, 0x100000

    :try_start_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    iget-wide v4, v1, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    add-long v10, v4, p2

    int-to-long v4, v2

    add-long v12, v10, v4

    move-wide v4, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v6, v0

    move-wide v14, v4

    move-wide v8, v6

    :goto_0
    cmp-long v0, v14, v12

    if-gez v0, :cond_0

    iget-object v4, v1, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    long-to-int v7, v8

    move-object v5, v3

    move-wide/from16 v16, v8

    move-wide v8, v14

    invoke-static/range {v4 .. v9}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-interface {v5, v4}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    int-to-long v6, v0

    add-long/2addr v14, v6

    sub-long v6, v12, v14

    const-wide/32 v8, 0x100000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v5, p1

    move-wide/from16 v16, v8

    nop

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist size()J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    return-wide v0
.end method
