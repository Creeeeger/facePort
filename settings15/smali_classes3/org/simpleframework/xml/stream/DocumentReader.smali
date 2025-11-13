.class public final Lorg/simpleframework/xml/stream/DocumentReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# instance fields
.field public peek:Lorg/simpleframework/xml/stream/EventNode;

.field public queue:Lorg/simpleframework/xml/stream/NodeExtractor;

.field public stack:Lorg/simpleframework/xml/stream/NodeStack;


# virtual methods
.method public final next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 6

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    if-nez v2, :cond_1

    new-instance p0, Lorg/simpleframework/xml/stream/DocumentReader$End;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_4

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lorg/w3c/dom/Node;

    if-eq v3, v1, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_2
    new-instance p0, Lorg/simpleframework/xml/stream/DocumentReader$End;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/DocumentReader$Start;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Start;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    new-instance v4, Lorg/simpleframework/xml/stream/DocumentReader$Entry;

    invoke-direct {v4, v3}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v4}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->isReserved()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance p0, Lorg/simpleframework/xml/stream/DocumentReader$Text;

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/DocumentReader$Text;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_8
    iput-object v1, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_4
    return-object v0
.end method

.method public final peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object p0
.end method
