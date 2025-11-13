.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 156
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method


# virtual methods
.method protected date()Ljava/util/Calendar;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    const-string v0, "GMT"

    .line 83
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_c

    const/4 v2, 0x5

    .line 88
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "jan"

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_0
    const-string v4, "feb"

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_1
    const-string v4, "mar"

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    invoke-virtual {v0, v6, v6}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_2
    const-string v4, "apr"

    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x3

    .line 98
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "may"

    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x4

    .line 100
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_4
    const-string v4, "jun"

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_5
    const-string v2, "jul"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x6

    .line 104
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_6
    const-string v2, "aug"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x7

    .line 106
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_7
    const-string v2, "sep"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v1, 0x8

    .line 108
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_8
    const-string v2, "oct"

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x9

    .line 110
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_9
    const-string v2, "nov"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0xa

    .line 112
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_a
    const-string v2, "dec"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 114
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    :cond_b
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0

    :cond_c
    const-string v0, "Bad day "

    .line 87
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "bad date field"

    .line 123
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0
.end method

.method protected headerName(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 186
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 187
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 188
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->SPorHT()V

    return-void
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 172
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v1, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    return-object v1
.end method

.method protected time(Ljava/util/Calendar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 133
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    .line 135
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 137
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc

    .line 139
    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 141
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd

    .line 143
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "error processing time "

    .line 145
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0
.end method

.method protected wkday()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "wkday"

    .line 50
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mon"

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_1
    const-string v2, "Tue"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v2, "Wed"

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const-string v2, "Thu"

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const-string v2, "Fri"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x6

    goto :goto_0

    :cond_4
    const-string v2, "Sat"

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x7

    goto :goto_0

    :cond_5
    const-string v2, "Sun"

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v1, "bad wkday"

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 72
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 73
    throw v1
.end method
