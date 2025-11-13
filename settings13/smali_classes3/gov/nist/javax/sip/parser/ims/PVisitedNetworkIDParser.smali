.class public Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 81
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 83
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "VisitedNetworkIDParser.parse"

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x84b

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 96
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    .line 101
    :goto_1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 103
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_2

    .line 106
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 115
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 111
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected char = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 115
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_5
    throw v0
.end method

.method protected parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "parseQuotedString.parse"

    .line 123
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "parseQuotedString"

    .line 124
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_5

    .line 132
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 135
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    sget-boolean p1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_4

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_3

    .line 142
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->getNextChar()C

    move-result v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    :cond_4
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "unexpected EOL"

    invoke-direct {p1, v1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    const-string p1, "unexpected char"

    .line 131
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 156
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_6

    .line 157
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 158
    :cond_6
    throw p1
.end method

.method protected parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 167
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov/nist/core/Token;)V

    .line 170
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    return-void
.end method
