.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v2, v2, p2

    sget-wide v4, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v4, v2, v4

    sget-wide v6, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    mul-long/2addr v4, v6

    sub-long v6, v2, v4

    long-to-int v6, v6

    add-int v0, p4, v6

    int-to-long v14, v0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :try_start_0
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v7, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v13, v0, v7

    iget-object v0, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v8, 0x0

    move-wide v10, v14

    move-wide/from16 v21, v14

    move-object v14, v0

    move-wide v15, v4

    :try_start_1
    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v7
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v14, v7

    :try_start_2
    new-instance v0, Ljava/nio/DirectByteBuffer;

    int-to-long v7, v6

    add-long v9, v14, v7

    iget-object v11, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v0

    move/from16 v8, p4

    invoke-direct/range {v7 .. v13}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v0, v14, v19

    if-eqz v0, :cond_0

    move-wide/from16 v8, v21

    :try_start_4
    invoke-static {v14, v15, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, v21

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v8, v21

    move-object v10, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide/from16 v8, v21

    move-wide/from16 v17, v14

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v8, v21

    move-object v10, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v8, v21

    move-wide/from16 v17, v14

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v8, v21

    move-object v10, v0

    move-wide/from16 v14, v17

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v8, v21

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v7, p1

    move-wide v8, v14

    move-object v10, v0

    move-wide/from16 v14, v17

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v7, p1

    move-wide v8, v14

    :goto_2
    :try_start_5
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to mmap "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    move-object v10, v0

    move-wide/from16 v14, v17

    :goto_3
    cmp-long v0, v14, v19

    if-eqz v0, :cond_1

    :try_start_6
    invoke-static {v14, v15, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_4
    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_5
    throw v10
.end method

.method public blacklist size()J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
