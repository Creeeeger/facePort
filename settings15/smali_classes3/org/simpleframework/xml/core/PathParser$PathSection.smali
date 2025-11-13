.class public final Lorg/simpleframework/xml/core/PathParser$PathSection;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# instance fields
.field public final begin:I

.field public final cache:Ljava/util/List;

.field public final end:I

.field public path:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public final synthetic this$0:Lorg/simpleframework/xml/core/PathParser;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/PathParser;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    iput p2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    iput p3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getFirst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getIndex()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    const/16 v3, 0x2f

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget v4, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v0, v4, :cond_2

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v4, v4, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, v2, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Lorg/simpleframework/xml/core/PathParser$PathSection;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;

    move-result-object p0

    return-object p0
.end method

.method public final getPath(II)Lorg/simpleframework/xml/core/PathParser$PathSection;
    .locals 3

    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    add-int/2addr v2, p1

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    sub-int/2addr p0, p2

    invoke-direct {v0, v1, v2, p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final isAttribute()Z
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-boolean v1, v0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget-object v0, v0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p0, v0, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPath()Z
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    sub-int/2addr v0, p0

    const/4 p0, 0x1

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    :goto_0
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v1, v1, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v0, v0, Lorg/simpleframework/xml/core/PathParser;->start:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v4, v3, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v0, v3, v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    if-ne v1, v0, :cond_1

    move v0, v4

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget-object v3, v3, Lorg/simpleframework/xml/core/PathParser;->data:[C

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    return-object p0
.end method
