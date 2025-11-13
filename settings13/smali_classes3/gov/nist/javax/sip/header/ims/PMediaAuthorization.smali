.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Media-Authorization"

    .line 80
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    .line 139
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 140
    iput-object p0, v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;

    .line 130
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaAuthorizationToken(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-void

    .line 104
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, " the Media-Authorization-Token parameter is null or empty"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
