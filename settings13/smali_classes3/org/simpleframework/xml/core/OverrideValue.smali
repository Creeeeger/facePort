.class Lorg/simpleframework/xml/core/OverrideValue;
.super Ljava/lang/Object;
.source "OverrideValue.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private final type:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 53
    iput-object p2, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->getLength()I

    move-result p0

    return p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isReference()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideValue;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-void
.end method
