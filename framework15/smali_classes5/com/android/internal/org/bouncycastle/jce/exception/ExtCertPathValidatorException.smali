.class public Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "ExtCertPathValidatorException.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
