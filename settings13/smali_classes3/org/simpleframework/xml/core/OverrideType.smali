.class Lorg/simpleframework/xml/core/OverrideType;
.super Ljava/lang/Object;
.source "OverrideType.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Type;


# instance fields
.field private final override:Ljava/lang/Class;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/simpleframework/xml/core/OverrideType;->override:Ljava/lang/Class;

    .line 56
    iput-object p1, p0, Lorg/simpleframework/xml/core/OverrideType;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideType;->override:Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/simpleframework/xml/core/OverrideType;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
