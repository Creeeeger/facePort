.class public Lgov/nist/javax/sip/parser/AuthenticationInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AuthenticationInfoParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "AuthenticationInfoParser.parse"

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x840

    .line 70
    :try_start_0
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    const-string v2, "Authentication-Info"

    .line 73
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    invoke-super {p0}, Lgov/nist/core/ParserCore;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 80
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 82
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-super {p0}, Lgov/nist/core/ParserCore;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 87
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 94
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_3
    throw v0
.end method
