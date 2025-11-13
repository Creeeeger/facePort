.class public final Lgov/nist/javax/sip/header/ReferTo;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "ReferTo.java"

# interfaces
.implements Ljavax/sip/header/HeaderAddress;


# static fields
.field private static final serialVersionUID:J = -0x17214f358828de23L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Refer-To"

    .line 58
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, ""

    .line 69
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
