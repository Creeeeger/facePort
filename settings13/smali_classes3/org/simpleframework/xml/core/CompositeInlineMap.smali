.class Lorg/simpleframework/xml/core/CompositeInlineMap;
.super Ljava/lang/Object;
.source "CompositeInlineMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance p2, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {p2, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    const/4 p0, 0x0

    .line 96
    throw p0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 163
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/Node;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_1

    .line 166
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 170
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 241
    throw p0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MapFactory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 219
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    .line 220
    check-cast p2, Ljava/util/Map;

    .line 222
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 225
    :cond_0
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V

    return-void
.end method
