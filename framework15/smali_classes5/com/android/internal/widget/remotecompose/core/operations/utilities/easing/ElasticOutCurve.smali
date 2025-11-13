.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "ElasticOutCurve.java"


# static fields
.field private static final blacklist C4:F = 2.0943952f

.field private static final blacklist F_PI:F = 3.1415927f

.field private static final blacklist LOG_8:F

.field private static final blacklist TWENTY_PI:F = 62.831856f


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;->LOG_8:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f400000    # 0.75f

    sub-float/2addr v2, v3

    const v3, 0x40060a92

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getDiff(F)F
    .locals 9

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;->LOG_8:F

    float-to-double v2, v2

    const v4, 0x427b53d2

    mul-float v5, p1, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v2, v7

    mul-float/2addr v4, p1

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x401921fb60000000L    # 6.2831854820251465

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    :goto_0
    return v0
.end method
