.class public final Lorg/simpleframework/xml/core/PathParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# instance fields
.field public attribute:Z

.field public attributes:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public builder:Ljava/lang/StringBuilder;

.field public cache:Ljava/lang/String;

.field public count:I

.field public data:[C

.field public elements:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public indexes:Ljava/util/List;

.field public location:Ljava/lang/String;

.field public names:Ljava/util/List;

.field public off:I

.field public path:Ljava/lang/String;

.field public prefixes:Ljava/util/List;

.field public start:I

.field public style:Lorg/simpleframework/xml/stream/IdentityStyle;

.field public type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const-string p0, "/@"

    invoke-static {p1, p0, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[1]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFirst()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getIndex()I
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Lorg/simpleframework/xml/core/PathParser$PathSection;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser;->getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object p0

    return-object p0
.end method

.method public final getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    if-lt v0, p1, :cond_0

    new-instance p2, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {p2, p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {p2, p0, p1, p1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object p2
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final isAttribute()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-static {p0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPath()Z
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    return-object p0
.end method
