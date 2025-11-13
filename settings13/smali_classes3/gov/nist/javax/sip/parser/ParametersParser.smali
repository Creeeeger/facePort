.class public abstract Lgov/nist/javax/sip/parser/ParametersParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ParametersParser.java"


# virtual methods
.method protected parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 54
    :goto_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 57
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    invoke-virtual {p0}, Lgov/nist/core/ParserCore;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    .line 61
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected parseNameValueList(Lgov/nist/javax/sip/header/ParametersHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameters()V

    .line 71
    :goto_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    invoke-virtual {p0}, Lgov/nist/core/ParserCore;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0
.end method
