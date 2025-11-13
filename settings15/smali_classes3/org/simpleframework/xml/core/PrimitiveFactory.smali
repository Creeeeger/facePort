.class public Lorg/simpleframework/xml/core/PrimitiveFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Lorg/simpleframework/xml/core/Source;

.field public final override:Ljava/lang/Class;

.field public final support:Lorg/simpleframework/xml/core/Support;

.field public final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Source;

    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method


# virtual methods
.method public final getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v0, v0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "class"

    invoke-interface {v1, v2}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    :cond_2
    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "length"

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    if-eq v0, v4, :cond_5

    new-instance v0, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lorg/simpleframework/xml/strategy/ObjectValue;->type:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lorg/simpleframework/xml/core/OverrideValue;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/OverrideValue;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    move-object v0, v1

    :cond_7
    if-eqz v0, :cond_b

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object p1

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    new-instance p0, Lorg/simpleframework/xml/core/InstantiationException;

    filled-new-array {v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Incompatible %s for %s at %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_b
    :goto_2
    return-object v0

    :cond_c
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v0, "No attributes for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final getText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    const-string v2, "Transform of %s not supported"

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/simpleframework/xml/transform/TransformException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/transform/TransformException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
