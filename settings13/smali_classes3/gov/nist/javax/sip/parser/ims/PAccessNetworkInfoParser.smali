.class public Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAccessNetworkInfoParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 90
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "AccessNetworkInfoParser.parse"

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x84f

    .line 93
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 94
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    const-string v2, "P-Access-Network-Info"

    .line 95
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 104
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    const/16 v2, 0x3d

    .line 107
    invoke-super {p0, v2}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 109
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 117
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 119
    :cond_3
    throw v0
.end method
