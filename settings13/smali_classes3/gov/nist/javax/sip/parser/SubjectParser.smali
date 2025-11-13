.class public Lgov/nist/javax/sip/parser/SubjectParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubjectParser.java"


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    .line 66
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "SubjectParser.parse"

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x825

    .line 70
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->headerName(I)V

    .line 72
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 78
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_2
    throw v0
.end method
