.class public final Lorg/simpleframework/xml/stream/StreamReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final text:Ljavax/xml/stream/events/Characters;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Ljavax/xml/stream/events/Characters;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/StreamReader$Text;->text:Ljavax/xml/stream/events/Characters;

    invoke-interface {p0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
