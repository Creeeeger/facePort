.class public Lgov/nist/javax/sip/parser/ViaParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method private parseVia(Lgov/nist/javax/sip/header/Via;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 65
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 67
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 71
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 76
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    new-instance v3, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    .line 79
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    .line 85
    new-instance v0, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 90
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    :goto_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_2

    .line 94
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 95
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "branch"

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result p0

    const-string v0, "null branch Id"

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 105
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_6

    .line 112
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v0, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    :goto_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    .line 118
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_3

    :cond_3
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_4

    .line 122
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 125
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_2

    :cond_4
    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    .line 135
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    goto :goto_4

    .line 131
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 145
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "nameValue"

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 149
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 150
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 152
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 157
    :try_start_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    const/16 v7, 0x3d

    if-ne v5, v7, :cond_5

    .line 160
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 161
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 163
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, "received"

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 166
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 168
    :cond_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    const/16 v8, 0x22

    if-ne v5, v8, :cond_2

    .line 169
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v3

    move v6, v7

    goto :goto_0

    .line 172
    :cond_2
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 173
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 177
    :goto_0
    new-instance v5, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v6, :cond_3

    .line 180
    invoke-virtual {v5}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v5

    .line 183
    :cond_5
    :try_start_2
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v3

    .line 187
    :catch_0
    :try_start_3
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_7

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    return-object v0

    :catchall_0
    move-exception v0

    .line 191
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_8

    .line 192
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 193
    :cond_8
    throw v0
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 198
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 201
    :cond_0
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 203
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x810

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 204
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 205
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 206
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 209
    :cond_1
    new-instance v2, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 210
    invoke-direct {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    .line 211
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 212
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 213
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_2

    .line 214
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 215
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 217
    :cond_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 220
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 224
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 223
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    .line 224
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 225
    :cond_4
    throw v0
.end method
