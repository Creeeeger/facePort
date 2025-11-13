.class Lorg/simpleframework/xml/stream/InputNodeMap;
.super Ljava/util/LinkedHashMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/NodeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/stream/InputNode;",
        ">;",
        "Lorg/simpleframework/xml/stream/NodeMap;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/InputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/simpleframework/xml/stream/EventAttribute;

    new-instance v0, Lorg/simpleframework/xml/stream/InputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->getReference()Ljava/lang/String;

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->getPrefix()Ljava/lang/String;

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->getSource()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lorg/simpleframework/xml/stream/InputAttribute;->source:Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/EventAttribute;->isReserved()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/InputNode;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 2

    new-instance v0, Lorg/simpleframework/xml/stream/InputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputNodeMap;->source:Lorg/simpleframework/xml/stream/InputNode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    iput-object p2, v0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    iput-object p1, v0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/InputNode;

    return-object p0
.end method
