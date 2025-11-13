.class Lorg/simpleframework/xml/stream/OutputStack;
.super Ljava/util/ArrayList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final active:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;-><init>(Lorg/simpleframework/xml/stream/OutputStack;)V

    return-object v0
.end method

.method public final purge(I)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public final push(Lorg/simpleframework/xml/stream/OutputElement;)V
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final top()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method
