.class public Lgov/nist/javax/sip/parser/ErrorInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "ErrorInfoParser.parse"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    const/16 v2, 0x80a

    .line 72
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 74
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 76
    :goto_0
    new-instance v2, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    const-string v4, "Error-Info"

    .line 77
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v5, 0x1

    .line 82
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ErrorInfo;->setErrorInfo(Ljavax/sip/address/URI;)V

    .line 84
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 88
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 90
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_1

    .line 91
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :cond_2
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 98
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 100
    :cond_4
    throw v0
.end method
