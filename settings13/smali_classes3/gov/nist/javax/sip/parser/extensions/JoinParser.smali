.class public Lgov/nist/javax/sip/parser/extensions/JoinParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "JoinParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 43
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x85c

    .line 46
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 48
    new-instance v2, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    .line 49
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 50
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 52
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 53
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    .line 56
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 58
    :cond_2
    throw v0
.end method
