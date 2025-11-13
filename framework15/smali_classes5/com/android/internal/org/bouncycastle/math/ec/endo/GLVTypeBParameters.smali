.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final blacklist beta:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-void
.end method


# virtual methods
.method public blacklist getBeta()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getBits()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getBits()I

    move-result v0

    return v0
.end method

.method public blacklist getG1()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getG2()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLambda()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object v0
.end method

.method public blacklist getV1A()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1A()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV1B()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1B()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV2A()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2A()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV2B()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2B()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
