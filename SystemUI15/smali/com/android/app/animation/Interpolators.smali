.class public final Lcom/android/app/animation/Interpolators;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final BACK_GESTURE:Landroid/view/animation/Interpolator;

.field public static final CONTROL_STATE:Landroid/view/animation/Interpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_3:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_COMPLEMENT:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

.field public static final LEGACY:Landroid/view/animation/Interpolator;

.field public static final LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final STANDARD:Landroid/view/animation/Interpolator;

.field public static final STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

.field public static final ZOOM_OUT:Lcom/android/app/animation/Interpolators$2;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v8

    const v6, 0x3e2aaa7e

    const v7, 0x3ecccccd    # 0.4f

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x0

    const v4, 0x3e088872

    const v5, 0x3d75c28f    # 0.06f

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v2, 0x3e55553f    # 0.208333f

    const v3, 0x3f51eb85    # 0.82f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v1

    const v14, 0x3e2ab368    # 0.1667f

    const v15, 0x3f28f5c3    # 0.66f

    const v10, 0x3df93dd9    # 0.1217f

    const v11, 0x3d3d3c36    # 0.0462f

    const v12, 0x3e19999a    # 0.15f

    const v13, 0x3eefec57    # 0.4686f

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const v10, 0x3e3bcd36    # 0.1834f

    const v11, 0x3f6346dc    # 0.8878f

    const v12, 0x3e2ab368    # 0.1667f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_COMPLEMENT:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v1

    const v11, 0x3e088872

    const v12, 0x3da3d70a    # 0.08f

    const v9, 0x3d4ccccd    # 0.05f

    const/4 v10, 0x0

    const v13, 0x3e2aaa7e

    const v14, 0x3ecccccd    # 0.4f

    move-object v8, v1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    const v9, 0x3e666666    # 0.225f

    const v10, 0x3f70a3d7    # 0.94f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v1, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v8, 0x3fd9999a    # 1.7f

    invoke-direct {v1, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v9, v0, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v10, v0, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->LEGACY:Landroid/view/animation/Interpolator;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v10, v0, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v0, v0, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v12, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v13, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v11, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    sput-object v12, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v11, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v0, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v3, v0, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v9, v0, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v11, v0, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v1, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v1, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->DECELERATE_3:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3fb33333    # 1.4f

    invoke-direct {v1, v10, v0, v9, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v10, v0, v9, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v0, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/android/app/animation/Interpolators$1;

    invoke-direct {v1}, Lcom/android/app/animation/Interpolators$1;-><init>()V

    new-instance v1, Lcom/android/app/animation/Interpolators$2;

    invoke-direct {v1}, Lcom/android/app/animation/Interpolators$2;-><init>()V

    sput-object v1, Lcom/android/app/animation/Interpolators;->ZOOM_OUT:Lcom/android/app/animation/Interpolators$2;

    new-instance v1, Lcom/android/app/animation/Interpolators$3;

    invoke-direct {v1}, Lcom/android/app/animation/Interpolators$3;-><init>()V

    new-instance v1, Lcom/android/app/animation/Interpolators$4;

    invoke-direct {v1}, Lcom/android/app/animation/Interpolators$4;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v6, v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/Interpolators;->BACK_GESTURE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampToProgress(Landroid/view/animation/Interpolator;FFF)F
    .locals 3

    cmpg-float v0, p3, p2

    if-ltz v0, :cond_4

    cmpl-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_1

    cmpl-float p0, p1, v2

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    return v2

    :cond_2
    cmpl-float v0, p1, p3

    if-lez v0, :cond_3

    return v1

    :cond_3
    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOvershootInterpolation(FF)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const v1, 0x402aaaaa

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v1, p1

    neg-float p1, v1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, p0

    double-to-float p0, v1

    const p1, 0x3fcccccd    # 1.6f

    mul-float/2addr p0, p1

    cmpl-float p1, v0, p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid values for overshoot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
