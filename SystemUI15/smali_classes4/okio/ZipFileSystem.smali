.class public final Lokio/ZipFileSystem;
.super Lokio/FileSystem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ROOT:Lokio/Path;


# instance fields
.field public final entries:Ljava/util/Map;

.field public final fileSystem:Lokio/FileSystem;

.field public final zipPath:Lokio/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ZipFileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ZipFileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "/"

    invoke-static {v0, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    return-void
.end method

.method public constructor <init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/ZipEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    iput-object p1, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    iput-object p2, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    iput-object p3, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "zip file systems are read-only"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createDirectory(Lokio/Path;)V
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "zip file systems are read-only"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final delete(Lokio/Path;)V
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "zip file systems are read-only"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 14

    sget-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/internal/ZipEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v12, Lokio/FileMetadata;

    iget-boolean v3, p1, Lokio/internal/ZipEntry;->isDirectory:Z

    xor-int/lit8 v2, v3, 0x1

    if-eqz v3, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lokio/internal/ZipEntry;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v5, v1

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p1, Lokio/internal/ZipEntry;->lastModifiedAtMillis:Ljava/lang/Long;

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-wide v1, p1, Lokio/internal/ZipEntry;->offset:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return-object v12

    :cond_2
    iget-object p1, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    iget-object p0, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    invoke-virtual {p1, p0}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object p1

    new-instance v1, Lokio/RealBufferedSource;

    invoke-direct {v1, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {v1, v12}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/RealBufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    move-object v1, p1

    move-object p1, v0

    :goto_2
    if-nez v1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {p0}, Lokio/FileHandle;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_3

    :cond_3
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_3
    if-eqz p0, :cond_4

    :try_start_7
    invoke-virtual {p0}, Lokio/FileHandle;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_5
    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_5
    throw v0
.end method

.method public final openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not implemented yet!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openReadWrite(Lokio/Path;)Lokio/FileHandle;
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "zip entries are not writable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final source(Lokio/Path;)Lokio/Source;
    .locals 8

    sget-object v0, Lokio/ZipFileSystem;->ROOT:Lokio/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object v0

    iget-object v2, p0, Lokio/ZipFileSystem;->entries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/internal/ZipEntry;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lokio/ZipFileSystem;->fileSystem:Lokio/FileSystem;

    iget-object p0, p0, Lokio/ZipFileSystem;->zipPath:Lokio/Path;

    invoke-virtual {p1, p0}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    iget-wide v2, v0, Lokio/internal/ZipEntry;->offset:J

    invoke-virtual {p0, v2, v3}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object v2

    new-instance v3, Lokio/RealBufferedSource;

    invoke-direct {v3, v2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lokio/FileHandle;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lokio/FileHandle;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-static {v2, p0}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object v3, p1

    move-object p0, v2

    :goto_1
    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/RealBufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    iget p0, v0, Lokio/internal/ZipEntry;->compressionMethod:I

    iget-wide v4, v0, Lokio/internal/ZipEntry;->size:J

    if-nez p0, :cond_1

    new-instance p0, Lokio/internal/FixedLengthSource;

    invoke-direct {p0, v3, v4, v5, v1}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    goto :goto_2

    :cond_1
    new-instance p0, Lokio/InflaterSource;

    new-instance p1, Lokio/internal/FixedLengthSource;

    iget-wide v6, v0, Lokio/internal/ZipEntry;->compressedSize:J

    invoke-direct {p1, v3, v6, v7, v1}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    new-instance p1, Lokio/internal/FixedLengthSource;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v4, v5, v0}, Lokio/internal/FixedLengthSource;-><init>(Lokio/Source;JZ)V

    move-object p0, p1

    :goto_2
    return-object p0

    :cond_2
    throw p0

    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
