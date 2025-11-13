.class public Lgov/nist/javax/sip/header/UserAgent;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "UserAgent.java"


# static fields
.field private static final serialVersionUID:J = 0x3f4cc6de175b3c07L


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "User-Agent"

    .line 81
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    iget-object p0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 63
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 121
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/UserAgent;

    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 89
    invoke-direct {p0}, Lgov/nist/javax/sip/header/UserAgent;->encodeProduct()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
