.class public final Lorg/simpleframework/xml/stream/DocumentProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field public final factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void
.end method


# virtual methods
.method public final provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentProvider;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    new-instance p1, Lorg/simpleframework/xml/stream/DocumentReader;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/NodeExtractor;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    :cond_0
    iput-object v0, p1, Lorg/simpleframework/xml/stream/DocumentReader;->queue:Lorg/simpleframework/xml/stream/NodeExtractor;

    new-instance v0, Lorg/simpleframework/xml/stream/NodeStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/NodeStack;-><init>()V

    iput-object v0, p1, Lorg/simpleframework/xml/stream/DocumentReader;->stack:Lorg/simpleframework/xml/stream/NodeStack;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
