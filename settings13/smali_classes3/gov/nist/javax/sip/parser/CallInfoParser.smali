.class public Lgov/nist/javax/sip/parser/CallInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "CallInfoParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "CallInfoParser.parse"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    const/16 v2, 0x833

    .line 70
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 72
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 73
    new-instance v2, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    const-string v4, "Call-Info"

    .line 74
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v6, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v6, 0x1

    .line 79
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 81
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3e

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 85
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 87
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_1

    .line 88
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v2, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 93
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 95
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v8, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v8}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 96
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 98
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :cond_2
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 110
    :cond_4
    throw v0
.end method
