.class public final Lorg/simpleframework/xml/core/Signature;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final factory:Ljava/lang/reflect/Constructor;

.field public final parameters:Lorg/simpleframework/xml/core/ParameterMap;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ParameterMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
