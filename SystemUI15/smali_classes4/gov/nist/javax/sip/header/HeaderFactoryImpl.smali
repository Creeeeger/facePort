.class public final Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {p0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public static createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 12

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    if-gt v5, v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move v8, v3

    move v7, v4

    :goto_2
    const/16 v9, 0xa

    if-gt v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xd

    if-eq v10, v11, :cond_5

    if-ne v10, v9, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v8, :cond_6

    if-eq v10, v6, :cond_4

    const/16 v7, 0x9

    if-ne v10, v7, :cond_3

    goto :goto_3

    :cond_3
    move v8, v3

    move v7, v4

    goto :goto_5

    :cond_4
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x1

    move v8, v3

    goto :goto_5

    :cond_5
    :goto_4
    if-nez v8, :cond_6

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v0

    :cond_6
    :goto_5
    add-int/2addr v4, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    sget v2, Lgov/nist/javax/sip/parser/Lexer;->$r8$clinit:I

    const/4 v2, 0x0

    if-nez v1, :cond_9

    :catch_0
    :cond_8
    move-object v4, v2

    goto :goto_6

    :cond_9
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v0, :cond_8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    if-nez v1, :cond_a

    :catch_1
    move-object p0, v2

    goto :goto_7

    :cond_a
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    if-eqz v4, :cond_11

    if-eqz p0, :cond_11

    sget-object p0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    invoke-static {v4}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_c

    :try_start_3
    sget-object v4, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_b

    sget-object v5, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_2
    move-exception p0

    goto :goto_9

    :cond_b
    :goto_8
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :goto_9
    invoke-static {p0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    throw v2

    :cond_c
    new-instance p0, Lgov/nist/javax/sip/parser/HeaderParser;

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    :goto_a
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    instance-of v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_d

    move-object v1, p0

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    iget-object v4, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v0, :cond_f

    iget-object p1, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_e

    :try_start_4
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/sip/header/Header;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    move-object v2, p0

    goto :goto_d

    :catch_3
    move-exception p0

    goto :goto_b

    :catch_4
    move-exception p0

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d

    :goto_c
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_d

    :cond_e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    goto :goto_d

    :cond_f
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Only singleton allowed "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :goto_d
    return-object v2

    :cond_10
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "could not create parser"

    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_11
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "The header name or value is null"

    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_5
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "Empty header."

    invoke-direct {p0, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
