.class public final Lorg/simpleframework/xml/stream/NodeReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final reader:Lorg/simpleframework/xml/stream/EventReader;

.field public final stack:Lorg/simpleframework/xml/stream/InputStack;

.field public final text:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/simpleframework/xml/stream/InputStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/InputStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    return-void
.end method


# virtual methods
.method public final readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputElement;
    .locals 6

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    move-object v4, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    if-ne v4, p1, :cond_7

    return-object v3

    :cond_4
    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance p1, Lorg/simpleframework/xml/stream/InputElement;

    invoke-direct {p1, p0, v4}, Lorg/simpleframework/xml/stream/InputElement;-><init>(Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p1

    :cond_7
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v4

    goto :goto_2

    :cond_8
    return-object v3
.end method
