.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static nesting_level:I


# instance fields
.field public lexer:Lgov/nist/core/LexerCore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbg_enter()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method

.method public static dbg_leave()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v1, v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method


# virtual methods
.method public final nameValue()Lgov/nist/core/NameValue;
    .locals 7

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v2, v0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x3d

    const-string v5, ""

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    :try_start_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v5

    move p0, v6

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object p0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object p0, p0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move-object v5, p0

    move p0, v0

    move v6, p0

    :goto_0
    new-instance v1, Lgov/nist/core/NameValue;

    iget-object v3, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lgov/nist/core/NameValue;->setQuotedValue()V

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Lgov/nist/core/NameValue;

    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :goto_1
    throw p0

    :catch_0
    new-instance p0, Lgov/nist/core/NameValue;

    iget-object v1, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object p0
.end method
