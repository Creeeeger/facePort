.class public final Lorg/simpleframework/xml/core/AnnotationFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final format:Lorg/simpleframework/xml/stream/Format;

.field public final required:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isRequired()Z

    move-result p1

    iput-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    iget-object p1, p2, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iput-object p1, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method public static isPrimitive(Ljava/lang/Class;)Z
    .locals 2

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5

    const-class v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_2

    aget-object p1, p2, v4

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    aget-object p2, p2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    const-class p1, Lorg/simpleframework/xml/ElementMap;

    invoke-virtual {p0, v1, p1, v4}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_4
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-class p1, Lorg/simpleframework/xml/ElementList;

    invoke-virtual {p0, v1, p1, v4}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-class p1, Lorg/simpleframework/xml/Element;

    invoke-virtual {p0, p2, p1, v4}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object p0

    goto :goto_1

    :cond_6
    const-class p1, Lorg/simpleframework/xml/ElementArray;

    invoke-virtual {p0, p2, p1, v4}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    const-class p1, Lorg/simpleframework/xml/Element;

    invoke-virtual {p0, p2, p1, v4}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/AnnotationHandler;

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    invoke-direct {v0, p2, p0, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;ZZ)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 p3, 0x0

    aput-object p2, p0, p3

    invoke-static {p1, p0, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method
