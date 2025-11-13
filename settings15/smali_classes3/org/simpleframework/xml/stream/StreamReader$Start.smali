.class Lorg/simpleframework/xml/stream/StreamReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final element:Ljavax/xml/stream/events/StartElement;

.field private final location:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public final getAttributes()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {p0}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final getLine()I
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->location:Ljavax/xml/stream/Location;

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Start;->element:Ljavax/xml/stream/events/StartElement;

    invoke-interface {p0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
