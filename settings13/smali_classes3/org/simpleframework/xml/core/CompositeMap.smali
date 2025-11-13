.class Lorg/simpleframework/xml/core/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/MapFactory;

.field private final key:Lorg/simpleframework/xml/core/Converter;

.field private final value:Lorg/simpleframework/xml/core/Converter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance p2, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {p2, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    const/4 p0, 0x0

    .line 95
    throw p0
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    check-cast p2, Ljava/util/Map;

    .line 170
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 118
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    check-cast p2, Ljava/util/Map;

    .line 251
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 p0, 0x0

    .line 252
    throw p0
.end method
