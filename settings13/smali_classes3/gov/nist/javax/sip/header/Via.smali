.class public Lgov/nist/javax/sip/header/Via;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Via.java"

# interfaces
.implements Ljavax/sip/header/ViaHeader;


# static fields
.field private static final serialVersionUID:J = 0x494c77f8c8b074d2L


# instance fields
.field protected comment:Ljava/lang/String;

.field private rPortFlag:Z

.field protected sentBy:Lgov/nist/core/HostPort;

.field protected sentProtocol:Lgov/nist/javax/sip/header/Protocol;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Via"

    .line 104
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    .line 105
    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 534
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 535
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Protocol;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    .line 537
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    .line 539
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 540
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result p0

    const-string v1, "rport"

    invoke-virtual {v0, v1, p0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " "

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v1, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 263
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 267
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :cond_1
    iget-boolean p0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    if-eqz p0, :cond_2

    const-string p0, ";rport"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Ljavax/sip/header/ViaHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 113
    check-cast p1, Ljavax/sip/header/ViaHeader;

    .line 114
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v1

    invoke-interface {p1}, Ljavax/sip/header/ViaHeader;->getPort()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object p0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .locals 0

    .line 339
    iget-object p0, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getPort()I

    move-result p0

    return p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    .line 396
    iget-object p0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Protocol;->getProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRPort()I
    .locals 1

    const-string v0, "rport"

    .line 351
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 0

    .line 365
    iget-object p0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Protocol;->getTransport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    return-void
.end method

.method public setSentBy(Lgov/nist/core/HostPort;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    return-void
.end method

.method public setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    return-void
.end method
