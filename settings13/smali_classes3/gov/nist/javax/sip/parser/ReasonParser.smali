.class public Lgov/nist/javax/sip/parser/ReasonParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReasonParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    new-instance v0, Lgov/nist/javax/sip/header/ReasonList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    .line 67
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "ReasonParser.parse"

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x83b

    .line 71
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 72
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    .line 74
    new-instance v1, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 75
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 81
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 82
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    .line 83
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 84
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :cond_2
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 90
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_4

    .line 91
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_4
    throw v0
.end method
