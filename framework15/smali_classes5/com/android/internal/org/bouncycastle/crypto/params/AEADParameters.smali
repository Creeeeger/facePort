.class public Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist associatedText:[B

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    return-void
.end method


# virtual methods
.method public blacklist getAssociatedText()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method public blacklist getMacSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    return v0
.end method

.method public blacklist getNonce()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
