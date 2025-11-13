.class public final Lorg/simpleframework/xml/transform/BigDecimalTransform;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# virtual methods
.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
