.class public final Lorg/simpleframework/xml/stream/PullReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final name:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;

.field public final reference:Ljava/lang/String;

.field public final source:Lorg/xmlpull/v1/XmlPullParser;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->reference:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->prefix:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->value:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final isReserved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
