.class public final Lorg/simpleframework/xml/stream/StreamProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field public final factory:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamProvider;->factory:Ljavax/xml/stream/XMLInputFactory;

    return-void
.end method


# virtual methods
.method public final provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamProvider;->factory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {p0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object p0

    new-instance p1, Lorg/simpleframework/xml/stream/StreamReader;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    return-object p1
.end method
