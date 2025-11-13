.class public final Lgov/nist/javax/sip/message/SIPRequest;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPRequest.java"


# static fields
.field private static final nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private requestLine:Lgov/nist/javax/sip/header/RequestLine;

.field private transient transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    .line 103
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    const-string v1, "INVITE"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "UPDATE"

    .line 111
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "SUBSCRIBE"

    .line 112
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "NOTIFY"

    .line 113
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "REFER"

    .line 114
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "BYE"

    .line 117
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "CANCEL"

    .line 118
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "ACK"

    .line 119
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "PRACK"

    .line 120
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v1, "INFO"

    .line 121
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v1, "MESSAGE"

    .line 122
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 123
    invoke-static {v4}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v1, "OPTIONS"

    .line 124
    invoke-static {v1}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "PUBLISH"

    .line 126
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 127
    invoke-static {v5}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string v0, "REGISTER"

    .line 128
    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 129
    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 130
    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    return-void
.end method

.method public static getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 157
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static putName(Ljava/lang/String;)V
    .locals 1

    .line 106
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v1, 0x0

    .line 484
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 485
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz p0, :cond_0

    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/RequestLine;

    iput-object p0, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .line 439
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\r\n\r\n"

    goto :goto_0

    .line 445
    :cond_1
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 497
    const-class v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 499
    :cond_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 501
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v0, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected setRequestLineDefaults()V
    .locals 1

    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 470
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
