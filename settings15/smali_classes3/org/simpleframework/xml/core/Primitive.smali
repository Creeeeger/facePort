.class public final Lorg/simpleframework/xml/core/Primitive;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field public final context:Lorg/simpleframework/xml/core/Source;

.field public final expect:Ljava/lang/Class;

.field public final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field public final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object v0, p2, Lorg/simpleframework/xml/core/ClassType;->type:Ljava/lang/Class;

    iput-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Source;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method


# virtual methods
.method public final read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    iget-object v2, v0, Lorg/simpleframework/xml/core/PrimitiveFactory;->override:Ljava/lang/Class;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/simpleframework/xml/core/PrimitiveFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    iget-object v0, v0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Source;

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;-><init>(Lorg/simpleframework/xml/core/InstanceFactory;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/simpleframework/xml/core/ObjectInstance;

    invoke-direct {v2, v0, v1}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/strategy/Value;)V

    move-object v1, v2

    :goto_1
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Primitive;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/TemplateEngine;->parse()V

    iget-object p1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    iput v1, v2, Lorg/simpleframework/xml/core/Template;->count:I

    iget-object v2, v0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iput v1, v2, Lorg/simpleframework/xml/core/Template;->count:I

    iget-object v2, v0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iput v1, v2, Lorg/simpleframework/xml/core/Template;->count:I

    iput v1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    :goto_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveFactory;->support:Lorg/simpleframework/xml/core/Support;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/transform/Transform;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/transform/TransformException;

    const-string p1, "Transform of %s not supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :catchall_0
    move-exception p0

    iget-object p1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    iput v1, p1, Lorg/simpleframework/xml/core/Template;->count:I

    iget-object p1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iput v1, p1, Lorg/simpleframework/xml/core/Template;->count:I

    iget-object p1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iput v1, p1, Lorg/simpleframework/xml/core/Template;->count:I

    iput v1, v0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    throw p0
.end method

.method public final read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    iget-object p2, p0, Lorg/simpleframework/xml/core/Primitive;->expect:Ljava/lang/Class;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Primitive;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Can not read existing %s for %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Primitive;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
