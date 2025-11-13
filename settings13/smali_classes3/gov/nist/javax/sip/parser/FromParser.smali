.class public Lgov/nist/javax/sip/parser/FromParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "FromParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 53
    new-instance v0, Lgov/nist/javax/sip/header/From;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 55
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x80e

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 56
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 58
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 59
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 60
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    return-object v0
.end method
