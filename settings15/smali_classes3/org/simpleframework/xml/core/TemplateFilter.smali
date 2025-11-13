.class public final Lorg/simpleframework/xml/core/TemplateFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field public context:Lorg/simpleframework/xml/core/Source;

.field public filter:Lorg/simpleframework/xml/filter/Filter;


# virtual methods
.method public final replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateFilter;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Session;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
