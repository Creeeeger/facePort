.class public Lgov/nist/javax/sip/parser/AcceptEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 87
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 88
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "AcceptEncodingParser.parse"

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x813

    .line 92
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 94
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 95
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 96
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto/16 :goto_2

    .line 98
    :cond_1
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_4

    .line 99
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 100
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xfff

    const/16 v7, 0x3b

    if-eq v5, v7, :cond_2

    .line 102
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 107
    :cond_2
    :goto_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 108
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 110
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x71

    invoke-virtual {v5, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 111
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 118
    invoke-virtual {v1, v5}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 127
    :cond_3
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 128
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_1

    .line 129
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 137
    :cond_4
    :goto_2
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 137
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 139
    :cond_6
    throw v0
.end method
