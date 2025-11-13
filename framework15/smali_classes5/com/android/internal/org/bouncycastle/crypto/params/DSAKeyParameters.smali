.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor blacklist <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
