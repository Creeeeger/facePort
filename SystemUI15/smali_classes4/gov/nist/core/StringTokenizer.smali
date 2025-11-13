.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Ljava/lang/String;

.field public final bufferLen:I

.field public ptr:I

.field public savedPtr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    const/4 p1, 0x0

    iput p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public static isAlpha(C)Z
    .locals 3

    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_3

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public static isAlphaDigit(C)Z
    .locals 3

    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_4

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public static isDigit(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method

.method public static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final consume(I)V
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public final getNextChar()C
    .locals 3

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, " getNextChar: End of buffer"

    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final getNextToken(C)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "EOL reached"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final hasMoreChars()Z
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget p0, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final lookAhead(I)C
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
