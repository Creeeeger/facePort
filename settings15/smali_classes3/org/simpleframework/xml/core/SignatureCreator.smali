.class public final Lorg/simpleframework/xml/core/SignatureCreator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final list:Ljava/util/List;

.field public final signature:Lorg/simpleframework/xml/core/Signature;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Signature;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
