.class public final Lorg/simpleframework/xml/core/Collector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final alias:Lorg/simpleframework/xml/core/Collector$Registry;

.field public final registry:Lorg/simpleframework/xml/core/Collector$Registry;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    return-void
.end method


# virtual methods
.method public final commit(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    iget-object v1, v0, Lorg/simpleframework/xml/core/Variable;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    iget-object v0, v0, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/core/Contact;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 5

    new-instance v0, Lorg/simpleframework/xml/core/Variable;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Variable;-><init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object p1

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    iget-object v4, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v4, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
