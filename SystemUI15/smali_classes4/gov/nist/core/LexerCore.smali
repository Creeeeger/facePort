.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final globalSymbolTable:Ljava/util/Hashtable;

.field public static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field public currentLexer:Ljava/util/Hashtable;

.field public currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final isTokenChar(C)Z
    .locals 2

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
.method public final SPorHT()V
    .locals 3

    const/4 v0, 0x0

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

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final addKeyword(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lgov/nist/javax/sip/Utils;->toHex:[C

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final byteStringNoSemicolon()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

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

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final byteStringNoSlash()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

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

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final comment()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/text/ParseException;

    const-string v1, " : unexpected EOL"

    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/text/ParseException;

    const-string v1, " :unexpected EOL"

    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final consumeValidChars([C)V
    .locals 6

    array-length v0, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v0, :cond_2

    aget-char v4, p1, v3

    packed-switch v4, :pswitch_data_0

    if-ne v2, v4, :cond_0

    move v4, v5

    goto :goto_2

    :cond_0
    move v4, v1

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v4

    goto :goto_2

    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v4

    goto :goto_2

    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

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

.method public final getRest()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    iget-object v3, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    const-string v4, "unexpected EOL"

    if-eqz v2, :cond_3

    const/16 v5, 0x2f

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    invoke-static {v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    invoke-virtual {p0, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/text/ParseException;

    invoke-static {v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final match(I)Lgov/nist/core/Token;
    .locals 4

    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x800

    const/16 v3, 0x1000

    if-le p1, v2, :cond_6

    if-ge p1, v3, :cond_6

    const-string v2, "\nID expected"

    const/16 v3, 0xfff

    if-ne p1, v3, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p1

    invoke-static {p1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iput v3, v0, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/text/ParseException;

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    const/16 v3, 0xffe

    if-ne p1, v3, :cond_4

    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p1

    invoke-static {p1}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x27

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_3

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3f

    if-eq p1, v1, :cond_3

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_1

    :cond_3
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object p1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iput v3, v0, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_2

    :catch_1
    :goto_1
    new-instance p1, Ljava/text/ParseException;

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    sget-object v3, Lgov/nist/javax/sip/Utils;->toHex:[C

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_5

    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_2

    :cond_5
    new-instance p1, Ljava/text/ParseException;

    const-string v2, "\nUnexpected Token : "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_6
    const/4 v2, 0x1

    if-le p1, v3, :cond_a

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x1002

    if-ne p1, v3, :cond_8

    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "\nExpecting DIGIT"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    const/16 v3, 0x1003

    if-ne p1, v3, :cond_b

    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Lgov/nist/core/Token;

    invoke-direct {v0}, Lgov/nist/core/Token;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v0, Lgov/nist/core/Token;->tokenType:I

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "\nExpecting ALPHA"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_a
    int-to-char p1, p1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-ne v1, p1, :cond_c

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    :cond_b
    :goto_2
    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object p0

    :cond_c
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nExpecting  >>>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "<<< got >>>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "<<<"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v2, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

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

.method public final number()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    :goto_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Unexpected token at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v3, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final peekNextToken(I)[Lgov/nist/core/Token;
    .locals 7

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    new-array v1, p1, [Lgov/nist/core/Token;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_4

    new-instance v4, Lgov/nist/core/Token;

    invoke-direct {v4}, Lgov/nist/core/Token;-><init>()V

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    invoke-static {v5}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    sget-object v6, Lgov/nist/javax/sip/Utils;->toHex:[C

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    :cond_0
    const/16 v5, 0xfff

    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-static {v5}, Lgov/nist/core/StringTokenizer;->isAlpha(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v5, 0x1003

    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v5, 0x1002

    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    goto :goto_2

    :cond_3
    iput v5, v4, Lgov/nist/core/Token;->tokenType:I

    :goto_2
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iput p1, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-object v1
.end method

.method public final quotedString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v2

    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    sub-int/2addr p0, v1

    invoke-virtual {v4, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/text/ParseException;

    const-string v1, " :unexpected EOL"

    invoke-static {v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ttoken()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

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

.method public final ttokenSafe()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto :goto_1

    :cond_1
    :pswitch_0
    invoke-virtual {p0, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_2
    :goto_1
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
