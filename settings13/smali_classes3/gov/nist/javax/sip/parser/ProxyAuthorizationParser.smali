.class public Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;
.super Lgov/nist/javax/sip/parser/ChallengeParser;
.source "ProxyAuthorizationParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x818

    .line 65
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 66
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    .line 67
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    return-object v0
.end method
