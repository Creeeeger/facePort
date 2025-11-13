.class public final Lorg/simpleframework/xml/core/OverrideValue;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field public final type:Ljava/lang/Class;

.field public final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    iput-object p2, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isReference()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result p0

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-void
.end method
