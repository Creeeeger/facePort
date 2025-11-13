.class public final Lgov/nist/javax/sip/header/AlertInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AlertInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x39ba1254fc6b29efL


# instance fields
.field protected string:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Alert-Info"

    .line 63
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 120
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AlertInfo;

    .line 121
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 124
    iput-object p0, v0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_0

    const-string v1, "<"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_1
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->string:Ljava/lang/String;

    return-void
.end method

.method public setAlertInfo(Ljavax/sip/address/URI;)V
    .locals 0

    .line 88
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/AlertInfo;->uri:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method
