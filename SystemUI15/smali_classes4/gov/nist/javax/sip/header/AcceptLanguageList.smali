.class public Lgov/nist/javax/sip/header/AcceptLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/AcceptLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2da707f5d2dc9048L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    const-string v1, "Accept-Language"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)V

    return-object v0
.end method

.method public final getFirst()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 0

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getLast()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 0

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    :goto_0
    return-object p0
.end method
