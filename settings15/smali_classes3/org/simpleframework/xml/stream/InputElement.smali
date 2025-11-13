.class public final Lorg/simpleframework/xml/stream/InputElement;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/InputNode;


# instance fields
.field public final map:Lorg/simpleframework/xml/stream/InputNodeMap;

.field public final node:Lorg/simpleframework/xml/stream/EventNode;

.field public final reader:Lorg/simpleframework/xml/stream/NodeReader;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-direct {v0, p0, p2}, Lorg/simpleframework/xml/stream/InputNodeMap;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    return-void
.end method


# virtual methods
.method public final getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/InputNodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p0

    return-object p0
.end method

.method public final getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputElement;->map:Lorg/simpleframework/xml/stream/InputNodeMap;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNext()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputElement;

    move-result-object p0

    return-object p0
.end method

.method public final getPosition()Lorg/simpleframework/xml/stream/InputPosition;
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/stream/InputPosition;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    iput-object p0, v0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputElement;->reader:Lorg/simpleframework/xml/stream/NodeReader;

    iget-object v1, v0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Lorg/simpleframework/xml/stream/NodeReader;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget-object v0, v0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    if-gtz v6, :cond_6

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    move-object v6, v5

    goto :goto_2

    :cond_3
    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_2
    if-ne v6, p0, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    sub-int/2addr v6, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    :cond_6
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v4

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_7

    move-object v6, v5

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    if-ne v6, p0, :cond_9

    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Lorg/simpleframework/xml/stream/EventNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v4

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a
    :goto_6
    return-object v5
.end method

.method public final isElement()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputElement;->node:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "element "

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
