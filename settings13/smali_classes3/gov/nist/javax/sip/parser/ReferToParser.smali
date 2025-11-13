.class public Lgov/nist/javax/sip/parser/ReferToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReferToParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x842

    .line 56
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/ReferTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReferTo;-><init>()V

    .line 58
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 59
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    return-object v0
.end method
