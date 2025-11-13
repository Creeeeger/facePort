.class public Lgov/nist/javax/sip/header/RecordRoute;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "RecordRoute.java"

# interfaces
.implements Ljavax/sip/header/HeaderAddress;


# static fields
.field private static final serialVersionUID:J = 0x2123f698f16297e5L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Record-Route"

    .line 66
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RecordRoute;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "<"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, ">"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ";"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method
