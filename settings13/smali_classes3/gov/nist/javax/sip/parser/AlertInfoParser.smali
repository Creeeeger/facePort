.class public Lgov/nist/javax/sip/parser/AlertInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "AlertInfoParser.parse"

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfoList;-><init>()V

    const/16 v2, 0x80d

    .line 75
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 77
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    .line 78
    new-instance v2, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    const-string v4, "Alert-Info"

    .line 79
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    .line 86
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 87
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v5, 0x1

    .line 88
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    .line 90
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    goto :goto_1

    .line 95
    :cond_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 104
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    .line 105
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :cond_3
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    .line 111
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_5
    throw v0
.end method
