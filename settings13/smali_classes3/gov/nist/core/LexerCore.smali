.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .locals 0

    .line 649
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isTokenChar(C)Z
    .locals 2

    .line 303
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x60

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public SPorHT()V
    .locals 3

    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    :goto_0
    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 285
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .locals 1

    .line 99
    invoke-static {p1}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 103
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object p0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2

    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 121
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object p0
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .locals 3

    .line 585
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 588
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 593
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 598
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .locals 3

    .line 609
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 612
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 617
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 622
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public charAsString(I)Ljava/lang/String;
    .locals 1

    .line 656
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public comment()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 557
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 559
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_4

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_3

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 570
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : unexpected EOL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 575
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 563
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :unexpected EOL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public consumeValidChars([C)V
    .locals 6

    .line 488
    array-length v0, p1

    .line 490
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v0, :cond_2

    .line 494
    aget-char v4, p1, v3

    packed-switch v4, :pswitch_data_0

    if-ne v2, v4, :cond_0

    move v4, v5

    goto :goto_2

    .line 497
    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v4

    goto :goto_2

    .line 500
    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v4

    goto :goto_2

    .line 503
    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v4

    goto :goto_2

    :cond_0
    move v4, v1

    :goto_2
    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 513
    invoke-virtual {p0, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 0

    .line 756
    iget-object p0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    return-object p0
.end method

.method public getNextId()Ljava/lang/String;
    .locals 0

    .line 158
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextToken()Lgov/nist/core/Token;
    .locals 0

    .line 163
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object p0
.end method

.method public getPtr()I
    .locals 0

    .line 750
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return p0
.end method

.method public getRest()Ljava/lang/String;
    .locals 2

    .line 704
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 707
    :cond_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 715
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const-string v3, "unexpected EOL"

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    .line 726
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_2

    .line 729
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 730
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 732
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 740
    :cond_2
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 741
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 722
    :cond_3
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public markInputPosition()I
    .locals 0

    .line 690
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return p0
.end method

.method public match(I)Lgov/nist/core/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x800

    const/16 v1, 0x1000

    if-le p1, v0, :cond_6

    if-ge p1, v1, :cond_6

    const-string v0, "\nID expected"

    const/16 v1, 0xfff

    if-ne p1, v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 218
    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 219
    iput v1, v0, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_0

    .line 215
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    const/16 v1, 0xffe

    if-ne p1, v1, :cond_4

    .line 221
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 225
    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 226
    iput v1, v0, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_0

    .line 222
    :cond_3
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 228
    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 231
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 235
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 236
    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 237
    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_0

    .line 232
    :cond_5
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nUnexpected Token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-le p1, v1, :cond_a

    .line 241
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v1, 0x1002

    if-ne p1, v1, :cond_8

    .line 243
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 247
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 249
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 244
    :cond_7
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpecting DIGIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    const/16 v1, 0x1003

    if-ne p1, v1, :cond_b

    .line 252
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 254
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 256
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    .line 258
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 253
    :cond_9
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpecting ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_a
    int-to-char p1, p1

    .line 265
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    if-ne v0, p1, :cond_c

    .line 271
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 277
    :cond_b
    :goto_0
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object p0

    .line 273
    :cond_c
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nExpecting  >>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "<<< got >>>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "<<<"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v1, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 665
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v1, 0x0

    .line 667
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 672
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 674
    :goto_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    .line 675
    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 668
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unexpected token at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :catch_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public peekNextToken()Lgov/nist/core/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public peekNextToken(I)[Lgov/nist/core/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 174
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 175
    new-array v1, p1, [Lgov/nist/core/Token;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 177
    new-instance v3, Lgov/nist/core/Token;

    invoke-direct {v3}, Lgov/nist/core/Token;-><init>()V

    .line 178
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v4

    .line 180
    iput-object v4, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 181
    invoke-static {v4}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 184
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_0
    const/16 v4, 0xfff

    .line 186
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v4

    .line 189
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 190
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x1003

    .line 191
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 192
    :cond_2
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v4, 0x1002

    .line 193
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    .line 195
    :cond_3
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    .line 197
    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_4
    iget p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iput p1, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    .line 200
    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-object v1
.end method

.method public quotedString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 529
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 530
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 532
    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 534
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 546
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    sub-int/2addr p0, v1

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_1

    .line 543
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 539
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :unexpected EOL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public rewindInputPosition(I)V
    .locals 0

    .line 697
    iput p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public startsId()Z
    .locals 1

    const/4 v0, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p0

    .line 326
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public startsSafeToken()Z
    .locals 3

    const/4 v0, 0x0

    .line 334
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p0

    .line 335
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x27

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x40

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    return v0

    :cond_1
    :pswitch_0
    return v2

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public ttoken()Ljava/lang/String;
    .locals 2

    .line 376
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 378
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    .line 380
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ttokenSafe()Ljava/lang/String;
    .locals 5

    .line 434
    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    .line 436
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    .line 438
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto :goto_1

    :cond_1
    :pswitch_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
