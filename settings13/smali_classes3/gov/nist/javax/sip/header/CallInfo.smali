.class public final Lgov/nist/javax/sip/header/CallInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "CallInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x718285585586c120L


# instance fields
.field protected info:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Call-Info"

    .line 56
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallInfo;

    .line 119
    iget-object p0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CallInfo;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "<"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, ">"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public setInfo(Ljavax/sip/address/URI;)V
    .locals 0

    .line 114
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/CallInfo;->info:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method
