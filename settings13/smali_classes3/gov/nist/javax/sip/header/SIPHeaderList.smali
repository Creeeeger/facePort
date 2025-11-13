.class public abstract Lgov/nist/javax/sip/header/SIPHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPHeaderList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HDR:",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        ">",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        "Ljava/util/List<",
        "THDR;>;"
    }
.end annotation


# static fields
.field private static prettyEncode:Z = false


# instance fields
.field protected hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation
.end field

.field private myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>()V

    .line 78
    iput-object p2, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public add(ILgov/nist/javax/sip/header/SIPHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 381
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(ILgov/nist/javax/sip/header/SIPHeader;)V

    return-void
.end method

.method public add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result p0

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 524
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 520
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    .line 536
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 450
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 454
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    iput-object v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 456
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not clone!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "THDR;>;)",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/Header;

    .line 466
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 137
    invoke-virtual {p0, p2, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 540
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 529
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "\r\n"

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 161
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Proxy-Authenticate"

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Authorization"

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Proxy-Authorization"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Via"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Route"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Record-Route"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 168
    :cond_3
    :goto_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 169
    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 171
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    :goto_2
    return-object p1
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .line 496
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 500
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 502
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    if-eq v1, p0, :cond_2

    .line 504
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 506
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    const-string v2, "Privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 508
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, ";"

    .line 510
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object p1

    .line 503
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected circularity in SipHeaderList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 399
    :cond_0
    instance-of v1, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 400
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 401
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object p1, p1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0

    .line 405
    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public get(I)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 552
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->get(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    return-object p0
.end method

.method public getFirst()Ljavax/sip/header/Header;
    .locals 1

    .line 212
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/sip/header/Header;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMyClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 644
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    .line 562
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 244
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "THDR;>;"
        }
    .end annotation

    .line 573
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 584
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->remove(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 597
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 616
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 625
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    .line 654
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 476
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation

    .line 634
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 357
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 665
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
