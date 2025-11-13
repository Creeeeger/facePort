.class public abstract Lgov/nist/javax/sip/parser/ChallengeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ChallengeParser.java"


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setScheme(Ljava/lang/String;)V

    .line 96
    :goto_0
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;->parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    .line 98
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 106
    throw p0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x3d

    .line 71
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v2

    .line 72
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 74
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_2
    throw p1
.end method
