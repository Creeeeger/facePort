.class public abstract Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final buildIndex(Ljava/util/List;)Ljava/util/Map;
    .locals 23

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "/"

    invoke-static {v0, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    new-instance v1, Lokio/internal/ZipEntry;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1fc

    const/16 v17, 0x0

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v17}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;

    invoke-direct {v1}, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;-><init>()V

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/internal/ZipEntry;

    iget-object v3, v2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-nez v3, :cond_0

    :goto_1
    iget-object v2, v2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    invoke-virtual {v2}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v14, Lokio/internal/ZipEntry;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v21, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v15

    move-wide/from16 v15, v17

    move/from16 v17, v19

    move-object/from16 v18, v20

    invoke-direct/range {v3 .. v18}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final getHex(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readEntry(Lokio/RealBufferedSource;)Lokio/internal/ZipEntry;
    .locals 26

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_8

    const-wide/16 v0, 0x4

    invoke-virtual {v8, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v0

    and-int v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v0

    and-int v2, v0, v1

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v3

    and-int v4, v3, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v7, 0xe

    invoke-virtual {v5, v7, v6}, Ljava/util/GregorianCalendar;->set(II)V

    shr-int/lit8 v7, v4, 0x9

    and-int/lit8 v7, v7, 0x7f

    add-int/lit16 v14, v7, 0x7bc

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0xf

    and-int/lit8 v16, v3, 0x1f

    shr-int/lit8 v3, v2, 0xb

    and-int/lit8 v17, v3, 0x1f

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v18, v2, 0x3f

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v19, v0, 0x1

    add-int/lit8 v15, v4, -0x1

    move-object v13, v5

    invoke-virtual/range {v13 .. v19}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long v9, v2, v4

    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v2

    and-int v15, v2, v1

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v2

    and-int v7, v2, v1

    const-wide/16 v1, 0x8

    invoke-virtual {v8, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v1

    move/from16 v16, v7

    int-to-long v6, v1

    and-long/2addr v6, v4

    iput-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v0, v4

    const-wide/16 v17, 0x0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    int-to-long v4, v1

    move-object v3, v2

    goto :goto_2

    :cond_1
    move-object v3, v2

    move-wide/from16 v4, v17

    :goto_2
    iget-wide v1, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide v19, 0xffffffffL

    cmp-long v1, v1, v19

    const/16 v0, 0x8

    if-nez v1, :cond_2

    int-to-long v1, v0

    add-long/2addr v4, v1

    :cond_2
    iget-wide v1, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v1, v1, v19

    if-nez v1, :cond_3

    int-to-long v0, v0

    add-long/2addr v4, v0

    :cond_3
    move-wide/from16 v19, v4

    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v5, Lokio/internal/ZipFilesKt$readEntry$1;

    move-object v0, v5

    move-object v1, v6

    move-object v4, v3

    move-wide/from16 v2, v19

    move-object/from16 v21, v4

    move-object v4, v14

    move-object/from16 v22, v13

    move-object v13, v5

    move-object/from16 v5, p0

    move/from16 v23, v12

    move-object v12, v6

    move-object v6, v11

    move-wide/from16 v24, v9

    move/from16 v9, v16

    move-object v10, v7

    move-object/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lokio/internal/ZipFilesKt$readEntry$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-static {v8, v15, v13}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V

    cmp-long v0, v19, v17

    if-lez v0, :cond_5

    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    int-to-long v0, v9

    invoke-virtual {v8, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v1, "/"

    invoke-static {v0, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v3

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    new-instance v0, Lokio/internal/ZipEntry;

    iget-wide v8, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v10, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v1, v21

    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v2, v0

    move-wide/from16 v6, v24

    move/from16 v12, v23

    move-object/from16 v13, v22

    invoke-direct/range {v2 .. v15}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-static {v2, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bad zip: expected "

    const-string v4, " but was "

    invoke-static {v3, v1, v4, v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V
    .locals 11

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-virtual {p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-wide v6, v6, Lokio/Buffer;->size:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-wide v9, v8, Lokio/Buffer;->size:J

    add-long/2addr v9, v4

    sub-long/2addr v9, v6

    cmp-long v2, v9, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->skip(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p2, "unsupported zip: too many bytes processed for "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final readOrSkipLocalHeader(Lokio/RealBufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lokio/FileMetadata;->lastModifiedAtMillis:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v6

    const v7, 0x4034b50

    if-ne v6, v7, :cond_3

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v6

    const v7, 0xffff

    and-int v8, v6, v7

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    const-wide/16 v8, 0x12

    invoke-virtual {v0, v8, v9}, Lokio/RealBufferedSource;->skip(J)V

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v6

    int-to-long v8, v6

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v6

    and-int/2addr v6, v7

    invoke-virtual {v0, v8, v9}, Lokio/RealBufferedSource;->skip(J)V

    if-nez v1, :cond_1

    int-to-long v1, v6

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    return-object v3

    :cond_1
    new-instance v3, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;

    invoke-direct {v3, v0, v2, v4, v5}, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;-><init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v0, v6, v3}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/RealBufferedSource;ILkotlin/jvm/functions/Function2;)V

    new-instance v0, Lokio/FileMetadata;

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/Long;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/Long;

    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Ljava/lang/Long;

    iget-object v11, v1, Lokio/FileMetadata;->size:Ljava/lang/Long;

    const/4 v15, 0x0

    iget-boolean v8, v1, Lokio/FileMetadata;->isRegularFile:Z

    iget-boolean v9, v1, Lokio/FileMetadata;->isDirectory:Z

    const/4 v10, 0x0

    const/16 v16, 0x80

    const/16 v17, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {v8}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-static {v2, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {v7}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bad zip: expected "

    const-string v4, " but was "

    invoke-static {v3, v1, v4, v2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
