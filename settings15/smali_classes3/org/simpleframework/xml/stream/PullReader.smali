.class public final Lorg/simpleframework/xml/stream/PullReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# instance fields
.field public parser:Lorg/xmlpull/v1/XmlPullParser;

.field public peek:Lorg/simpleframework/xml/stream/EventNode;


# virtual methods
.method public final next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->read$1$1()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_0
    return-object v0
.end method

.method public final peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object p0
.end method

.method public final read$1$1()Lorg/simpleframework/xml/stream/EventNode;
    .locals 5

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Start;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$Start;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Lorg/simpleframework/xml/stream/PullReader$Entry;

    iget-object v4, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, v4, v2}, Lorg/simpleframework/xml/stream/PullReader$Entry;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Text;

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/PullReader$Text;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance p0, Lorg/simpleframework/xml/stream/PullReader$End;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->read$1$1()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
