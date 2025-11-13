.class public Lgov/nist/javax/sip/parser/WWWAuthenticateParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "WWWAuthenticateParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 64
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x830

    .line 67
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 68
    new-instance v2, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    .line 69
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    .line 72
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 74
    :cond_2
    throw v0
.end method
