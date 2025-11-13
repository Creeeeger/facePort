.class public final Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field public final synthetic this$0:Lorg/simpleframework/xml/core/InstanceFactory;

.field public final type:Ljava/lang/Class;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/InstanceFactory;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->this$0:Lorg/simpleframework/xml/core/InstanceFactory;

    iput-object p2, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final getInstance()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->this$0:Lorg/simpleframework/xml/core/InstanceFactory;

    iget-object v1, v1, Lorg/simpleframework/xml/core/InstanceFactory;->cache:Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->value:Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final isReference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;->value:Ljava/lang/Object;

    return-object p1
.end method
