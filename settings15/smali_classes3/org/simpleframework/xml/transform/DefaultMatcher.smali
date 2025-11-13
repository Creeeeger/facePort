.class public final Lorg/simpleframework/xml/transform/DefaultMatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field public array:Lorg/simpleframework/xml/transform/ArrayMatcher;

.field public matcher:Lorg/simpleframework/xml/transform/Matcher;

.field public primitive:Lorg/simpleframework/xml/transform/PrimitiveMatcher;

.field public stock:Lorg/simpleframework/xml/transform/PackageMatcher;


# virtual methods
.method public final match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->array:Lorg/simpleframework/xml/transform/ArrayMatcher;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/ArrayMatcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->primitive:Lorg/simpleframework/xml/transform/PrimitiveMatcher;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/PrimitiveMatcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/simpleframework/xml/transform/DefaultMatcher;->stock:Lorg/simpleframework/xml/transform/PackageMatcher;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    :goto_0
    return-object p0
.end method
