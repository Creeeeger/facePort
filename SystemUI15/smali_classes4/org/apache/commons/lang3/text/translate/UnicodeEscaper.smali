.class public Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final above:I

.field public final below:I

.field public final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    iput p2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    return-void
.end method


# virtual methods
.method public toUtf16Escape(I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\\u"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translate(ILjava/io/Writer;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    iget v3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-eqz v0, :cond_1

    if-lt p1, v3, :cond_0

    if-le p1, v2, :cond_2

    :cond_0
    return v1

    :cond_1
    if-lt p1, v3, :cond_2

    if-gt p1, v2, :cond_2

    return v1

    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->toUtf16Escape(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "\\u"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->HEX_DIGITS:[C

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p0, v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    and-int/lit8 p1, p1, 0xf

    aget-char p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
