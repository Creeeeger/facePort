.class public final Lorg/simpleframework/xml/stream/InputPosition;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public source:Lorg/simpleframework/xml/stream/EventNode;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/EventNode;->getLine()I

    move-result p0

    const-string v0, "line "

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
