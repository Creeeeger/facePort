.class public Lgov/nist/javax/sip/parser/ExpiresParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ExpiresParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    .line 65
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "parse"

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x82a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 69
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 71
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 81
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :catch_1
    const-string v0, "bad integer format"

    .line 79
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 84
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_2
    throw v0
.end method
