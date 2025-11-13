.class Lorg/simpleframework/xml/stream/OutputNodeMap;
.super Ljava/util/LinkedHashMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/NodeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;",
        "Lorg/simpleframework/xml/stream/NodeMap;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

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

.method public final bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputAttribute;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputAttribute;
    .locals 2

    new-instance v0, Lorg/simpleframework/xml/stream/OutputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v1

    iput-object v1, v0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iput-object p2, v0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    iput-object p1, v0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    iget-object p2, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method
