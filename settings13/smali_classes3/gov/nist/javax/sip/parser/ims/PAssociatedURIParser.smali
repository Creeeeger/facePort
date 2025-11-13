.class public Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssociatedURIParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 81
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "PAssociatedURIParser.parse"

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 84
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    const/16 v2, 0x851

    .line 88
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 90
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    const-string v3, "P-Associated-URI"

    .line 91
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 93
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 94
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 96
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 99
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 102
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 103
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 104
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 106
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 109
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
