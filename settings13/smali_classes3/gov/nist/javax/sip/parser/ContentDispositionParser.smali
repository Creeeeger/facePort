.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "ContentDispositionParser.parse"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x834

    .line 71
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 73
    new-instance v2, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    const-string v3, "Content-Disposition"

    .line 74
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 84
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_2
    throw v0
.end method
