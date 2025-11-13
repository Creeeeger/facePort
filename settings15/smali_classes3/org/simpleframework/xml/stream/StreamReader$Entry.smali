.class public final Lorg/simpleframework/xml/stream/StreamReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final entry:Ljavax/xml/stream/events/Attribute;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/Attribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {p0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {p0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {p0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSource()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Entry;->entry:Ljavax/xml/stream/events/Attribute;

    invoke-interface {p0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isReserved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
