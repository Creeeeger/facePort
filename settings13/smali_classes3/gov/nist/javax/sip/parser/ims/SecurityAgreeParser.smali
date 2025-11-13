.class public Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    .line 98
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 107
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    return-object v0

    :cond_2
    const/16 v5, 0x3b

    if-ne v1, v5, :cond_3

    .line 111
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    :cond_3
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 117
    :goto_1
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_a

    .line 119
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V

    .line 120
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 121
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_a

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_8

    .line 126
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    goto :goto_2

    .line 131
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    .line 135
    :cond_7
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 137
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 138
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 139
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 143
    :cond_8
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 145
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    .line 146
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 148
    :cond_9
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_1

    .line 151
    :cond_a
    :goto_3
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 156
    throw p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x3d

    .line 72
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 75
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 77
    :cond_2
    throw p1
.end method
