.class public final Lcom/android/systemui/animation/ShadeInterpolation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-direct {v0}, Lcom/android/systemui/animation/ShadeInterpolation;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentAlpha(F)F
    .locals 3

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0, v2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    sget-object v0, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result p0

    return p0
.end method

.method public static final getNotifContentAlpha(F)F
    .locals 3

    const v0, 0x3ee66666    # 0.45f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0, v2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    sget-object v0, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result p0

    return p0
.end method

.method public static final getNotificationScrimAlpha(F)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v1, v0, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    sget-object v0, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result p0

    return p0
.end method

.method public static interpolateEaseInOut(F)F
    .locals 6

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    float-to-double v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    float-to-double v2, v2

    const v4, 0x40490fd0

    mul-float/2addr v4, p0

    mul-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v0, v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    double-to-float v0, v0

    :goto_0
    return v0
.end method
