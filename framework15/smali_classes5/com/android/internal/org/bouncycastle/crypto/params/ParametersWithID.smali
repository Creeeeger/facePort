.class public Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;
.source "ParametersWithID.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist id:[B

.field private blacklist parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-void
.end method


# virtual methods
.method public blacklist getID()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->id:[B

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithID;->parameters:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
