.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PVisitedNetworkID.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;


# instance fields
.field private isQuoted:Z

.field private networkID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Visited-Network-ID"

    .line 63
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 156
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    .line 157
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 159
    :cond_0
    iget-boolean p0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    iput-boolean p0, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    .line 148
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getVisitedNetworkID()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    return-object p0
.end method

.method public setVisitedNetworkID(Lgov/nist/core/Token;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, " the networkID parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisitedNetworkID(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    return-void

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, " the networkID parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
