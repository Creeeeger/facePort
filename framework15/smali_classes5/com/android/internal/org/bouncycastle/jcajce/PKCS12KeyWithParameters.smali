.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;
.super Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
.source "PKCS12KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final blacklist iterationCount:I

.field private final blacklist salt:[B


# direct methods
.method public constructor blacklist <init>([CZ[BI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method

.method public constructor blacklist <init>([C[BI)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getIterationCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public whitelist test-api getSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object v0
.end method
