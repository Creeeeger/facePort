.class public final Lorg/simpleframework/xml/core/ObjectInstance;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field public final context:Lorg/simpleframework/xml/core/Source;

.field public final type:Ljava/lang/Class;

.field public final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/strategy/Value;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->context:Lorg/simpleframework/xml/core/Source;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    return-void
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->context:Lorg/simpleframework/xml/core/Source;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstanceFactory;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final isReference()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result p0

    return p0
.end method

.method public final setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ObjectInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
