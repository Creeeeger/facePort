.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
.super Ljava/lang/Object;
.source "PKIXCertRevocationCheckerParameters.java"


# instance fields
.field private final blacklist certPath:Ljava/security/cert/CertPath;

.field private final blacklist index:I

.field private final blacklist paramsPKIX:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final blacklist signingCert:Ljava/security/cert/X509Certificate;

.field private final blacklist validDate:Ljava/util/Date;

.field private final blacklist workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public blacklist getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public blacklist getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->index:I

    return v0
.end method

.method public blacklist getParamsPKIX()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->paramsPKIX:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method public blacklist getSigningCert()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->signingCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist getValidDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->validDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getWorkingPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->workingPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method
