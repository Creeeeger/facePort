.class public final Lorg/simpleframework/xml/core/DefaultScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Scanner;


# instance fields
.field public detail:Lorg/simpleframework/xml/core/DefaultDetail;

.field public scanner:Lorg/simpleframework/xml/core/ObjectScanner;


# virtual methods
.method public final getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V

    return-object v0
.end method

.method public final getCommit()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->commit:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getComplete()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->complete:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object p0
.end method

.method public final getInstantiator()Lorg/simpleframework/xml/core/ClassInstantiator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->detail:Lorg/simpleframework/xml/core/DefaultDetail;

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->order:Lorg/simpleframework/xml/Order;

    return-object p0
.end method

.method public final getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPersist()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->persist:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getReplace()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->replace:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getResolve()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->resolve:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getRevision()Lorg/simpleframework/xml/Version;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object p0

    return-object p0
.end method

.method public final getSection()Lorg/simpleframework/xml/core/Section;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object p0

    return-object p0
.end method

.method public final getSignatures()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getSignatures()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getText()V
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->getText()V

    return-void
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getValidate()Lorg/simpleframework/xml/core/Function;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->scanner:Lorg/simpleframework/xml/core/ClassScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassScanner;->validate:Lorg/simpleframework/xml/core/Function;

    return-object p0
.end method

.method public final getVersion()Lorg/simpleframework/xml/core/Label;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectScanner;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isPrimitive()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->structure:Lorg/simpleframework/xml/core/Structure;

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    return p0
.end method

.method public final isStrict()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultScanner;->scanner:Lorg/simpleframework/xml/core/ObjectScanner;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isStrict()Z

    move-result p0

    return p0
.end method
