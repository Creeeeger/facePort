.class public final Lorg/simpleframework/xml/stream/OutputAttribute;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field public name:Ljava/lang/String;

.field public reference:Ljava/lang/String;

.field public scope:Lorg/simpleframework/xml/stream/NamespaceMap;

.field public value:Ljava/lang/String;


# virtual methods
.method public final getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-object v0
.end method

.method public final getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 0

    sget-object p0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    check-cast p0, Lorg/simpleframework/xml/stream/PrefixResolver;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefix(Z)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    check-cast p0, Lorg/simpleframework/xml/stream/PrefixResolver;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setData(Z)V
    .locals 0

    return-void
.end method

.method public final setReference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
