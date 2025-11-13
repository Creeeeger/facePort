.class public Lgov/nist/javax/sip/header/Protocol;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Protocol.java"


# static fields
.field private static final serialVersionUID:J = 0x1ec381b4ff51f3c0L


# instance fields
.field protected protocolName:Ljava/lang/String;

.field protected protocolVersion:Ljava/lang/String;

.field protected transport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    const-string v0, "SIP"

    .line 149
    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    const-string v0, "2.0"

    .line 150
    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    const-string v0, "UDP"

    .line 151
    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .line 103
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

.method public getTransport()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocolName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    return-void
.end method
