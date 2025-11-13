.class public final Lorg/simpleframework/xml/core/SetPart;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field public final cache:Lorg/simpleframework/xml/util/ConcurrentCache;

.field public final label:Ljava/lang/annotation/Annotation;

.field public final list:[Ljava/lang/annotation/Annotation;

.field public final method:Ljava/lang/reflect/Method;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    iget-object v0, p1, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    iput-object p2, p0, Lorg/simpleframework/xml/core/SetPart;->label:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lorg/simpleframework/xml/core/SetPart;->list:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->label:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->list:[Ljava/lang/annotation/Annotation;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final getDependent()Ljava/lang/Class;
    .locals 3

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    aget-object p0, p0, v2

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_2

    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-class v1, Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getDependents()[Ljava/lang/Class;
    .locals 2

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p0, p0, v1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-array p0, v1, [Ljava/lang/Class;

    :goto_1
    return-object p0
.end method

.method public final getMethod()Ljava/lang/reflect/Method;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public final getMethodType()Lorg/simpleframework/xml/core/MethodType;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/SetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
