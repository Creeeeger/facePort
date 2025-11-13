.class public Lgov/nist/javax/sip/parser/AuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "AuthorizationParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "parse"

    .line 65
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    const/16 v1, 0x817

    .line 67
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 68
    new-instance v1, Lgov/nist/javax/sip/header/Authorization;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    .line 69
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 73
    throw v1
.end method
