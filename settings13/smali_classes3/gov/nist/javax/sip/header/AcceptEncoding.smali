.class public final Lgov/nist/javax/sip/header/AcceptEncoding;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptEncoding.java"


# static fields
.field private static final serialVersionUID:J = -0x147eaca80a637035L


# instance fields
.field protected contentCoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Accept-Encoding"

    .line 85
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-object p1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lgov/nist/javax/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    return-void

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, " encoding parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "q"

    .line 134
    invoke-super {p0, v0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    return-void

    .line 133
    :cond_0
    new-instance p0, Ljavax/sip/InvalidArgumentException;

    const-string p1, "qvalue out of range!"

    invoke-direct {p0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
