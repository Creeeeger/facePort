.class public final Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

.field public final mAlias:Ljava/lang/String;

.field public mDeleted:Z

.field public final mProfileId:I

.field public final mSubjectPrimary:Ljava/lang/String;

.field public final mSubjectSecondary:Ljava/lang/String;

.field public final mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iput-object p4, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    new-instance p2, Landroid/net/http/SslCertificate;

    invoke-direct {p2, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p6

    invoke-virtual {p6}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p6, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    const-string v0, ""

    if-nez p6, :cond_2

    iput-object p5, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 p5, 0x1

    if-eqz p3, :cond_4

    if-ne p3, p5, :cond_3

    move p1, p2

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    invoke-interface {p1, p4}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, p5

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Remote exception while checking if alias "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is deleted."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TrustedCredentialsFragment"

    invoke-static {p4, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean p2, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isSystemCert()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
