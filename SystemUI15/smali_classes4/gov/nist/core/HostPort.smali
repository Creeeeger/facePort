.class public final Lgov/nist/core/HostPort;
.super Lgov/nist/core/GenericObject;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final serialVersionUID:J = -0x629463c90d3e66ebL


# instance fields
.field protected host:Lgov/nist/core/Host;

.field protected port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/core/HostPort;->port:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/HostPort;

    iget-object p0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/Host;

    iput-object p0, v0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    :cond_0
    return-object v0
.end method

.method public final encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v0, p0, Lgov/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lgov/nist/core/HostPort;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lgov/nist/core/HostPort;

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

.method public final getHost()Lgov/nist/core/Host;
    .locals 0

    iget-object p0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    return-object p0
.end method

.method public final getPort()I
    .locals 0

    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lgov/nist/core/HostPort;->host:Lgov/nist/core/Host;

    iget-object v0, v0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lgov/nist/core/HostPort;->port:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
