.class public abstract Lgov/nist/javax/sip/header/SIPHeader;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "SIPHeader.java"

# interfaces
.implements Lgov/nist/javax/sip/header/SIPHeaderNames;
.implements Ljavax/sip/header/Header;


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 54
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, "\r\n"

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 151
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 155
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
