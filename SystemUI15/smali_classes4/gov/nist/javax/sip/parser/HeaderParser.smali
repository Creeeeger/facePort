.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p0, "command_keywordLexer"

    invoke-virtual {p1, p0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method


# virtual methods
.method public final headerName(I)V
    .locals 1

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->SPorHT()V

    return-void
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/16 v4, 0xa

    iget v5, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    iget-object v6, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    if-ge v3, v5, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v3, v2

    iput v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    if-ge v3, v5, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v3, v2

    iput v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :cond_1
    iget p0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v6, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v1, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    return-object v1
.end method
