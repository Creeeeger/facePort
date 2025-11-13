.class public final Lorg/simpleframework/xml/core/Persister;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final format:Lorg/simpleframework/xml/stream/Format;

.field public final manager:Lorg/simpleframework/xml/core/SessionManager;

.field public final strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

.field public final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lorg/simpleframework/xml/filter/PlatformFilter;->stack:Ljava/util/Stack;

    new-instance v3, Lorg/simpleframework/xml/filter/EnvironmentFilter;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/simpleframework/xml/filter/EnvironmentFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/simpleframework/xml/filter/SystemFilter;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v4, v2, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    iget-object v3, v1, Lorg/simpleframework/xml/filter/PlatformFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/simpleframework/xml/filter/MapFilter;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v4, v2, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    iput-object v0, v2, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    iget-object v0, v1, Lorg/simpleframework/xml/filter/PlatformFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    new-instance v2, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v2}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    new-instance v3, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lorg/simpleframework/xml/core/Support;

    invoke-direct {v4, v1, v3, v2}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/PlatformFilter;Lorg/simpleframework/xml/core/EmptyMatcher;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v4, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    new-instance v1, Lorg/simpleframework/xml/core/SessionManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v1, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    iput-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    iput-object v2, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method


# virtual methods
.method public final read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/simpleframework/xml/stream/NodeBuilder;->PROVIDER:Lorg/simpleframework/xml/stream/Provider;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Provider;->provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;

    move-result-object p2

    new-instance v0, Lorg/simpleframework/xml/stream/NodeReader;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/stream/NodeReader;-><init>(Lorg/simpleframework/xml/stream/EventReader;)V

    iget-object p2, v0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/simpleframework/xml/stream/NodeException;

    const-string p1, "Document has no root element"

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SessionManager;->open$1()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputElement;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw p0
.end method

.method public final read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputElement;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, p0, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/TreeStrategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    iget-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iget-object p3, p3, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    new-instance v1, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    new-instance p1, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V

    invoke-virtual {p1, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :cond_4
    new-instance p0, Lorg/simpleframework/xml/core/RootException;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Can not instantiate null class"

    invoke-direct {p0, p2, p1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputDocument;Lorg/simpleframework/xml/core/Session;)V
    .locals 5

    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/TreeStrategy;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, p0, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/TreeStrategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    iget-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    iget-object p3, p3, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {p3, p2, p0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputElement;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object p3, v0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p3, p2}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p3

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object p3

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p3, p0, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/NamespaceDecorator;)V

    :cond_3
    iget-object p3, p0, Lorg/simpleframework/xml/stream/OutputElement;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    if-eqz p3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "length"

    invoke-interface {p3, v4, v3}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-eq v1, v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-interface {p3, v2, v1}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_5
    new-instance p3, Lorg/simpleframework/xml/core/ClassType;

    invoke-direct {p3, p2}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    new-instance p2, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {p2, v0, p3}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Source;Lorg/simpleframework/xml/core/ClassType;)V

    invoke-virtual {p2, p0, p1}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputElement;->commit()V

    return-void

    :cond_6
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p2, "No attributes for %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
