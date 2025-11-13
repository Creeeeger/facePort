.class public Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 55
    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string p0, "sip_urlLexer"

    .line 56
    invoke-virtual {p1, p0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 50
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method

.method private base_phone_number()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "base_phone_number"

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 380
    :goto_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    .line 382
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x29

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    goto :goto_2

    .line 393
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 387
    :cond_3
    :goto_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_5

    .line 398
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 397
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_6

    .line 398
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 399
    :cond_6
    throw v0
.end method

.method private final global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 474
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "global_phone_number"

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 477
    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    const/4 v3, 0x1

    .line 478
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 480
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 481
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_1

    .line 486
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 487
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object p1

    .line 488
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    .line 493
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_3

    .line 494
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 495
    :cond_3
    throw p1
.end method

.method protected static isMark(C)Z
    .locals 1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isReserved(C)Z
    .locals 1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static isUnreserved(C)Z
    .locals 1

    .line 76
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static isUserUnreserved(C)Z
    .locals 1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private local_number()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    const-string v2, "local_number"

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 412
    :goto_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 413
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    .line 421
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_2

    goto :goto_2

    .line 428
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexepcted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 422
    :cond_3
    :goto_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 423
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 432
    sget-boolean v1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v1, :cond_6

    .line 433
    invoke-virtual {p0, v2}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 434
    :cond_6
    throw v0
.end method

.method private local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 499
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "local_phone_number"

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 501
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    const/4 v3, 0x0

    .line 502
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 506
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 508
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 510
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 514
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 515
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object p1

    .line 516
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p1

    .line 527
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_4

    .line 528
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 529
    :cond_4
    throw p1
.end method

.method private phone_context()Lgov/nist/core/NameValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 572
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    .line 575
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {v0}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v0, 0xfff

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object p0

    .line 583
    :goto_0
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v2, "phone-context"

    invoke-direct {v0, v2, p0, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0

    .line 581
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phone-context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private tel_parameters()Lgov/nist/core/NameValueList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 540
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone-context"

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 544
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->phone_context()Lgov/nist/core/NameValue;

    move-result-object v1

    goto :goto_1

    .line 546
    :cond_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_1

    .line 547
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 548
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    .line 549
    new-instance v5, Lgov/nist/core/NameValue;

    invoke-direct {v5, v1, v2, v4}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v1, v5

    goto :goto_1

    .line 551
    :cond_1
    new-instance v2, Lgov/nist/core/NameValue;

    const-string v5, ""

    invoke-direct {v2, v1, v5, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v1, v2

    .line 554
    :goto_1
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 556
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 557
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private uriParam()Lgov/nist/core/NameValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 153
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "uriParam"

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v2, ""

    .line 157
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    .line 158
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-ne v4, v6, :cond_1

    .line 161
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 162
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v5, v7

    .line 165
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 169
    :cond_4
    :try_start_1
    new-instance v4, Lgov/nist/core/NameValue;

    invoke-direct {v4, v3, v2, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v4

    :catchall_0
    move-exception v0

    .line 171
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 173
    :cond_6
    throw v0
.end method


# virtual methods
.method protected escaped()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 214
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "escaped"

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 217
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    .line 219
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v4

    .line 220
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v3, v6, :cond_2

    .line 222
    invoke-static {v4}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    invoke-static {v5}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    .line 229
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 232
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 234
    :cond_3
    throw v0
.end method

.method protected hvalue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 701
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x22

    if-eq v1, v3, :cond_0

    const/16 v3, 0x24

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5f

    if-eq v1, v3, :cond_0

    const/16 v3, 0x7e

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :cond_0
    :pswitch_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_2

    .line 724
    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isAlphaDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x25

    if-ne v1, v2, :cond_3

    .line 728
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->escaped()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 725
    :cond_2
    :goto_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 732
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isEscaped()Z
    .locals 4

    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x25

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    .line 206
    invoke-virtual {v1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v1, 0x2

    .line 207
    invoke-virtual {p0, v1}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p0

    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v0, v3

    :catch_0
    :cond_0
    return v0
.end method

.method protected paramNameOrValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 129
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x24

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_2

    .line 142
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 144
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 143
    :cond_2
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 447
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "telephone_subscriber"

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 449
    :cond_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 453
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object p1

    goto :goto_1

    .line 455
    :cond_1
    invoke-static {v2}, Lgov/nist/core/StringTokenizer;->isHexDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 464
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected char "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 462
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    .line 468
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 467
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_5

    .line 468
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 469
    :cond_5
    throw p1
.end method

.method protected password()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 785
    :goto_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x24

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_3

    .line 795
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 797
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 796
    :cond_3
    :goto_2
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0
.end method

.method protected qheader()Lgov/nist/core/NameValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lgov/nist/core/StringTokenizer;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 694
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    move-result-object p0

    .line 695
    new-instance v1, Lgov/nist/core/NameValue;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 606
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "sipURL"

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 608
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    .line 610
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v2

    const/16 v3, 0x803

    .line 613
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    const/16 v4, 0x858

    if-ne v2, v4, :cond_1

    const-string v2, "sips"

    move v3, v4

    goto :goto_0

    :cond_1
    const-string v2, "sip"

    .line 620
    :goto_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 621
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 622
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v2

    .line 624
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 628
    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/StringTokenizer;->lookAhead()C

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v4, :cond_2

    .line 629
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 630
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    move-result-object v5

    .line 634
    :cond_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/StringTokenizer;->lookAhead()C

    move-result v4

    const/16 v6, 0x40

    if-ne v4, v6, :cond_3

    .line 635
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 636
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 637
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 640
    :cond_3
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v2}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 643
    :cond_4
    :goto_1
    new-instance v2, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v3

    invoke-direct {v2, v3}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    const/4 v3, 0x0

    .line 644
    invoke-virtual {v2, v3}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v2

    .line 645
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    .line 647
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v4, "charLexer"

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 648
    :cond_5
    :goto_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 650
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_7

    if-nez p1, :cond_6

    goto :goto_3

    .line 652
    :cond_6
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 653
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 654
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V

    goto :goto_2

    .line 657
    :cond_7
    :goto_3
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p1

    const/16 v2, 0x3f

    if-ne p1, v2, :cond_9

    .line 658
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 659
    :goto_4
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 660
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    move-result-object p1

    .line 661
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    .line 662
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result p1

    const/16 v2, 0x26

    if-eq p1, v2, :cond_8

    goto :goto_5

    .line 665
    :cond_8
    iget-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {p1, v7}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 674
    :cond_9
    :goto_5
    sget-boolean p1, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz p1, :cond_a

    .line 675
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_a
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 671
    :catch_0
    :try_start_1
    new-instance p1, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {p1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_6
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_b

    .line 675
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 676
    :cond_b
    throw p1
.end method

.method public telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 592
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 593
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object p0

    .line 594
    new-instance p1, Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-direct {p1}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    .line 595
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    return-object p1
.end method

.method public uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 336
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "uriReference"

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v2

    const/4 v3, 0x0

    .line 340
    aget-object v3, v2, v3

    const/4 v4, 0x1

    .line 341
    aget-object v2, v2, v4

    .line 344
    :try_start_0
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x803

    const-string v6, "Expecting \':\'"

    const/16 v7, 0x3a

    if-eq v4, v5, :cond_4

    .line 345
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v4

    const/16 v5, 0x858

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x839

    if-ne v3, v4, :cond_3

    .line 351
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object p1

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 356
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    new-instance v2, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 360
    :try_start_3
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1

    .line 346
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 347
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object p1

    .line 349
    :cond_6
    :try_start_4
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 364
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_7

    .line 365
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 366
    :cond_7
    throw p1
.end method

.method protected uric()Ljava/lang/String;
    .locals 6

    .line 254
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "uric"

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 258
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v3

    .line 259
    invoke-static {v3}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 260
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 261
    invoke-static {v3}, Lgov/nist/core/LexerCore;->charAsString(C)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    .line 262
    :cond_2
    :try_start_1
    invoke-static {v3}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/StringTokenizer;->consume(I)V

    .line 264
    invoke-static {v3}, Lgov/nist/core/LexerCore;->charAsString(C)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 265
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/StringTokenizer;->consume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v3

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    return-object v2

    :catchall_0
    move-exception v0

    .line 275
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_8

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 277
    :cond_8
    throw v0

    .line 275
    :catch_0
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_9

    .line 276
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_9
    return-object v2
.end method

.method protected uricString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uric()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_0

    .line 317
    new-instance v1, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/Parser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v3

    invoke-direct {v1, v3}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 318
    invoke-virtual {v1, v2}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected user()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 761
    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    const-string v1, "user"

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    .line 764
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v0

    .line 765
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    .line 767
    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lgov/nist/javax/sip/parser/URLParser;->isUserUnreserved(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 769
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 768
    :cond_2
    :goto_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 774
    :cond_3
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_4

    .line 777
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    .line 776
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_5

    .line 777
    invoke-virtual {p0, v1}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    .line 778
    :cond_5
    throw v0
.end method
