.class public Lgov/nist/javax/sip/header/ContentLanguage;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLanguage.java"


# static fields
.field private static final serialVersionUID:J = -0x481aef79f0bb5eceL


# instance fields
.field protected locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Language"

    .line 95
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Language"

    .line 103
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setLanguageTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 165
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ContentLanguage;

    .line 166
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 112
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLanguage;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLanguageTag(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2d

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 134
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    :goto_0
    return-void
.end method
