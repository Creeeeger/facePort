.class public final Lorg/simpleframework/xml/core/SignatureScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final builder:Lorg/simpleframework/xml/core/SignatureBuilder;

.field public final constructor:Ljava/lang/reflect/Constructor;

.field public final factory:Lorg/simpleframework/xml/core/ParameterFactory;

.field public final registry:Lorg/simpleframework/xml/core/ParameterMap;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/ParameterFactory;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_c

    aget-object v0, p1, p3

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    move v1, p2

    :goto_1
    aget-object v2, v0, p3

    array-length v3, v2

    if-ge v1, v3, :cond_b

    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/simpleframework/xml/Attribute;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lorg/simpleframework/xml/Element;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lorg/simpleframework/xml/ElementList;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_6
    instance-of v3, v2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_7
    instance-of v3, v2, Lorg/simpleframework/xml/Text;

    if-eqz v3, :cond_8

    invoke-virtual {p0, v2, p3}, Lorg/simpleframework/xml/core/SignatureScanner;->create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Parameter;

    iget-object v4, p0, Lorg/simpleframework/xml/core/SignatureScanner;->builder:Lorg/simpleframework/xml/core/SignatureBuilder;

    iget-object v4, v4, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v4, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    invoke-virtual {v2, v0, p1, v1, p2}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureScanner;->register(Lorg/simpleframework/xml/core/Parameter;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final register(Lorg/simpleframework/xml/core/Parameter;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v2, v0, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/simpleframework/xml/core/SignatureScanner;->validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/SignatureScanner;->validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final union(Ljava/lang/annotation/Annotation;I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    check-cast v1, [Ljava/lang/annotation/Annotation;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    iget-object v5, p0, Lorg/simpleframework/xml/core/SignatureScanner;->factory:Lorg/simpleframework/xml/core/ParameterFactory;

    iget-object v6, p0, Lorg/simpleframework/xml/core/SignatureScanner;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v6, p1, v4, p2}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v5, v5, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/simpleframework/xml/core/SignatureScanner;->register(Lorg/simpleframework/xml/core/Parameter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/UnionException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    filled-new-array {v5, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Annotation name \'%s\' used more than once in %s for %s"

    invoke-direct {p2, p1, p0}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Lorg/simpleframework/xml/core/UnionException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Annotation \'%s\' is not a valid union for %s"

    invoke-direct {p2, p1, p0}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/core/Parameter;

    check-cast p1, Lorg/simpleframework/xml/core/CacheParameter;

    check-cast p2, Lorg/simpleframework/xml/core/CacheParameter;

    iget-boolean v0, p2, Lorg/simpleframework/xml/core/CacheParameter;->text:Z

    iget-boolean v1, p1, Lorg/simpleframework/xml/core/CacheParameter;->text:Z

    if-eq v1, v0, :cond_2

    iget-object v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v1, p2, Lorg/simpleframework/xml/core/CacheParameter;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    iget-object p1, p1, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Parameter types do not match for \'%s\' in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/ConstructorException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/SignatureScanner;->type:Ljava/lang/Class;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Annotations do not match for \'%s\' in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
