.class Lorg/simpleframework/xml/stream/PullReader$Start;
.super Lorg/simpleframework/xml/stream/EventElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final line:I

.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final reference:Ljava/lang/String;

.field private final source:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventElement;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->reference:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->line:I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->prefix:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public final getLine()I
    .locals 0

    iget p0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->line:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Start;->name:Ljava/lang/String;

    return-object p0
.end method
