.class public final Lorg/simpleframework/xml/core/DetailScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Detail;


# instance fields
.field public access:Lorg/simpleframework/xml/DefaultType;

.field public declaration:Lorg/simpleframework/xml/NamespaceList;

.field public fields:Ljava/util/List;

.field public labels:[Ljava/lang/annotation/Annotation;

.field public methods:Ljava/util/List;

.field public name:Ljava/lang/String;

.field public namespace:Lorg/simpleframework/xml/Namespace;

.field public order:Lorg/simpleframework/xml/Order;

.field public override:Lorg/simpleframework/xml/DefaultType;

.field public required:Z

.field public root:Lorg/simpleframework/xml/Root;

.field public strict:Z

.field public type:Ljava/lang/Class;


# virtual methods
.method public final getAccess()Lorg/simpleframework/xml/DefaultType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    return-object p0
.end method

.method public final getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public final getFields()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    return-object p0
.end method

.method public final getMethods()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamespace()Lorg/simpleframework/xml/Namespace;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    return-object p0
.end method

.method public final getNamespaceList()Lorg/simpleframework/xml/NamespaceList;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    return-object p0
.end method

.method public final getOrder()Lorg/simpleframework/xml/Order;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    return-object p0
.end method

.method public final getOverride()Lorg/simpleframework/xml/DefaultType;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    return-object p0
.end method

.method public final getRoot()Lorg/simpleframework/xml/Root;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    return-object p0
.end method

.method public final getSuper()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final isInstantiable()Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final isPrimitive()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public final isRequired()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    return p0
.end method

.method public final isStrict()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
