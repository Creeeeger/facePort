.class public final Lorg/simpleframework/xml/stream/Indenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

.field public count:I

.field public indent:I

.field public index:I


# virtual methods
.method public final indent(I)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    iget-object v1, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object v1, v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    if-lez v1, :cond_2

    const/16 v1, 0xa

    aput-char v1, v2, v3

    const/4 v1, 0x1

    :goto_1
    iget v4, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-gt v1, v4, :cond_1

    const/16 v4, 0x20

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_2
    const-string p0, "\n"

    goto :goto_2

    :goto_3
    iget-object p0, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length p0, p0

    if-lt p1, p0, :cond_4

    mul-int/lit8 p0, p1, 0x2

    new-array p0, p0, [Ljava/lang/String;

    :goto_4
    iget-object v2, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v2, v2, v3

    aput-object v2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    iput-object p0, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    :cond_4
    iget p0, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-le p1, p0, :cond_5

    iput p1, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    :cond_5
    iget-object p0, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object v1, p0, p1

    :cond_6
    iget p0, v0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-lez p0, :cond_7

    return-object v1

    :cond_7
    const-string p0, ""

    return-object p0
.end method
