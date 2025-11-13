.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "ParserCore.java"


# static fields
.field public static final debug:Z

.field static nesting_level:I


# instance fields
.field protected lexer:Lgov/nist/core/LexerCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    sput-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dbg_enter(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 102
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_0

    const-string v2, ">"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nlexer buffer = \n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 109
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_1
    sget p0, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method

.method protected dbg_leave(Ljava/lang/String;)V
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 116
    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_0

    const-string v2, "<"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nlexer buffer = \n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 124
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :cond_1
    sget p0, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method

.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 130
    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object p0

    return-object p0
.end method

.method protected nameValue(C)Lgov/nist/core/NameValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 49
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "nameValue"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 52
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 53
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 55
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 61
    :try_start_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    const/4 v7, 0x1

    if-ne v5, p1, :cond_5

    .line 64
    :try_start_2
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 65
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 68
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p1

    const/16 v5, 0x22

    if-ne p1, v5, :cond_1

    .line 69
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v6

    move p1, v7

    move v7, v4

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object p1

    .line 74
    iget-object p1, p1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    if-nez p1, :cond_2

    move p1, v4

    goto :goto_0

    :cond_2
    move-object v6, p1

    move p1, v4

    move v7, p1

    .line 82
    :goto_0
    new-instance v3, Lgov/nist/core/NameValue;

    iget-object v5, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v3

    .line 87
    :cond_5
    :try_start_3
    new-instance p1, Lgov/nist/core/NameValue;

    iget-object v3, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {p1, v3, v6, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 94
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object p1

    .line 90
    :catch_0
    :try_start_4
    new-instance p1, Lgov/nist/core/NameValue;

    iget-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_8
    throw p1
.end method
