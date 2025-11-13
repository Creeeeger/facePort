.class Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;
.super Ljava/security/cert/CertificateException;
.source "OperatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpCertificateException"
.end annotation


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/jcajce/OperatorHelper$OpCertificateException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
