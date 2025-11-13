.class public final Lorg/simpleframework/xml/core/InstantiatorBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public attributes:Lorg/simpleframework/xml/core/LabelMap;

.field public comparer:Lorg/simpleframework/xml/core/Comparer;

.field public detail:Lorg/simpleframework/xml/core/Detail;

.field public elements:Lorg/simpleframework/xml/core/LabelMap;

.field public factory:Lorg/simpleframework/xml/core/ClassInstantiator;

.field public options:Ljava/util/List;

.field public scanner:Lorg/simpleframework/xml/core/Scanner;

.field public texts:Lorg/simpleframework/xml/core/LabelMap;


# direct methods
.method public static register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 3

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {p1, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    check-cast p0, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->name:Ljava/lang/String;

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Label;

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Label;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/simpleframework/xml/core/CacheParameter;

    iget-boolean v1, v0, Lorg/simpleframework/xml/core/CacheParameter;->attribute:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, v0, Lorg/simpleframework/xml/core/CacheParameter;->text:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    return-object p0
.end method

.method public final validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 2

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Default constructor can not accept read only %s in %s"

    invoke-direct {p1, v0, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V
    .locals 5

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/SignatureCreator;

    iget-object v2, v2, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v3

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Parameter;

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "No constructor accepts all read only values in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
