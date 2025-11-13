.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist confWidth:I

.field protected blacklist preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field volatile blacklist promotionCountdown:I

.field protected blacklist twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method blacklist decrementPromotionCountdown()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    :cond_0
    return v0
.end method

.method public blacklist getConfWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return v0
.end method

.method public blacklist getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method blacklist getPromotionCountdown()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return v0
.end method

.method public blacklist getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return v0
.end method

.method public blacklist isPromoted()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setConfWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return-void
.end method

.method public blacklist setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public blacklist setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method blacklist setPromotionCountdown(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return-void
.end method

.method public blacklist setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method
