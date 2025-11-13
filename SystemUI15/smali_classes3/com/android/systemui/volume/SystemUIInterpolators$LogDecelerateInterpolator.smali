.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final mBase:F

.field public final mDrift:F

.field public final mOutputScale:F

.field public final mTimeScale:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x3fb33333    # 1.4f

    const/4 v1, 0x0

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>(FFF)V

    return-void
.end method

.method private constructor <init>(FFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mBase:F

    iput p3, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mDrift:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    iput p2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mTimeScale:F

    float-to-double v1, p1

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float p1, v0, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, p1

    div-float/2addr v0, p3

    iput v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mOutputScale:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    iget v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mBase:F

    float-to-double v0, v0

    neg-float v2, p1

    iget v3, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mTimeScale:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mDrift:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr v0, p0

    return v0
.end method
