.class public abstract Lgov/nist/javax/sip/parser/Parser;
.super Lgov/nist/core/ParserCore;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    return-void
.end method


# virtual methods
.method public final createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 4

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v2, v2, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    const-string v3, ":"

    invoke-static {v1, v2, v3, p1}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final method()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, v0, Lgov/nist/core/Token;->tokenType:I

    const/16 v2, 0x805

    if-eq v1, v2, :cond_1

    const/16 v2, 0x806

    if-eq v1, v2, :cond_1

    const/16 v2, 0x808

    if-eq v1, v2, :cond_1

    const/16 v2, 0x807

    if-eq v1, v2, :cond_1

    const/16 v2, 0x804

    if-eq v1, v2, :cond_1

    const/16 v2, 0x809

    if-eq v1, v2, :cond_1

    const/16 v2, 0x835

    if-eq v1, v2, :cond_1

    const/16 v2, 0x836

    if-eq v1, v2, :cond_1

    const/16 v2, 0x843

    if-eq v1, v2, :cond_1

    const/16 v2, 0x846

    if-eq v1, v2, :cond_1

    const/16 v2, 0xfff

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Invalid Method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget-object p0, v0, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    return-object p0
.end method
