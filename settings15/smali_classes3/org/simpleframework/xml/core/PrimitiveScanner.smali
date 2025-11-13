.class public final Lorg/simpleframework/xml/core/PrimitiveScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Scanner;


# instance fields
.field public final detail:Lorg/simpleframework/xml/core/Detail;

.field public final section:Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;-><init>(Lorg/simpleframework/xml/core/Scanner;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->section:Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public final getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V

    return-object v0
.end method

.method public final getCommit()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getComplete()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstantiator()Lorg/simpleframework/xml/core/ClassInstantiator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 0

    new-instance p0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    return-object p0
.end method

.method public final getPersist()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReplace()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResolve()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRevision()Lorg/simpleframework/xml/Version;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSection()Lorg/simpleframework/xml/core/Section;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->section:Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;

    return-object p0
.end method

.method public final getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSignatures()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method public final getText()V
    .locals 0

    return-void
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getValidate()Lorg/simpleframework/xml/core/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVersion()Lorg/simpleframework/xml/core/Label;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isPrimitive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isStrict()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
