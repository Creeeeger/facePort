.class public Lgov/nist/javax/sip/parser/UserAgentParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 73
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "UserAgentParser.parse"

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    const/16 v2, 0x811

    .line 77
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 78
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    .line 86
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 87
    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_1

    .line 90
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 103
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v6, 0x2f

    if-ne v2, v6, :cond_3

    .line 107
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "/"

    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v0, "Expected product version"

    .line 114
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 121
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    .line 124
    :goto_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Expected product string"

    .line 101
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_5
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_6

    .line 128
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v0

    :cond_7
    :try_start_1
    const-string v0, "empty header"

    .line 79
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 127
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_8

    .line 128
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 129
    :cond_8
    throw v0
.end method
