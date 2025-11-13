.class public abstract Lgov/nist/javax/sip/header/ParametersHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected duplicates:Lgov/nist/core/DuplicateNameValueList;

.field protected parameters:Lgov/nist/core/NameValueList;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 59
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 60
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lgov/nist/core/NameValueList;

    invoke-direct {p1}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 66
    new-instance p1, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {p1}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance p1, Lgov/nist/core/NameValueList;

    invoke-direct {p1, p2}, Lgov/nist/core/NameValueList;-><init>(Z)V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 72
    new-instance p1, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {p1}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 464
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ParametersHeader;

    .line 465
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/core/NameValueList;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    :cond_0
    return-object v0
.end method

.method protected final equalParameters(Ljavax/sip/header/Parameters;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 582
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-interface {p1, v2}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-nez v2, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    xor-int/2addr v5, v6

    if-eqz v5, :cond_4

    return v3

    :cond_4
    if-eqz v4, :cond_1

    .line 588
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 592
    :cond_5
    invoke-interface {p1}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 595
    invoke-interface {p1, v2}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_7

    move v5, v0

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    if-nez v2, :cond_8

    move v6, v0

    goto :goto_3

    :cond_8
    move v6, v3

    :goto_3
    xor-int/2addr v5, v6

    if-eqz v5, :cond_9

    return v3

    :cond_9
    if-eqz v4, :cond_6

    .line 606
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    :cond_a
    return v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 0

    .line 459
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public hasParameters()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public removeParameters()V
    .locals 1

    .line 292
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setMultiParameter(Lgov/nist/core/NameValue;)V
    .locals 0

    .line 494
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method protected setParameter(Ljava/lang/String;F)V
    .locals 1

    .line 245
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    :goto_0
    return-void
.end method

.method protected setParameter(Ljava/lang/String;I)V
    .locals 0

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 206
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    :goto_0
    return-void
.end method
