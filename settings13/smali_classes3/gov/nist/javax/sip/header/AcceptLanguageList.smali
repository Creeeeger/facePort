.class public Lgov/nist/javax/sip/header/AcceptLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptLanguageList.java"


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

    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    const-string v1, "Accept-Language"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .line 48
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0
.end method

.method public getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;
    .locals 0

    .line 57
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    if-eqz p0, :cond_0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {p0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getFirst()Ljavax/sip/header/Header;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object p0

    return-object p0
.end method
