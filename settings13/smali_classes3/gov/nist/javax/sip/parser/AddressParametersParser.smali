.class public Lgov/nist/javax/sip/parser/AddressParametersParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AddressParametersParser.java"


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "AddressParametersParser.parse"

    .line 52
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->setAddress(Ljavax/sip/address/Address;)V

    .line 57
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    .line 59
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 62
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 70
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_1
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 73
    throw p1
.end method
