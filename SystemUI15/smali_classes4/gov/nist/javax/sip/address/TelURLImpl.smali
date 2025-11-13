.class public Lgov/nist/javax/sip/address/TelURLImpl;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljavax/sip/address/URI;
.implements Ljavax/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const-string v0, "tel"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelURLImpl;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_0
    return-object v0
.end method

.method public final encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lgov/nist/core/GenericObject;

    if-eqz p1, :cond_1

    check-cast p0, Lgov/nist/core/GenericObject;

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getParameterNames()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public final isGlobal()Z
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-boolean p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    return p0
.end method

.method public final removeParameter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public final setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
