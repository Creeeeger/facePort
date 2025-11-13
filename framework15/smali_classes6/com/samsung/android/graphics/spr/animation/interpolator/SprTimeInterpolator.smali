.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;
.super Ljava/lang/Object;
.source "SprTimeInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field static final blacklist DAY_MILLISECONDS:I = 0x5265c00

.field public static final blacklist DAY_TYPE:I = 0x1

.field static final blacklist WEEK_MILLISECONDS:I = 0x240c8400

.field public static final blacklist WEEK_TYPE:I = 0x2


# instance fields
.field private blacklist mDuration:I

.field private blacklist mPeriodType:I

.field private blacklist mQuotient:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    iput p3, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-wide/32 v6, 0x5265c00

    rem-long/2addr v2, v6

    goto :goto_0

    :cond_0
    const-wide/32 v6, 0xf731400

    sub-long v6, v2, v6

    const-wide/32 v8, 0x240c8400

    rem-long v2, v6, v8

    :goto_0
    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-long v6, v4

    rem-long v6, v2, v6

    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    int-to-long v4, v4

    div-long v4, v6, v4

    iget v8, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    int-to-long v8, v8

    mul-long v6, v4, v8

    :cond_1
    long-to-float v4, v6

    iget v5, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    return v4
.end method

.method public blacklist setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    return-void
.end method

.method public blacklist setPeriodType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    return-void
.end method

.method public blacklist setQuotient(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    return-void
.end method
