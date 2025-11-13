.class public final Lokio/Path;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final Companion:Lokio/Path$Companion;

.field public static final DIRECTORY_SEPARATOR:Ljava/lang/String;


# instance fields
.field public final bytes:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Path$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/Path;->bytes:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lokio/Path;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    iget-object p1, p1, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokio/Path;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/Path;

    iget-object p1, p1, Lokio/Path;->bytes:Lokio/ByteString;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getSegmentsBytes()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    iget-object v2, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_2
    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    if-ge v4, v1, :cond_5

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->hashCode()I

    move-result p0

    return p0
.end method

.method public final name()Ljava/lang/String;
    .locals 3

    sget-object v0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-static {v0, v1}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v2, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {v0, v2}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    :goto_0
    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lokio/ByteString;->substring$default(Lokio/ByteString;III)Lokio/ByteString;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    :goto_1
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final parent()Lokio/Path;
    .locals 10

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v1, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v3, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v4, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v5, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v6

    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    invoke-virtual {v0, v6, v5, v7}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    move-result v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-ne v0, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v0, v8, v3, v7}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v0, v8, v4, v7}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {v0, v3}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {v0, v4}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    :goto_0
    const/4 v8, 0x0

    if-ne v0, v6, :cond_5

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Lokio/Path;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {p0, v8, v5, v7}, Lokio/ByteString;->substring$default(Lokio/ByteString;III)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    :cond_5
    if-ne v0, v7, :cond_6

    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v9

    invoke-virtual {v5, v8, v4, v9}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    if-ne v0, v6, :cond_7

    goto :goto_1

    :cond_7
    new-instance v2, Lokio/Path;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {p0, v8, v6, v7}, Lokio/ByteString;->substring$default(Lokio/ByteString;III)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    :cond_8
    if-ne v0, v3, :cond_9

    new-instance v2, Lokio/Path;

    invoke-direct {v2, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    :cond_9
    if-nez v0, :cond_a

    new-instance v2, Lokio/Path;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {p0, v8, v7, v7}, Lokio/ByteString;->substring$default(Lokio/ByteString;III)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    :cond_a
    new-instance v2, Lokio/Path;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-static {p0, v8, v0, v7}, Lokio/ByteString;->substring$default(Lokio/ByteString;III)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    :cond_b
    :goto_1
    return-object v2
.end method

.method public final relativeTo(Lokio/Path;)Lokio/Path;
    .locals 9

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    new-instance v4, Lokio/Path;

    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5, v2, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    invoke-direct {v4, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lokio/Path;

    iget-object v5, p1, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5, v2, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    :goto_1
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " and "

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v4

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-ne v6, v5, :cond_3

    iget-object v5, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v5

    iget-object v7, p1, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v7

    if-ne v5, v7, :cond_3

    sget-object p0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string p1, "."

    invoke-static {p0, p1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    goto :goto_5

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    sget-object v7, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v3, :cond_7

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-static {p1}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {p0}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {p0}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v3, v6

    :goto_3
    if-ge v3, p0, :cond_5

    sget-object v4, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-virtual {v1, v4}, Lokio/Buffer;->write(Lokio/ByteString;)V

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v6, p0, :cond_6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/Buffer;->write(Lokio/ByteString;)V

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v1, v2}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Impossible relative path to resolve: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resolve(Ljava/lang/String;)Lokio/Path;
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public final toFile()Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final volumeLetter()Ljava/lang/Character;
    .locals 3

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    sget-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-static {v0, v1}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_3

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x41

    if-gt v0, p0, :cond_4

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_4

    :goto_0
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :cond_4
    :goto_1
    return-object v2
.end method
