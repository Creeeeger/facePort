.class public Lgov/nist/javax/sip/parser/ReplyToParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReplyToParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .line 65
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "ReplyTo.parse"

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x83a

    .line 69
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    const-string v3, "Reply-To"

    .line 71
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 77
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 79
    :cond_2
    throw v0
.end method
