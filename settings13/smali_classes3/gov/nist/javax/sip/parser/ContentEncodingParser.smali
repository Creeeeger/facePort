.class public Lgov/nist/javax/sip/parser/ContentEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentEncodingParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "ContentEncodingParser.parse"

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncodingList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncodingList;-><init>()V

    const/16 v2, 0x823

    .line 74
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 76
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 77
    new-instance v2, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    const-string v4, "Content-Encoding"

    .line 78
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 89
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_1

    .line 90
    new-instance v2, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    .line 91
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 92
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 94
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 95
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :cond_2
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 104
    :try_start_1
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_4
    throw v0
.end method
