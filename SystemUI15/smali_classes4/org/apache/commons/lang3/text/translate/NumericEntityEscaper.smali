.class public final Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
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

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    iput p2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    return-void
.end method

.method public static between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 2

    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public final translate(ILjava/io/Writer;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    iget p0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-eqz v0, :cond_1

    if-lt p1, p0, :cond_0

    if-le p1, v2, :cond_2

    :cond_0
    return v1

    :cond_1
    if-lt p1, p0, :cond_2

    if-gt p1, v2, :cond_2

    return v1

    :cond_2
    const-string p0, "&#"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-static {p1, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    const/4 p0, 0x1

    return p0
.end method
