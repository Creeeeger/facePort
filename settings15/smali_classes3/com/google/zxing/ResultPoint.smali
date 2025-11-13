.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/ResultPoint;->x:F

    iput p2, p0, Lcom/google/zxing/ResultPoint;->y:F

    return-void
.end method

.method public static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 2

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    iget v1, p1, Lcom/google/zxing/ResultPoint;->x:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v0, p0, v1, p1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/zxing/ResultPoint;

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    iget v2, p0, Lcom/google/zxing/ResultPoint;->x:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
