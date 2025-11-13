.class public abstract Lorg/simpleframework/xml/stream/EventToken;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# virtual methods
.method public final getLine()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnd()Z
    .locals 0

    instance-of p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$End;

    return p0
.end method

.method public final isStart()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isText()Z
    .locals 0

    instance-of p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Text;

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
