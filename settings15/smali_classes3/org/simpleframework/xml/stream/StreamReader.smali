.class public final Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# instance fields
.field public peek:Lorg/simpleframework/xml/stream/EventNode;

.field public reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public static build(Lorg/simpleframework/xml/stream/StreamReader$Start;)V
    .locals 3

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    new-instance v2, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v2, v1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Ljavax/xml/stream/events/Attribute;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read$2()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_0
    return-object v0
.end method

.method public final peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object p0
.end method

.method public final read$2()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)V

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    return-object p0

    :cond_2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/simpleframework/xml/stream/StreamReader$End;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read$2()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
