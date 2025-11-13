.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.source "DSAPrivateKeyParameters.java"


# instance fields
.field private blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public blacklist getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method
