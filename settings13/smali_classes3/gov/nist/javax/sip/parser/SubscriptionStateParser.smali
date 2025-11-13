.class public Lgov/nist/javax/sip/parser/SubscriptionStateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubscriptionStateParser.java"


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

    const-string v1, "SubscriptionStateParser.parse"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    const/16 v2, 0x838

    .line 72
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    const-string v2, "Subscription-State"

    .line 74
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_4

    .line 82
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "reason"

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    .line 88
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setReasonCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "expires"

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v4, "retry-after"

    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 111
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 112
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setRetryAfter(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 120
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 123
    :cond_3
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 125
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 126
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v0, v2, v4}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 133
    :cond_4
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_5

    .line 134
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 133
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_6

    .line 134
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 135
    :cond_6
    throw v0
.end method
