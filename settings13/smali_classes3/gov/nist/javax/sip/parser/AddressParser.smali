.class public Lgov/nist/javax/sip/parser/AddressParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "AddressParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 41
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p0, "charLexer"

    .line 42
    invoke-virtual {p1, p0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public address(Z)Lgov/nist/javax/sip/address/AddressImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 93
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "address"

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    const/16 v3, 0x2f

    const/16 v4, 0x3a

    const/16 v5, 0x22

    const/16 v6, 0x3c

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "unexpected EOL"

    .line 106
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 110
    :cond_3
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    if-eq v0, v6, :cond_7

    if-ne v0, v5, :cond_4

    goto :goto_3

    :cond_4
    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "Bad address spec"

    .line 120
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 114
    :cond_6
    :goto_2
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 115
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v3, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 116
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p1

    const/4 v2, 0x2

    .line 117
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 118
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    goto :goto_4

    .line 112
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParser;->nameAddr()Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_4
    sget-boolean p1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz p1, :cond_8

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_8
    return-object v0

    :catchall_0
    move-exception p1

    .line 124
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 126
    :cond_9
    throw p1
.end method

.method protected nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 50
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "nameAddr"

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 53
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x3e

    const/16 v5, 0x3c

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    .line 54
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 55
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "sip_urlLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v3, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 59
    new-instance v3, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 60
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 61
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 62
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v3

    .line 66
    :cond_2
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 67
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 69
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v7, 0x22

    if-ne v3, v7, :cond_3

    .line 70
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v3

    .line 71
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    move-result-object v3

    .line 74
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 78
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 79
    new-instance v5, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v5}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 80
    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 81
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 82
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    .line 87
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_5

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_5
    throw v0
.end method
