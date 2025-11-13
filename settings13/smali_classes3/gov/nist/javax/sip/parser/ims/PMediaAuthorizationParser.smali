.class public Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PMediaAuthorizationParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 75
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 77
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "MediaAuthorizationParser.parse"

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x852

    .line 83
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 85
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    const-string v3, "P-Media-Authorization"

    .line 86
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 88
    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    .line 90
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 99
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 102
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 105
    :cond_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_2
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 113
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_4
    throw v0
.end method
