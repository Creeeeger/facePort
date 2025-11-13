.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final blacklist F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private blacklist infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

.field private blacklist k1:I

.field private blacklist k2:I

.field private blacklist k3:I

.field private blacklist m:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method protected constructor blacklist <init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    return-void
.end method

.method public constructor blacklist <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor blacklist <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 10

    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .locals 9

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array v1, v4, [I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v4, v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v5, v1, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    aput v3, v1, v4

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    aput v3, v1, v2

    :goto_0
    move-object v6, v1

    mul-int v1, p3, v0

    mul-int/2addr v1, v2

    new-array v7, v1, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V

    return-object v8
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public blacklist getFieldSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public blacklist getK1()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public blacklist getK2()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public blacklist getK3()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public blacklist getM()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public blacklist isTrinomial()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
