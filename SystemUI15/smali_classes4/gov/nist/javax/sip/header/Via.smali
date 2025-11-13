.class public Lgov/nist/javax/sip/header/Via;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    new-instance v0, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6

    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Protocol;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/HostPort;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    :cond_1
    const-string v1, "rport"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eq v2, v4, :cond_4

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v2, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, p0, v1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public final encodeBody()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Via;->encodeBody(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encodeBody(Ljava/lang/StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    invoke-virtual {v1, p1}, Lgov/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean p0, p0, Lgov/nist/javax/sip/header/Via;->rPortFlag:Z

    if-eqz p0, :cond_2

    const-string p0, ";rport"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljavax/sip/header/ViaHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast p1, Ljavax/sip/header/ViaHeader;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/Via;->getProtocol()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/Via;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    :goto_0
    iget-object v4, p1, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v1, :cond_3

    :goto_2
    move-object v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v4, p1, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    const/4 v3, -0x1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    :goto_5
    iget-object v4, p1, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Lgov/nist/core/HostPort;->getPort()I

    move-result v3

    :goto_6
    if-ne v1, v3, :cond_9

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    return v0

    :cond_a
    return v2
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setSentBy(Lgov/nist/core/HostPort;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentBy:Lgov/nist/core/HostPort;

    return-void
.end method

.method public final setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/header/Via;->sentProtocol:Lgov/nist/javax/sip/header/Protocol;

    return-void
.end method
