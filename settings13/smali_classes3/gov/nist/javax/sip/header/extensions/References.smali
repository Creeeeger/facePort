.class public Lgov/nist/javax/sip/header/extensions/References;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "References.java"


# static fields
.field private static final serialVersionUID:J = 0x7679616b0985b236L


# instance fields
.field private callId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "References"

    .line 18
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    return-object p0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "References"

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 0

    .line 55
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lgov/nist/javax/sip/header/extensions/References;->callId:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
