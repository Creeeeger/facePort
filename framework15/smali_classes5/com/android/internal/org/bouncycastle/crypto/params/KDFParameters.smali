.class public Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;
.source "KDFParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/DerivationParameters;


# instance fields
.field blacklist iv:[B

.field blacklist shared:[B


# direct methods
.method public constructor blacklist <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-void
.end method


# virtual methods
.method public blacklist getIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    return-object v0
.end method

.method public blacklist getSharedSecret()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    return-object v0
.end method
