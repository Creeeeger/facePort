.class public Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x827

    .line 56
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/ContactList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    .line 59
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 60
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    const/16 v5, 0x2a

    if-ne v2, v5, :cond_2

    .line 61
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v7, 0x20

    if-eq v2, v7, :cond_1

    const/16 v7, 0x9

    if-eq v2, v7, :cond_1

    const/16 v7, 0xd

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_2

    .line 63
    :cond_1
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    goto :goto_2

    .line 69
    :cond_2
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 71
    :goto_2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 72
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 75
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    :cond_3
    if-eq v1, v4, :cond_5

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "unexpected char"

    .line 80
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_3
    return-object v0
.end method
