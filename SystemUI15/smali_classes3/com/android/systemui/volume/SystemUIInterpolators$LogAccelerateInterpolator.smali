.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final mBase:I

.field public final mDrift:I

.field public final mLogScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    iput p2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    int-to-double v0, p1

    const/high16 p1, -0x40800000    # -1.0f

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    iget v1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    iget v2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    int-to-double v3, v1

    neg-float v1, p1

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v1, v3

    add-float/2addr v1, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iget p0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    mul-float/2addr v2, p0

    sub-float/2addr v0, v2

    return v0
.end method
