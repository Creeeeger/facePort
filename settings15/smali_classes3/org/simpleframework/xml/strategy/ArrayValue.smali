.class public final Lorg/simpleframework/xml/strategy/ArrayValue;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field public type:Ljava/lang/Class;

.field public value:Ljava/lang/Object;


# virtual methods
.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final isReference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    return-void
.end method
