.class public final Lorg/simpleframework/xml/stream/OutputElement;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field public mode:Lorg/simpleframework/xml/stream/Mode;

.field public name:Ljava/lang/String;

.field public parent:Lorg/simpleframework/xml/stream/OutputNode;

.field public reference:Ljava/lang/String;

.field public scope:Lorg/simpleframework/xml/stream/NamespaceMap;

.field public table:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field public value:Ljava/lang/String;

.field public writer:Lorg/simpleframework/xml/stream/NodeWriter;


# virtual methods
.method public final commit()V
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    iget-object v1, v0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    iget-object v3, v0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    :cond_4
    :goto_2
    return-void
.end method

.method public final getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object p0
.end method

.method public final getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputElement;

    move-result-object p0

    return-object p0
.end method

.method public final getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputElement;->getPrefix(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefix(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputElement;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputElement;->reference:Ljava/lang/String;

    check-cast v0, Lorg/simpleframework/xml/stream/PrefixResolver;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->parent:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputAttribute;

    move-result-object p0

    return-object p0
.end method

.method public final setData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->mode:Lorg/simpleframework/xml/stream/Mode;

    :goto_0
    return-void
.end method

.method public final setReference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->reference:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputElement;->value:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputElement;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
