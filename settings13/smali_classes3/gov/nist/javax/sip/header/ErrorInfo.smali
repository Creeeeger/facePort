.class public final Lgov/nist/javax/sip/header/ErrorInfo;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "ErrorInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected errorInfo:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Error-Info"

    .line 61
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 134
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ErrorInfo;

    .line 135
    iget-object p0, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    .line 79
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setErrorInfo(Ljavax/sip/address/URI;)V
    .locals 0

    .line 94
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/header/ErrorInfo;->errorInfo:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method
