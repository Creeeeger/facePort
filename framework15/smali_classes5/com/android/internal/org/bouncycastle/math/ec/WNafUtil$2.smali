.class Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$minWidth:I

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(IZLcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v3, -0x2

    const/4 v7, 0x1

    shl-int v6, v7, v6

    iget-boolean v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {v0, v2, v3, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    return-object v2

    :cond_1
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v3, -0x2

    shl-int v4, v7, v4

    const/4 v6, 0x0

    if-nez v9, :cond_3

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$sfgetEMPTY_POINTS()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_1

    :cond_3
    array-length v6, v9

    :goto_1
    if-ge v6, v4, :cond_9

    invoke-static {v9, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    const/4 v12, 0x0

    if-ne v4, v7, :cond_4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v12

    goto/16 :goto_4

    :cond_4
    move v13, v6

    if-nez v13, :cond_5

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    aput-object v14, v9, v12

    const/4 v13, 0x1

    :cond_5
    const/4 v14, 0x0

    if-ne v4, v5, :cond_6

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v7

    goto/16 :goto_3

    :cond_6
    move-object v5, v11

    add-int/lit8 v7, v13, -0x1

    aget-object v7, v9, v7

    if-nez v5, :cond_7

    aget-object v15, v9, v12

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v11, v5

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v15

    const/16 v12, 0x40

    if-lt v15, v12, :cond_7

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v12, v15, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    if-nez v6, :cond_7

    const/4 v15, 0x0

    aput-object v7, v9, v15

    :cond_7
    :goto_2
    if-ge v13, v4, :cond_8

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    move-object v7, v12

    aput-object v12, v9, v13

    move v13, v1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    sub-int v5, v4, v6

    invoke-virtual {v1, v9, v6, v5, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    :cond_9
    :goto_4
    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v1, :cond_c

    if-nez v10, :cond_a

    const/4 v1, 0x0

    new-array v5, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-object v10, v5

    goto :goto_5

    :cond_a
    array-length v1, v10

    if-ge v1, v4, :cond_b

    invoke-static {v10, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v10, v5

    :cond_b
    :goto_5
    if-ge v1, v4, :cond_c

    aget-object v5, v9, v1

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v8, v11}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
