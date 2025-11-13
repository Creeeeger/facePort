.class public Lgov/nist/javax/sip/parser/extensions/ReferencesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReferencesParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "ReferencesParser.parse"

    .line 38
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_0

    const-string v2, "ReasonParser.parse"

    .line 39
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x862

    .line 42
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 43
    new-instance v2, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    .line 44
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 46
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    .line 49
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    .line 52
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 54
    :cond_2
    throw v1
.end method
