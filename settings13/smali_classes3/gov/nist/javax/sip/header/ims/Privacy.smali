.class public Lgov/nist/javax/sip/header/ims/Privacy;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Privacy.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PrivacyHeader;


# instance fields
.field private privacy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Privacy"

    .line 65
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/Privacy;

    .line 142
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 143
    iput-object p0, v0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 130
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lgov/nist/javax/sip/header/ims/PrivacyHeader;

    .line 133
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/Privacy;->getPrivacy()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/ims/PrivacyHeader;->getPrivacy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 114
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/Privacy;->privacy:Ljava/lang/String;

    return-void

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception,  Privacy, setPrivacy(), privacy value is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
