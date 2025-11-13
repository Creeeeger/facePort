.class public Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 83
    fill-array-data v0, :array_0

    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void

    nop

    :array_0
    .array-data 2
        -0x3s
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    .line 76
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v0, "charLexer"

    .line 77
    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    const-string p1, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 4

    const/16 p0, 0x3f

    .line 225
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v0, 0x3b

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eq v0, v1, :cond_1

    if-le p0, v0, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    if-ne p0, v1, :cond_2

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :cond_2
    const/4 v0, 0x0

    .line 240
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v0

    :cond_3
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 247
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    return v3
.end method


# virtual methods
.method protected consumeDomainLabel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "domainLabel"

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 89
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    sget-object v3, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 91
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_2
    throw v0
.end method

.method public host()Lgov/nist/core/Host;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 172
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "host"

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 178
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lgov/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 185
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x2

    new-array v5, v5, [C

    const v6, 0xfffd

    aput-char v6, v5, v3

    const/4 v3, 0x1

    const/16 v6, 0x3a

    aput-char v6, v5, v3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    .line 187
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 189
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    .line 195
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->consumeDomainLabel()V

    .line 196
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 199
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    new-instance v3, Lgov/nist/core/Host;

    invoke-direct {v3, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v3

    .line 200
    :cond_4
    :try_start_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 201
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Missing host name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 202
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 206
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 208
    :cond_5
    throw v0
.end method

.method public hostPort(Z)Lgov/nist/core/HostPort;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 262
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "hostPort"

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v2

    .line 266
    new-instance v3, Lgov/nist/core/HostPort;

    invoke-direct {v3}, Lgov/nist/core/HostPort;-><init>()V

    .line 267
    invoke-virtual {v3, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    if-eqz p1, :cond_1

    .line 269
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 270
    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_7

    const/16 v5, 0xa

    if-eq v2, v5, :cond_7

    const/16 v5, 0xd

    if-eq v2, v5, :cond_7

    const/16 v5, 0x20

    if-eq v2, v5, :cond_7

    const/16 v5, 0x25

    if-eq v2, v5, :cond_4

    const/16 v5, 0x2c

    if-eq v2, v5, :cond_7

    const/16 v5, 0x2f

    if-eq v2, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v2, v5, :cond_7

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_7

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_7

    goto :goto_0

    .line 275
    :cond_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    if-eqz p1, :cond_3

    .line 276
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_3
    :try_start_1
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 281
    :catch_0
    :try_start_2
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 282
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :Error parsing port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 283
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-direct {p1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 300
    :cond_4
    iget-boolean v2, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    goto :goto_1

    .line 306
    :cond_6
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Illegal character in hostname:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 307
    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 308
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-direct {p1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 315
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_8
    return-object v3

    :catchall_0
    move-exception p1

    .line 314
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_9

    .line 315
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 316
    :cond_9
    throw p1
.end method

.method protected ipv6Reference()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "ipv6Reference"

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 103
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    const/16 v3, 0x5b

    const/16 v4, 0x3a

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/16 v7, 0x5d

    const/4 v8, 0x1

    if-eqz v1, :cond_6

    .line 104
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 105
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    .line 108
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v7, :cond_3

    .line 113
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    const/16 v3, 0x25

    if-ne v1, v3, :cond_a

    .line 118
    :try_start_1
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 120
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 136
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    add-int/2addr v1, v8

    invoke-virtual {v3, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    const-string v1, "]"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_4

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 110
    :cond_5
    :goto_1
    :try_start_2
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 146
    :cond_6
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 148
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    .line 149
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v9

    if-nez v9, :cond_9

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_7

    goto :goto_3

    :cond_7
    if-ne v1, v7, :cond_a

    .line 154
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_8

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 151
    :cond_9
    :goto_3
    :try_start_3
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 162
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 163
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Illegal Host name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 164
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 166
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_b

    .line 167
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 168
    :cond_b
    throw v0
.end method
