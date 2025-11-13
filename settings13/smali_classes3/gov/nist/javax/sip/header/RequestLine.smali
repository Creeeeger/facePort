.class public Lgov/nist/javax/sip/header/RequestLine;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "RequestLine.java"


# static fields
.field private static final serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected method:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected uri:Lgov/nist/javax/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    const-string v0, "SIP/2.0"

    .line 64
    iput-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 208
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 209
    iget-object p0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 77
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\r\n"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/header/RequestLine;

    .line 197
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    iget-object v2, p1, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v2, p1, Lgov/nist/javax/sip/header/RequestLine;->uri:Lgov/nist/javax/sip/address/GenericURI;

    .line 199
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    iget-object p1, p1, Lgov/nist/javax/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v1, p0

    :catch_0
    :cond_1
    return v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lgov/nist/javax/sip/header/RequestLine;->method:Ljava/lang/String;

    return-void
.end method
