.class public final Lgov/nist/core/HostPort;
.super Lgov/nist/core/GenericObject;
.source "HostPort.java"


# static fields
.field private static final serialVersionUID:J = -0x629463c90d3e66ebL


# instance fields
.field protected host:Lgov/nist/core/Host;

.field protected port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 157
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/HostPort;

    .line 158
    iget-object p0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/Host;

    iput-object p0, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 76
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 77
    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    const-class v1, Lgov/nist/core/HostPort;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 91
    :cond_1
    check-cast p1, Lgov/nist/core/HostPort;

    .line 92
    iget v1, p0, Lgov/nist/core/HostPort;->port:I

    iget v2, p1, Lgov/nist/core/HostPort;->port:I

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    iget-object p1, p1, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {p0, p1}, Lgov/nist/core/Host;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getHost()Lgov/nist/core/Host;
    .locals 0

    .line 99
    iget-object p0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    .line 106
    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 169
    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0}, Lgov/nist/core/Host;->hashCode()I

    move-result v0

    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 136
    iput p1, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 164
    invoke-virtual {p0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
