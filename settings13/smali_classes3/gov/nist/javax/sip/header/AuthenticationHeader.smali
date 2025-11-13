.class public abstract Lgov/nist/javax/sip/header/AuthenticationHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AuthenticationHeader.java"


# instance fields
.field protected scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>()V

    .line 94
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v0, ","

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v0, ","

    invoke-virtual {p1, v0}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    const-string p1, "Digest"

    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

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

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-nez v0, :cond_6

    .line 108
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "qop"

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "realm"

    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cnonce"

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nonce"

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "username"

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "domain"

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "opaque"

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nextnonce"

    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uri"

    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "response"

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ik"

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ck"

    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "integrity-protected"

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    :cond_0
    instance-of v2, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v2, :cond_1

    instance-of v2, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-eqz v2, :cond_2

    .line 123
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    :goto_0
    if-eqz p2, :cond_5

    const-string p1, "\""

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 134
    :cond_3
    invoke-super {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Lgov/nist/core/NameValue;)V

    goto :goto_1

    .line 131
    :cond_4
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

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_6
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lgov/nist/javax/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    return-void
.end method
