.class Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->checkTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;->getSize()I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 14

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    const/16 v2, 0xfa

    if-le v1, v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    :goto_1
    const/4 v3, 0x1

    shl-int v4, v3, v2

    invoke-direct {p0, v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v0

    :cond_2
    add-int v5, v1, v2

    sub-int/2addr v5, v3

    div-int/2addr v5, v2

    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    :goto_2
    if-ge v7, v2, :cond_3

    add-int/lit8 v9, v7, -0x1

    aget-object v9, v6, v9

    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    aget-object v7, v6, v8

    aget-object v9, v6, v3

    invoke-virtual {v7, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    new-array v7, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    aget-object v9, v6, v8

    aput-object v9, v7, v8

    add-int/lit8 v9, v2, -0x1

    :goto_3
    if-ltz v9, :cond_5

    aget-object v10, v6, v9

    shl-int v11, v3, v9

    move v12, v11

    :goto_4
    if-ge v12, v4, :cond_4

    sub-int v13, v12, v11

    aget-object v13, v7, v13

    invoke-virtual {v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v7, v12

    shl-int/lit8 v13, v11, 0x1

    add-int/2addr v12, v13

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    array-length v10, v7

    invoke-virtual {v9, v7, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setLookupTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;)V

    aget-object v8, v6, v2

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    return-object v3
.end method
