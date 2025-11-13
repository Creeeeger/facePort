.class public abstract Lgov/nist/javax/sip/parser/Parser;
.super Lgov/nist/core/ParserCore;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    .line 45
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 46
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result p0

    invoke-direct {v0, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected getLexer()Lgov/nist/javax/sip/parser/Lexer;
    .locals 0

    .line 51
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast p0, Lgov/nist/javax/sip/parser/Lexer;

    return-object p0
.end method

.method protected method()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "method"

    .line 78
    :try_start_0
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    aget-object v1, v1, v2

    .line 82
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x805

    if-eq v2, v3, :cond_2

    .line 83
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x806

    if-eq v2, v3, :cond_2

    .line 84
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x808

    if-eq v2, v3, :cond_2

    .line 85
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x807

    if-eq v2, v3, :cond_2

    .line 86
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x804

    if-eq v2, v3, :cond_2

    .line 87
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x809

    if-eq v2, v3, :cond_2

    .line 88
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x835

    if-eq v2, v3, :cond_2

    .line 89
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x836

    if-eq v2, v3, :cond_2

    .line 90
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x843

    if-eq v2, v3, :cond_2

    .line 91
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0x846

    if-eq v2, v3, :cond_2

    .line 92
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v3, 0xfff

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Invalid Method"

    .line 96
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1

    .line 93
    :cond_2
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->consume()V

    .line 94
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    sget-boolean v2, Lgov/nist/core/Debug;->debug:Z

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    .line 99
    sget-boolean v2, Lgov/nist/core/Debug;->debug:Z

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 101
    :cond_4
    throw v1
.end method
