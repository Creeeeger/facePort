.class public abstract Lgov/nist/javax/sip/header/AddressParametersHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"


# instance fields
.field protected address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AddressParametersHeader;

    .line 86
    iget-object p0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object p0, v0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 99
    :cond_0
    instance-of v1, p1, Ljavax/sip/header/HeaderAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Ljavax/sip/header/Parameters;

    if-eqz v1, :cond_2

    .line 100
    check-cast p1, Ljavax/sip/header/HeaderAddress;

    .line 101
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v1, v3}, Ljavax/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Ljavax/sip/header/Parameters;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .locals 0

    .line 53
    iget-object p0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object p0
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .locals 0

    .line 60
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object p1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-void
.end method
