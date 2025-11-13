.class public final Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(ILjava/io/Writer;)Z
    .locals 0

    const p0, 0xd800

    if-lt p1, p0, :cond_0

    const p0, 0xdfff

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
