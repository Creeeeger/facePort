.class public Lgov/nist/javax/sip/header/ims/PChargingVector;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingVector.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Charging-Vector"

    .line 53
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 5

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "icid-value"

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "icid-generated-at"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "="

    const-string v4, ";"

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getICIDGeneratedAt()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "term-ioi"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getTerminatingIOI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "orig-ioi"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getOriginatingIOI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getICIDGeneratedAt()Ljava/lang/String;
    .locals 1

    const-string v0, "icid-generated-at"

    .line 135
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginatingIOI()Ljava/lang/String;
    .locals 1

    const-string v0, "orig-ioi"

    .line 168
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTerminatingIOI()Ljava/lang/String;
    .locals 1

    const-string v0, "term-ioi"

    .line 199
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
