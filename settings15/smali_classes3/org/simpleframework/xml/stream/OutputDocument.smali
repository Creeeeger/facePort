.class public final Lorg/simpleframework/xml/stream/OutputDocument;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field public mode:Lorg/simpleframework/xml/stream/Mode;

.field public stack:Lorg/simpleframework/xml/stream/OutputStack;

.field public table:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field public value:Ljava/lang/String;

.field public writer:Lorg/simpleframework/xml/stream/NodeWriter;


# virtual methods
.method public final getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object p0
.end method

.method public final getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputElement;

    move-result-object p0

    return-object p0
.end method

.method public final getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPrefix(Z)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputAttribute;

    move-result-object p0

    return-object p0
.end method

.method public final setData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    :goto_0
    return-void
.end method

.method public final setReference(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    return-void
.end method
