.class public final Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final fractionDigits:I

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method public constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    iput-object p2, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    iput p3, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    return-void
.end method

.method public static roundBytes(IJ)Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    neg-long p1, p1

    :cond_1
    long-to-float p1, p1

    sget-object p2, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const/high16 v3, 0x44610000    # 900.0f

    cmpl-float v4, p1, v3

    const-wide/16 v5, 0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const-wide/16 v8, 0x3e8

    if-lez v4, :cond_2

    sget-object p2, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    div-float/2addr p1, v7

    move-wide v10, v8

    goto :goto_1

    :cond_2
    move-wide v10, v5

    :goto_1
    cmpl-float v4, p1, v3

    if-lez v4, :cond_3

    sget-object p2, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v10, v8

    div-float/2addr p1, v7

    :cond_3
    cmpl-float v4, p1, v3

    if-lez v4, :cond_4

    sget-object p2, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v10, v8

    div-float/2addr p1, v7

    :cond_4
    cmpl-float v4, p1, v3

    if-lez v4, :cond_5

    sget-object p2, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v10, v8

    div-float/2addr p1, v7

    :cond_5
    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    sget-object p2, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    mul-long/2addr v10, v8

    div-float/2addr p1, v7

    :cond_6
    move-object v9, p2

    cmp-long p2, v10, v5

    if-eqz p2, :cond_b

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    goto :goto_2

    :cond_7
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    const/4 v3, 0x2

    if-gez p2, :cond_9

    :cond_8
    move v10, v3

    goto :goto_3

    :cond_9
    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_a

    and-int/2addr p0, v2

    if-eqz p0, :cond_8

    move v10, v2

    goto :goto_3

    :cond_a
    and-int/2addr p0, v2

    if-eqz p0, :cond_8

    :cond_b
    :goto_2
    move v10, v1

    :goto_3
    if-eqz v0, :cond_c

    neg-float p1, p1

    :cond_c
    move v8, p1

    new-instance p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    const-wide/16 v11, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object p0
.end method
