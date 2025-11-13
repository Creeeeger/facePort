.class public final Lorg/simpleframework/xml/filter/EnvironmentFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field public filter:Lorg/simpleframework/xml/filter/Filter;


# virtual methods
.method public final replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
