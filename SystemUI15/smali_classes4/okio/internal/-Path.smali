.class public abstract Lokio/internal/-Path;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANY_SLASH:Lokio/ByteString;

.field public static final BACKSLASH:Lokio/ByteString;

.field public static final DOT:Lokio/ByteString;

.field public static final DOT_DOT:Lokio/ByteString;

.field public static final SLASH:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/"

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    const-string v0, "\\"

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    const-string v0, "/\\"

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->ANY_SLASH:Lokio/ByteString;

    const-string v0, "."

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    const-string v0, ".."

    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    return-void
.end method

.method public static final access$rootLength(Lokio/Path;)I
    .locals 6

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0, v2}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    const/16 v3, 0x5c

    const/4 v5, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v2, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-virtual {v0, v2, v5}, Lokio/ByteString;->indexOf(Lokio/ByteString;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result p0

    move v1, p0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-le v0, v5, :cond_6

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0, v5}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_5

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x41

    if-gt v0, p0, :cond_6

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_6

    :goto_0
    const/4 v1, 0x3

    :cond_6
    :goto_1
    return v1
.end method

.method public static final commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-static {p0}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    :cond_2
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v1, p0}, Lokio/Buffer;->write(Lokio/ByteString;)V

    iget-wide v2, v1, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    invoke-virtual {v1, v0}, Lokio/Buffer;->write(Lokio/ByteString;)V

    :cond_3
    iget-object p0, p1, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v1, p0}, Lokio/Buffer;->write(Lokio/ByteString;)V

    invoke-static {v1, p2}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final getSlash(Lokio/Path;)Lokio/ByteString;
    .locals 3

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-static {v0, v1}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v1, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {p0, v1}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result p0

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final toPath(Lokio/Buffer;Z)Lokio/Path;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sget-object v5, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-virtual {v0, v5}, Lokio/Buffer;->rangeEquals(Lokio/ByteString;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-virtual {v0, v5}, Lokio/Buffer;->rangeEquals(Lokio/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v6, :cond_1

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    sget-object v8, Lokio/internal/-Path;->ANY_SLASH:Lokio/ByteString;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    if-eqz v6, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(ILokio/Buffer;)V

    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(ILokio/Buffer;)V

    goto/16 :goto_4

    :cond_2
    if-lez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(ILokio/Buffer;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v8, v9, v10}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v13

    if-nez v2, :cond_5

    cmp-long v2, v13, v11

    if-nez v2, :cond_4

    sget-object v2, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {v2}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v2

    invoke-static {v2}, Lokio/internal/-Path;->toSlash(B)Lokio/ByteString;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-wide v4, v0, Lokio/Buffer;->size:J

    const-wide/16 v11, 0x2

    cmp-long v4, v4, v11

    if-gez v4, :cond_7

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->getByte(J)B

    move-result v4

    int-to-char v4, v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_9

    const/16 v5, 0x7b

    if-ge v4, v5, :cond_9

    goto :goto_3

    :cond_9
    const/16 v5, 0x41

    if-gt v5, v4, :cond_b

    const/16 v5, 0x5b

    if-ge v4, v5, :cond_b

    :goto_3
    cmp-long v4, v13, v11

    if-nez v4, :cond_a

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v0, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v0, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :cond_b
    :goto_4
    iget-wide v4, v1, Lokio/Buffer;->size:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_c

    move v4, v7

    goto :goto_5

    :cond_c
    move v4, v3

    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v11

    sget-object v12, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    if-nez v11, :cond_15

    invoke-virtual {v0, v8, v9, v10}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v11, v13, v15

    if-nez v11, :cond_e

    iget-wide v13, v0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v13, v14}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v11

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v13, v14}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    :goto_7
    sget-object v13, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    if-eqz v4, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    :cond_f
    if-eqz p1, :cond_13

    if-nez v4, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, v7, :cond_d

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_13
    :goto_8
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-ge v3, v0, :cond_17

    if-lez v3, :cond_16

    invoke-virtual {v1, v2}, Lokio/Buffer;->write(Lokio/ByteString;)V

    :cond_16
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/Buffer;->write(Lokio/ByteString;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    iget-wide v2, v1, Lokio/Buffer;->size:J

    cmp-long v0, v2, v9

    if-nez v0, :cond_18

    invoke-virtual {v1, v12}, Lokio/Buffer;->write(Lokio/ByteString;)V

    :cond_18
    new-instance v0, Lokio/Path;

    iget-wide v2, v1, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    move-result v5

    if-nez v2, :cond_1a

    invoke-static {v5}, Lokio/internal/-Path;->toSlash(B)Lokio/ByteString;

    move-result-object v2

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static final toSlash(B)Lokio/ByteString;
    .locals 2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    sget-object p0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    :goto_0
    return-object p0
.end method

.method public static final toSlash(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    goto :goto_0

    :cond_0
    const-string v0, "\\"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
