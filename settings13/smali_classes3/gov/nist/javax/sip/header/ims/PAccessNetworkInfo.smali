.class public Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PAccessNetworkInfo.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;


# instance fields
.field private accessType:Ljava/lang/String;

.field private extendAccessInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Access-Network-Info"

    .line 60
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    return-object p0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    const-string v2, "; "

    if-nez v1, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v3}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 276
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/SIPObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAccessType()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionAccessInfo()Ljava/lang/Object;
    .locals 0

    .line 245
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    return-object p0
.end method

.method public setAccessType(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    return-void

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
