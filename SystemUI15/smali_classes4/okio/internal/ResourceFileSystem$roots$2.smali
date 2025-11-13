.class final Lokio/internal/ResourceFileSystem$roots$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/internal/ResourceFileSystem;


# direct methods
.method public constructor <init>(Lokio/internal/ResourceFileSystem;)V
    .locals 0

    iput-object p1, p0, Lokio/internal/ResourceFileSystem$roots$2;->this$0:Lokio/internal/ResourceFileSystem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/internal/ResourceFileSystem$roots$2;->this$0:Lokio/internal/ResourceFileSystem;

    iget-object v1, v0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    sget-object v6, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v6, v7}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;)Lokio/Path;

    move-result-object v4

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "jar:file:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_4
    const/4 v4, 0x6

    const-string v7, "!"

    invoke-static {v2, v7, v4}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    goto :goto_3

    :cond_5
    sget-object v7, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v8, Ljava/io/File;

    const/4 v9, 0x4

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v7, v8}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;)Lokio/Path;

    move-result-object v2

    sget-object v4, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;->INSTANCE:Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;

    const-string v7, "not a zip: size="

    invoke-virtual {v5, v2}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Lokio/FileHandle;->size()J

    move-result-wide v9

    const/16 v11, 0x16

    int-to-long v11, v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_11

    const-wide/32 v13, 0x10000

    sub-long v13, v9, v13

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :goto_4
    invoke-virtual {v8, v9, v10}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object v7

    new-instance v15, Lokio/RealBufferedSource;

    invoke-direct {v15, v7}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    invoke-virtual {v15}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    const v6, 0x6054b50

    if-ne v7, v6, :cond_f

    :try_start_2
    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v13

    and-int/2addr v13, v7

    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v14

    and-int/2addr v14, v7

    int-to-long v11, v14

    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    and-int/2addr v14, v7

    move-object/from16 v24, v8

    int-to-long v7, v14

    cmp-long v7, v11, v7

    const-string v8, "unsupported zip: spanned"

    if-nez v7, :cond_e

    if-nez v6, :cond_e

    if-nez v13, :cond_e

    const-wide/16 v6, 0x4

    :try_start_3
    invoke-virtual {v15, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual {v15}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v6

    int-to-long v6, v6

    const-wide v13, 0xffffffffL

    and-long v19, v6, v13

    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v6

    const v7, 0xffff

    and-int v21, v6, v7

    new-instance v6, Lokio/internal/EocdRecord;

    move-object/from16 v16, v6

    move-wide/from16 v17, v11

    invoke-direct/range {v16 .. v21}, Lokio/internal/EocdRecord;-><init>(JJI)V

    iget v7, v6, Lokio/internal/EocdRecord;->commentByteCount:I

    int-to-long v11, v7

    invoke-virtual {v15, v11, v12}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    invoke-virtual {v15}, Lokio/RealBufferedSource;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/16 v11, 0x14

    int-to-long v11, v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_a

    move-object/from16 v13, v24

    :try_start_5
    invoke-virtual {v13, v9, v10}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object v9

    new-instance v10, Lokio/RealBufferedSource;

    invoke-direct {v10, v9}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v10}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v9

    const v14, 0x7064b50

    if-ne v9, v14, :cond_9

    invoke-virtual {v10}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v9

    invoke-virtual {v10}, Lokio/RealBufferedSource;->readLongLe()J

    move-result-wide v14

    invoke-virtual {v10}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    if-nez v9, :cond_8

    invoke-virtual {v13, v14, v15}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object v9

    new-instance v11, Lokio/RealBufferedSource;

    invoke-direct {v11, v9}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v11}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v9

    const v12, 0x6064b50

    if-ne v9, v12, :cond_7

    const-wide/16 v14, 0xc

    invoke-virtual {v11, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual {v11}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v9

    invoke-virtual {v11}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v12

    invoke-virtual {v11}, Lokio/RealBufferedSource;->readLongLe()J

    move-result-wide v15

    invoke-virtual {v11}, Lokio/RealBufferedSource;->readLongLe()J

    move-result-wide v17

    cmp-long v14, v15, v17

    if-nez v14, :cond_6

    if-nez v9, :cond_6

    if-nez v12, :cond_6

    const-wide/16 v8, 0x8

    invoke-virtual {v11, v8, v9}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual {v11}, Lokio/RealBufferedSource;->readLongLe()J

    move-result-wide v17

    new-instance v8, Lokio/internal/EocdRecord;

    iget v6, v6, Lokio/internal/EocdRecord;->commentByteCount:I

    move-object v14, v8

    move/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lokio/internal/EocdRecord;-><init>(JJI)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v6, 0x0

    :try_start_8
    invoke-static {v11, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v6, v8

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :cond_6
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v12}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad zip: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_6
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v8, 0x0

    :try_start_c
    invoke-static {v10, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v8, v13

    goto/16 :goto_10

    :goto_8
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    move-object/from16 v13, v24

    :goto_9
    iget-wide v8, v6, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v8, v9}, Lokio/FileHandle;->source(J)Lokio/FileHandle$FileHandleSource;

    move-result-object v11

    new-instance v12, Lokio/RealBufferedSource;

    invoke-direct {v12, v11}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    iget-wide v14, v6, Lokio/internal/EocdRecord;->entryCount:J

    const-wide/16 v22, 0x0

    :goto_a
    cmp-long v6, v22, v14

    if-gez v6, :cond_d

    invoke-static {v12}, Lokio/internal/ZipFilesKt;->readEntry(Lokio/RealBufferedSource;)Lokio/internal/ZipEntry;

    move-result-object v6

    move-wide/from16 v16, v14

    iget-wide v14, v6, Lokio/internal/ZipEntry;->offset:J

    cmp-long v11, v14, v8

    if-gez v11, :cond_c

    invoke-virtual {v4, v6}, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_d

    :cond_b
    :goto_b
    const-wide/16 v14, 0x1

    add-long v22, v22, v14

    move-wide/from16 v14, v16

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v6, 0x0

    :try_start_10
    invoke-static {v12, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v10}, Lokio/internal/ZipFilesKt;->buildIndex(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    new-instance v8, Lokio/ZipFileSystem;

    invoke-direct {v8, v2, v5, v4, v7}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    invoke-static {v13, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v2, Lkotlin/Pair;

    sget-object v4, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    invoke-direct {v2, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :goto_d
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_7
    move-exception v0

    move-object/from16 v13, v24

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v13, v24

    :goto_e
    move-object v8, v13

    goto :goto_f

    :cond_e
    move-object/from16 v13, v24

    :try_start_13
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object v13, v8

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v15}, Lokio/RealBufferedSource;->close()V

    const-wide/16 v11, -0x1

    add-long/2addr v9, v11

    cmp-long v7, v9, v13

    if-ltz v7, :cond_10

    const-wide/16 v11, 0x0

    goto/16 :goto_4

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :catchall_c
    move-exception v0

    :goto_f
    invoke-virtual {v15}, Lokio/RealBufferedSource;->close()V

    throw v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Lokio/FileHandle;->size()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :goto_10
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    move-object v2, v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_12
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
