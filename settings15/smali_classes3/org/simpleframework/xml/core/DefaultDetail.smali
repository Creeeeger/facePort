.class public final Lorg/simpleframework/xml/core/DefaultDetail;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Detail;


# instance fields
.field public final detail:Lorg/simpleframework/xml/core/Detail;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public final getAccess()Lorg/simpleframework/xml/DefaultType;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getAccess()Lorg/simpleframework/xml/DefaultType;

    move-result-object p0

    return-object p0
.end method

.method public final getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public final getFields()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getFields()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMethods()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNamespace()Lorg/simpleframework/xml/Namespace;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getNamespace()Lorg/simpleframework/xml/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public final getNamespaceList()Lorg/simpleframework/xml/NamespaceList;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getNamespaceList()Lorg/simpleframework/xml/NamespaceList;

    move-result-object p0

    return-object p0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getOrder()Lorg/simpleframework/xml/Order;

    move-result-object p0

    return-object p0
.end method

.method public final getOverride()Lorg/simpleframework/xml/DefaultType;
    .locals 0

    sget-object p0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    return-object p0
.end method

.method public final getRoot()Lorg/simpleframework/xml/Root;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getRoot()Lorg/simpleframework/xml/Root;

    move-result-object p0

    return-object p0
.end method

.method public final getSuper()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final isInstantiable()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result p0

    return p0
.end method

.method public final isPrimitive()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public final isRequired()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isRequired()Z

    move-result p0

    return p0
.end method

.method public final isStrict()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Detail;->isStrict()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DefaultDetail;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
