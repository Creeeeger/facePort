.class public Lgov/nist/javax/sip/header/Server;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Server.java"


# static fields
.field private static final serialVersionUID:J = -0x31ca4c7c2de02b7dL


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Server"

    .line 86
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    iget-object p0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 65
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0}, Lgov/nist/javax/sip/header/Server;->encodeProduct()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
