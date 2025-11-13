.class public final Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field public final stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void

    nop

    :array_0
    .array-data 2
        -0x3s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v0, "charLexer"

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    const-string p1, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    new-instance v0, Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p1, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method


# virtual methods
.method public final hostPort(Z)Lgov/nist/core/HostPort;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x3b

    const/16 v2, 0x3f

    const-string v3, "]"

    const/4 v4, -0x1

    const/16 v5, 0x25

    iget-boolean v6, v0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    const/16 v7, 0x5b

    const/4 v8, 0x1

    const/16 v9, 0x3a

    const/4 v10, 0x0

    iget-object v11, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v11, v10}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v11

    if-ne v11, v7, :cond_7

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v12, 0x2e

    const/16 v13, 0x5d

    if-eqz v6, :cond_3

    :goto_0
    iget-object v14, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v14}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v14, v10}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v14

    invoke-static {v14}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v15

    if-nez v15, :cond_2

    if-eq v14, v12, :cond_2

    if-eq v14, v9, :cond_2

    if-ne v14, v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v14, v13, :cond_1

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_1
    if-ne v14, v5, :cond_6

    iget-object v7, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    iget-object v7, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v4, :cond_6

    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object v15, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v15, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v10}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    if-eq v3, v12, :cond_5

    if-eq v3, v9, :cond_5

    if-ne v3, v7, :cond_4

    goto :goto_3

    :cond_4
    if-ne v3, v13, :cond_6

    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_5
    :goto_3
    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v3, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Illegal Host name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_7
    iget-object v7, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v11, v4, :cond_8

    if-eq v12, v4, :cond_9

    if-le v11, v12, :cond_9

    :cond_8
    move v11, v12

    :cond_9
    if-ne v11, v4, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    :cond_a
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v4, :cond_b

    goto :goto_4

    :cond_b
    add-int/2addr v11, v8

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_c

    :goto_4
    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v4, v3, Lgov/nist/core/StringTokenizer;->ptr:I

    sget-object v7, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v3, v7}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v7, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, v3, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v7, v4, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v11, 0x2

    new-array v11, v11, [C

    fill-array-data v11, :array_0

    invoke-virtual {v4, v11}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v11, "["

    invoke-direct {v4, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v12, v11, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v11, v11, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v12, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_14

    new-instance v4, Lgov/nist/core/Host;

    invoke-direct {v4, v3}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    new-instance v3, Lgov/nist/core/HostPort;

    invoke-direct {v3}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v4, v3, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    if-eqz p1, :cond_d

    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    :cond_d
    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v10}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_13

    const/16 v7, 0xa

    if-eq v4, v7, :cond_13

    const/16 v7, 0xd

    if-eq v4, v7, :cond_13

    const/16 v7, 0x20

    if-eq v4, v7, :cond_13

    if-eq v4, v5, :cond_10

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_13

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_13

    if-eq v4, v9, :cond_e

    if-eq v4, v1, :cond_13

    const/16 v1, 0x3e

    if-eq v4, v1, :cond_13

    if-eq v4, v2, :cond_13

    goto :goto_6

    :cond_e
    iget-object v1, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    if-eqz p1, :cond_f

    iget-object v1, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    :cond_f
    :try_start_0
    iget-object v1, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lgov/nist/core/HostPort;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v3, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    const-string v4, " :Error parsing port "

    invoke-static {v2, v3, v4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_10
    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    if-eqz p1, :cond_12

    goto :goto_7

    :cond_12
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v3, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Illegal character in hostname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v10}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_13
    :goto_7
    return-object v3

    :cond_14
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v3, v3, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Missing host name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v0, v0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :array_0
    .array-data 2
        -0x3s
        0x3as
    .end array-data
.end method
