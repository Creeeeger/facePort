.class public final Landroid/util/apk/SourceStampVerificationResult;
.super Ljava/lang/Object;
.source "SourceStampVerificationResult.java"


# instance fields
.field private final blacklist mCertificate:Ljava/security/cert/Certificate;

.field private final blacklist mCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPresent:Z

.field private final blacklist mVerified:Z


# direct methods
.method private constructor blacklist <init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/util/apk/SourceStampVerificationResult;->mPresent:Z

    iput-boolean p2, p0, Landroid/util/apk/SourceStampVerificationResult;->mVerified:Z

    iput-object p3, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificate:Ljava/security/cert/Certificate;

    iput-object p4, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificateLineage:Ljava/util/List;

    return-void
.end method

.method public static blacklist notPresent()Landroid/util/apk/SourceStampVerificationResult;
    .locals 4

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method

.method public static blacklist notVerified()Landroid/util/apk/SourceStampVerificationResult;
    .locals 5

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method

.method public static blacklist verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    new-instance v0, Landroid/util/apk/SourceStampVerificationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/util/apk/SourceStampVerificationResult;-><init>(ZZLjava/security/cert/Certificate;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public blacklist getCertificateLineage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mCertificateLineage:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isPresent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mPresent:Z

    return v0
.end method

.method public blacklist isVerified()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/apk/SourceStampVerificationResult;->mVerified:Z

    return v0
.end method
