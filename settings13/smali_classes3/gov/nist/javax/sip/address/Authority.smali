.class public Lgov/nist/javax/sip/address/Authority;
.super Lgov/nist/javax/sip/address/NetObject;
.source "Authority.java"


# static fields
.field private static final serialVersionUID:J = -0x318c6e34baa9fca6L


# instance fields
.field protected hostPort:Lgov/nist/core/HostPort;

.field protected userInfo:Lgov/nist/javax/sip/address/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 223
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/Authority;

    .line 224
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    .line 226
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz p0, :cond_1

    .line 227
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/UserInfo;

    iput-object p0, v0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    :cond_1
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/UserInfo;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, "@"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {p0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {p0, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 83
    :cond_1
    check-cast p1, Lgov/nist/javax/sip/address/Authority;

    .line 84
    iget-object v1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    iget-object v2, p1, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 87
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 0

    .line 135
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object p0

    return-object p0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 0

    .line 100
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lgov/nist/javax/sip/address/UserInfo;->user:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 233
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Null hostPort cannot compute hashcode"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/address/Authority;->hostPort:Lgov/nist/core/HostPort;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 166
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lgov/nist/javax/sip/address/UserInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/UserInfo;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    .line 176
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/address/Authority;->userInfo:Lgov/nist/javax/sip/address/UserInfo;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/UserInfo;->setUser(Ljava/lang/String;)V

    return-void
.end method
