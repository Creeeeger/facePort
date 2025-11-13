.class public Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final blacklist fractionDigits:I

.field public final blacklist roundedBytes:J

.field public final blacklist units:Landroid/icu/util/MeasureUnit;

.field public final blacklist value:F


# direct methods
.method private constructor blacklist <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    return-void
.end method

.method public static blacklist roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .locals 17

    move-wide/from16 v0, p0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    neg-long v6, v0

    long-to-float v6, v6

    goto :goto_2

    :cond_2
    long-to-float v6, v0

    :goto_2
    sget-object v7, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v8, 0x1

    const/high16 v10, 0x44610000    # 900.0f

    cmpl-float v11, v6, v10

    if-lez v11, :cond_3

    sget-object v7, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v8, v2

    int-to-float v11, v2

    div-float/2addr v6, v11

    :cond_3
    cmpl-float v11, v6, v10

    if-lez v11, :cond_4

    sget-object v7, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v11, v2

    mul-long/2addr v8, v11

    int-to-float v11, v2

    div-float/2addr v6, v11

    :cond_4
    cmpl-float v11, v6, v10

    if-lez v11, :cond_5

    sget-object v7, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v11, v2

    mul-long/2addr v8, v11

    int-to-float v11, v2

    div-float/2addr v6, v11

    :cond_5
    cmpl-float v11, v6, v10

    if-lez v11, :cond_6

    sget-object v7, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v11, v2

    mul-long/2addr v8, v11

    int-to-float v11, v2

    div-float/2addr v6, v11

    :cond_6
    cmpl-float v10, v6, v10

    if-lez v10, :cond_7

    sget-object v7, Landroid/icu/util/MeasureUnit;->PETABYTE:Landroid/icu/util/MeasureUnit;

    int-to-long v10, v2

    mul-long/2addr v8, v10

    int-to-float v10, v2

    div-float/2addr v6, v10

    move-object v13, v7

    move-wide v14, v8

    goto :goto_3

    :cond_7
    move-object v13, v7

    move-wide v14, v8

    :goto_3
    const-wide/16 v7, 0x1

    cmp-long v7, v14, v7

    if-eqz v7, :cond_d

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_8

    goto :goto_4

    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_9

    const/16 v7, 0x64

    const/4 v8, 0x2

    move v10, v7

    move/from16 v16, v8

    goto :goto_5

    :cond_9
    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_b

    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_a

    const/16 v7, 0xa

    const/4 v8, 0x1

    move v10, v7

    move/from16 v16, v8

    goto :goto_5

    :cond_a
    const/16 v7, 0x64

    const/4 v8, 0x2

    move v10, v7

    move/from16 v16, v8

    goto :goto_5

    :cond_b
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v10, v7

    move/from16 v16, v8

    goto :goto_5

    :cond_c
    const/16 v7, 0x64

    const/4 v8, 0x2

    move v10, v7

    move/from16 v16, v8

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    move v10, v7

    move/from16 v16, v8

    :goto_5
    if-eqz v5, :cond_e

    neg-float v6, v6

    :cond_e
    and-int/lit8 v7, p2, 0x2

    if-nez v7, :cond_f

    move-wide v11, v3

    goto :goto_6

    :cond_f
    int-to-float v3, v10

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v14

    int-to-long v7, v10

    div-long/2addr v3, v7

    move-wide v11, v3

    :goto_6
    nop

    new-instance v3, Landroid/text/format/Formatter$RoundedBytesResult;

    move-object v7, v3

    move v8, v6

    move-object v9, v13

    move v4, v10

    move/from16 v10, v16

    invoke-direct/range {v7 .. v12}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v3
.end method
