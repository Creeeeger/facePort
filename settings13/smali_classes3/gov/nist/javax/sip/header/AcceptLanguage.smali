.class public final Lgov/nist/javax/sip/header/AcceptLanguage;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptLanguage.java"


# static fields
.field private static final serialVersionUID:J = -0x3e16c6fcfe290177L


# instance fields
.field protected languageRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Accept-Language"

    .line 68
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLanguageRange(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    return-void
.end method

.method public setQValue(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const-string v1, "q"

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "qvalue out of range!"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
