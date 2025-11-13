.class public final Lorg/simpleframework/xml/core/Composite;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field public final context:Lorg/simpleframework/xml/core/Source;

.field public final criteria:Lorg/simpleframework/xml/core/Collector;

.field public final factory:Lorg/simpleframework/xml/core/ObjectFactory;

.field public final primitive:Lorg/simpleframework/xml/core/Primitive;

.field public final revision:Lorg/simpleframework/xml/core/Revision;

.field public final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    new-instance v0, Lorg/simpleframework/xml/core/Collector;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Collector;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    new-instance v0, Lorg/simpleframework/xml/core/Revision;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method


# virtual methods
.method public final read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

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
    iget-object v3, v0, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Source;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    xor-int/2addr v1, v4

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v3, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/InstanceFactory$ClassInstance;-><init>(Lorg/simpleframework/xml/core/InstanceFactory;Ljava/lang/Class;)V

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/InstantiationException;

    iget-object p1, v0, Lorg/simpleframework/xml/core/PrimitiveFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot instantiate %s for %s"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance v0, Lorg/simpleframework/xml/core/ObjectInstance;

    invoke-direct {v0, v3, v1}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/strategy/Value;)V

    move-object v1, v0

    :goto_2
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v3, v2, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v3, v0}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_5

    invoke-interface {v1, p0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p0

    :cond_6
    iget-object v3, v2, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v3, v0}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    new-instance v3, Lorg/simpleframework/xml/core/ClassSchema;

    invoke-direct {v3, v0, v2}, Lorg/simpleframework/xml/core/ClassSchema;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V

    iget-object v0, v3, Lorg/simpleframework/xml/core/ClassSchema;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v2, v0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v4, :cond_8

    iget-object v0, v0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/SignatureCreator;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    move v5, v4

    :cond_8
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    if-eqz v5, :cond_9

    new-instance v2, Lorg/simpleframework/xml/core/Composite$Builder;

    invoke-direct {v2, p0, v0, v3, v1}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Collector;Lorg/simpleframework/xml/core/ClassSchema;Lorg/simpleframework/xml/core/Instance;)V

    goto :goto_4

    :cond_9
    new-instance v2, Lorg/simpleframework/xml/core/Composite$Injector;

    invoke-direct {v2, p0, v0, v3, v1}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Collector;Lorg/simpleframework/xml/core/ClassSchema;Lorg/simpleframework/xml/core/Instance;)V

    :goto_4
    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Composite$Builder;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v3, Lorg/simpleframework/xml/core/ClassSchema;->caller:Lorg/simpleframework/xml/core/Caller;

    iget-object v3, v2, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    iget-object v4, v2, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v4, v0}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v3, v2, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v4, v0}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v2, v1, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    new-instance v2, Lorg/simpleframework/xml/core/ClassSchema;

    invoke-direct {v2, v0, v1}, Lorg/simpleframework/xml/core/ClassSchema;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/ClassSchema;)V

    iget-object v0, v2, Lorg/simpleframework/xml/core/ClassSchema;->section:Lorg/simpleframework/xml/core/Section;

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Collector;->commit(Ljava/lang/Object;)V

    iget-object v0, v2, Lorg/simpleframework/xml/core/ClassSchema;->caller:Lorg/simpleframework/xml/core/Caller;

    iget-object v1, v0, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    iget-object v2, v0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 6

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Label;

    if-nez v4, :cond_2

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object v2

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-static {v5, p2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Source;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iget-boolean v4, v4, Lorg/simpleframework/xml/core/Revision;->equal:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {v3, v5, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Attribute \'%s\' does not have a match in %s at %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v2, p2, v4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    return-void
.end method

.method public final readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 8

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    move-object v2, v1

    check-cast v2, Lorg/simpleframework/xml/stream/InputElement;

    iget-object v3, v2, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v3}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, p2, v4}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_3

    :cond_0
    invoke-interface {v3}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Label;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    if-nez v4, :cond_1

    iget-object v4, v5, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Variable;

    :cond_1
    if-nez v4, :cond_4

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputElement;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object v1

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-static {v5, p2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v4}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Source;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iget-boolean v4, v4, Lorg/simpleframework/xml/core/Revision;->equal:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v3, v5, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Element \'%s\' does not have a match in %s at %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v1, v2, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v1, v2}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputElement;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, p2, v4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    aget-object v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/simpleframework/xml/core/Label;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v4, v1}, Lorg/simpleframework/xml/core/Collector;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    return-void
.end method

.method public final readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v1

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v3, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Variable;

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v4

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/simpleframework/xml/core/Variable;->value:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v4, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1, v2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-static {v0, p2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/ValueRequiredException;

    filled-new-array {p3, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Empty value for %s in %s at %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object p0

    if-eq v1, p0, :cond_4

    invoke-virtual {v3, p3, v1}, Lorg/simpleframework/xml/core/Collector;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object p1

    iget-object v0, p3, Lorg/simpleframework/xml/core/Caller;->resolve:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_0

    iget-object p3, p3, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v0, p3, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance p2, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Type %s does not match %s at %s"

    invoke-direct {p2, p1, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    return-object p2
.end method

.method public final readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 1

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method public final readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/ClassSchema;)V
    .locals 4

    iget-object p3, p3, Lorg/simpleframework/xml/core/ClassSchema;->version:Lorg/simpleframework/xml/core/Label;

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/stream/InputNode;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p0, :cond_1

    iget-object p2, v2, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object p1

    invoke-interface {p1}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v3, p1, p0}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, v2, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p1, v1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p1}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    invoke-virtual {p0, p3, p2}, Lorg/simpleframework/xml/core/Collector;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-static {v1, p3}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/InputPosition;

    move-result-object p1

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iget-boolean v2, v2, Lorg/simpleframework/xml/core/Revision;->equal:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/simpleframework/xml/core/ValueRequiredException;

    filled-new-array {v1, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unable to satisfy %s for %s at %s"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_1
    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    invoke-virtual {v3, v1, v2}, Lorg/simpleframework/xml/core/Collector;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    iget-object v2, v1, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    iget-object v2, v1, Lorg/simpleframework/xml/core/Caller;->complete:Lorg/simpleframework/xml/core/Function;

    iget-object v3, v1, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getInstantiator()Lorg/simpleframework/xml/core/ClassInstantiator;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v4

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->isPrimitive()Z

    move-result v5

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v6

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v7

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getText()V

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getType()Ljava/lang/Class;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Lorg/simpleframework/xml/core/Caller;->persist:Lorg/simpleframework/xml/core/Function;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    if-eqz v1, :cond_2

    invoke-interface {v6}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v4, v6}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v4, v6}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, v7}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3, p2}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw p0
.end method

.method public final writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, p0}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/NamespaceDecorator;)V

    :cond_0
    return-void
.end method

.method public final writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {p1 .. p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/simpleframework/xml/core/Section;->getPrefix()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    if-eqz v5, :cond_1

    invoke-interface {v4, v5}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Namespace prefix \'%s\' in %s is not in scope"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v4

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "Value for %s is null in %s"

    iget-object v8, v0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Source;

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v9

    invoke-interface {v9, v2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v10

    if-nez v9, :cond_2

    invoke-interface {v5, v8}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_4

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    filled-new-array {v5, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    invoke-virtual {v0, v1, v9, v5}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_1

    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v9, v0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v1, v5}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v10}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto/16 :goto_8

    :cond_6
    invoke-interface {v3, v5}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    iget-object v12, v0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Collector;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_7

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v12, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v14, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/simpleframework/xml/core/Variable;

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-nez v13, :cond_12

    if-eqz v10, :cond_11

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    if-nez v5, :cond_9

    invoke-interface {v10}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v13, v8, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v13, v11}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v11

    invoke-interface {v11, v8}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v11

    iget-object v13, v11, Lorg/simpleframework/xml/core/Caller;->replace:Lorg/simpleframework/xml/core/Function;

    if-eqz v13, :cond_a

    iget-object v11, v11, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v13, v11, v5}, Lorg/simpleframework/xml/core/Function;->call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_a
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v13

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v11

    invoke-interface {v1, v14}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v14

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-interface {v11}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v15

    iget-object v0, v8, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, v15}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object v0

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object v15

    invoke-virtual {v15, v14, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/NamespaceDecorator;)V

    :cond_b
    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v0}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v15

    if-eq v15, v0, :cond_c

    new-instance v0, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v0, v11, v15}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    move-object v11, v0

    :cond_c
    iget-object v0, v9, Lorg/simpleframework/xml/core/PrimitiveFactory;->context:Lorg/simpleframework/xml/core/Source;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v14

    check-cast v9, Lorg/simpleframework/xml/stream/OutputElement;

    invoke-virtual {v9}, Lorg/simpleframework/xml/stream/OutputElement;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v15

    if-eqz v15, :cond_e

    iget-object v0, v0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v11}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "length"

    invoke-interface {v15, v3, v11}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_6

    :cond_d
    move-object v3, v0

    :goto_6
    if-eq v0, v9, :cond_f

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "class"

    invoke-interface {v15, v3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    goto :goto_7

    :cond_e
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "No attributes for %s"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f
    :goto_7
    invoke-interface {v13, v8}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    invoke-interface {v13}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v3

    check-cast v14, Lorg/simpleframework/xml/stream/OutputElement;

    invoke-virtual {v14, v3}, Lorg/simpleframework/xml/stream/OutputElement;->setData(Z)V

    invoke-interface {v0, v14, v5}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v12, v10, v5}, Lorg/simpleframework/xml/core/Collector;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    filled-new-array {v5, v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Element \'%s\' not defined in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_12
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto/16 :goto_3

    :cond_13
    invoke-interface/range {p3 .. p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2}, Lorg/simpleframework/xml/core/Source;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    if-nez v3, :cond_14

    invoke-interface {v0, v8}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object v3

    :cond_14
    if-nez v3, :cond_16

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    new-instance v1, Lorg/simpleframework/xml/core/TextException;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_16
    :goto_9
    if-eqz v3, :cond_17

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v9, v3}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    invoke-interface {v1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
