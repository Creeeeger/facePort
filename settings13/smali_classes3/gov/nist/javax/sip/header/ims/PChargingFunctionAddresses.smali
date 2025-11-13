.class public Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingFunctionAddresses.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "P-Charging-Function-Addresses"

    .line 83
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object p0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
