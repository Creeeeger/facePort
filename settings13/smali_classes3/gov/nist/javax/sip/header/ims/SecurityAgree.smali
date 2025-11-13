.class public abstract Lgov/nist/javax/sip/header/ims/SecurityAgree;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SecurityAgree.java"


# instance fields
.field private secMechanism:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    .line 87
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 360
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;

    .line 361
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 362
    iput-object p0, v0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 348
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    check-cast p1, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;

    .line 351
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getSecurityMechanism()Ljava/lang/String;
    .locals 0

    .line 270
    iget-object p0, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 96
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "d-ver"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    const-string p1, "\""

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 111
    :cond_1
    :goto_0
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSecurityMechanism(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    return-void

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
