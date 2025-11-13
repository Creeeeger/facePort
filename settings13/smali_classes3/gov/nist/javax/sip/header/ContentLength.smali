.class public Lgov/nist/javax/sip/header/ContentLength;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLength.java"

# interfaces
.implements Ljavax/sip/header/ContentLengthHeader;


# static fields
.field private static final serialVersionUID:J = 0x1079bf82211cf963L


# instance fields
.field protected contentLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Content-Length"

    .line 92
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "Content-Length"

    .line 99
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ContentLength;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 133
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const-string p0, "0"

    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 151
    instance-of v0, p1, Ljavax/sip/header/ContentLengthHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Ljavax/sip/header/ContentLengthHeader;

    .line 153
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result p0

    invoke-interface {p1}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getContentLength()I
    .locals 0

    .line 108
    iget-object p0, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setContentLength(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "JAIN-SIP Exception, ContentLength, setContentLength(), the contentLength parameter is <0"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
