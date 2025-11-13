.class public Lgov/nist/javax/sip/header/RouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Route;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f4a3d58ba83ad94L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    const-class v0, Lgov/nist/javax/sip/header/Route;

    const-string v1, "Route"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 58
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 64
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 72
    instance-of v0, p1, Lgov/nist/javax/sip/header/RouteList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/header/RouteList;

    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v0

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 78
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 79
    :cond_2
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Route;

    .line 81
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    .line 82
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Route;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
