.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
.super Ljava/lang/Object;
.source "ScalarSplitParameters.java"


# instance fields
.field protected final blacklist bits:I

.field protected final blacklist g1:Ljava/math/BigInteger;

.field protected final blacklist g2:Ljava/math/BigInteger;

.field protected final blacklist v1A:Ljava/math/BigInteger;

.field protected final blacklist v1B:Ljava/math/BigInteger;

.field protected final blacklist v2A:Ljava/math/BigInteger;

.field protected final blacklist v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "v1"

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string/jumbo v0, "v2"

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    aget-object v0, p2, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    iput p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    return-void
.end method

.method private static blacklist checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getBits()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    return v0
.end method

.method public blacklist getG1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getG2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV1A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV1B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV2A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV2B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    return-object v0
.end method
