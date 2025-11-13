.class public Lgov/nist/javax/sip/address/TelURLImpl;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelURLImpl.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const-string v0, "tel"

    .line 52
    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 176
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelURLImpl;

    .line 177
    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object p0, v0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameterNames()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
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
