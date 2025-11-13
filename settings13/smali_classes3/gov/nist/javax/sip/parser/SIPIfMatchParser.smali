.class public Lgov/nist/javax/sip/parser/SIPIfMatchParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SIPIfMatchParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "SIPIfMatch.parse"

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/SIPIfMatch;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>()V

    const/16 v3, 0x845

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 75
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 77
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/SIPIfMatch;->setETag(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    .line 86
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 88
    :cond_2
    throw v0
.end method
