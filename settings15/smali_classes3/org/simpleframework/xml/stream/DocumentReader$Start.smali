.class Lorg/simpleframework/xml/stream/DocumentReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public final getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Start;->element:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
