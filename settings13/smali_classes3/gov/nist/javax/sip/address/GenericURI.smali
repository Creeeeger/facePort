.class public Lgov/nist/javax/sip/address/GenericURI;
.super Lgov/nist/javax/sip/address/NetObject;
.source "GenericURI.java"

# interfaces
.implements Ljavax/sip/address/URI;


# static fields
.field private static final serialVersionUID:J = 0x2cee91964ebc9436L


# instance fields
.field protected scheme:Ljava/lang/String;

.field protected uriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    const/4 v0, 0x0

    .line 73
    :try_start_0
    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    const-string v1, ":"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 77
    :catch_0
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "GenericURI, Bad URI format"

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 89
    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 121
    :cond_0
    instance-of v0, p1, Ljavax/sip/address/URI;

    if-eqz v0, :cond_1

    .line 122
    check-cast p1, Ljavax/sip/address/URI;

    .line 126
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 132
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
