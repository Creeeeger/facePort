.class public Lgov/nist/javax/sip/parser/OrganizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "OrganizationParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "OrganizationParser.parse"

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/Organization;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    const/16 v3, 0x82d

    .line 69
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    const-string v3, "Organization"

    .line 71
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    .line 80
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 82
    :cond_2
    throw v0
.end method
