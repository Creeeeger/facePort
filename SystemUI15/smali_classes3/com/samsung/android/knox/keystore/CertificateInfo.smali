.class public Lcom/samsung/android/knox/keystore/CertificateInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlias:Ljava/lang/String;

.field public mCertificate:Ljava/security/cert/Certificate;

.field public mEnabled:Z

.field public mHasPrivateKey:Z

.field public mKey:Ljava/security/Key;

.field public mKeystore:I

.field public mSystemPreloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public final compareKeys(Ljava/security/Key;Ljava/security/Key;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    iget-object v1, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->compareKeys(Ljava/security/Key;Ljava/security/Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    return p0
.end method

.method public getHasPrivateKey()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return p0
.end method

.method public getKeystore()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    return p0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSystemPreloaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    return-void
.end method

.method public setHasPrivateKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public setKeystore(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    return-void
.end method

.method public setPrivateKey(Ljava/security/Key;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    return-void
.end method

.method public setSystemPreloaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
