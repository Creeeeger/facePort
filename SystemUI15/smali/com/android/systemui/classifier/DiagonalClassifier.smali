.class public final Lcom/android/systemui/classifier/DiagonalClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHorizontalAngleRange:F

.field public final mVerticalAngleRange:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-string/jumbo p1, "systemui"

    const-string v0, "brightline_falsing_diagonal_horizontal_angle_range"

    const v1, 0x3db2b8c2

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mHorizontalAngleRange:F

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mVerticalAngleRange:F

    return-void
.end method

.method public static angleBetween(FFF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const v2, 0x40c90fdb

    if-gez v1, :cond_0

    rem-float/2addr p1, v2

    add-float/2addr p1, v2

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    rem-float/2addr p1, v2

    :cond_1
    :goto_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    rem-float/2addr p2, v2

    add-float/2addr p2, v2

    goto :goto_1

    :cond_2
    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    rem-float/2addr p2, v2

    :cond_3
    :goto_1
    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_6

    cmpl-float p1, p0, p1

    if-gez p1, :cond_5

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    :cond_6
    cmpl-float p1, p0, p1

    if-ltz p1, :cond_7

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x5

    if-eq p1, v2, :cond_5

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    const p1, 0x3f490fdb

    iget v2, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mHorizontalAngleRange:F

    sub-float v3, p1, v2

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget v2, p0, Lcom/android/systemui/classifier/DiagonalClassifier;->mVerticalAngleRange:F

    sub-float v3, p1, v2

    add-float/2addr v2, p1

    :cond_2
    invoke-static {v1, v3, v2}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    move-result p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-nez p1, :cond_4

    const p1, 0x3fc90fdb

    add-float v6, v3, p1

    add-float v7, v2, p1

    invoke-static {v1, v6, v7}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v6

    if-nez v6, :cond_4

    sub-float v6, v3, p1

    sub-float p1, v2, p1

    invoke-static {v1, v6, p1}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x40490fdb    # (float)Math.PI

    add-float/2addr v3, p1

    add-float/2addr v2, p1

    invoke-static {v1, v3, v2}, Lcom/android/systemui/classifier/DiagonalClassifier;->angleBetween(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->recalculateData()V

    iget p1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mAngle:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "{angle=%f, vertical=%s}"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    :goto_2
    invoke-static {v3, v4}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method
