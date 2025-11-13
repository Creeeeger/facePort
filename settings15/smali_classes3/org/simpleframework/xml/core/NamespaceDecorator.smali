.class public final Lorg/simpleframework/xml/core/NamespaceDecorator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public primary:Lorg/simpleframework/xml/Namespace;

.field public scope:Ljava/util/List;


# virtual methods
.method public final decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/NamespaceDecorator;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/NamespaceDecorator;)V

    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object p2

    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/Namespace;

    invoke-interface {v1}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/simpleframework/xml/Namespace;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
