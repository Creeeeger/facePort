.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected bufferLen:I

.field protected ptr:I

.field protected savedPtr:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public static isAlpha(C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_3

    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 86
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method public static isAlphaDigit(C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_4

    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_1

    const/16 v2, 0x5a

    if-le p0, v2, :cond_2

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_3

    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 106
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 107
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 108
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0
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

    .line 95
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

    .line 78
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
.method public consume()V
    .locals 1

    .line 154
    iget v0, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public consume(I)V
    .locals 1

    .line 158
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .line 113
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 114
    :goto_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    const/16 v3, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 115
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    goto :goto_0

    .line 117
    :cond_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 118
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 120
    :cond_1
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 146
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getNextChar: End of buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getNextToken(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 184
    iget-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 181
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "EOL reached"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public hasMoreChars()Z
    .locals 1

    .line 72
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

.method public lookAhead()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p0

    return p0
.end method

.method public lookAhead(I)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 137
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
