.class public final Lcom/android/app/animation/InterpolatorsAndroidX;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACCELERATE_DECELERATE:Landroidx/core/animation/AccelerateDecelerateInterpolator;

.field public static final ALPHA_IN:Landroidx/core/animation/PathInterpolator;

.field public static final ALPHA_OUT:Landroidx/core/animation/PathInterpolator;

.field public static final DECELERATE_3:Landroidx/core/animation/DecelerateInterpolator;

.field public static final DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

.field public static final EMPHASIZED:Landroidx/core/animation/PathInterpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final EMPHASIZED_DECELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LINEAR:Landroidx/core/animation/LinearInterpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

.field public static final STANDARD:Landroidx/core/animation/PathInterpolator;

.field public static final STANDARD_ACCELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final STANDARD_DECELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final TOUCH_RESPONSE:Landroidx/core/animation/PathInterpolator;

.field public static final ZOOM_OUT:Lcom/android/app/animation/InterpolatorsAndroidX$2;


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

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v8}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED:Landroidx/core/animation/PathInterpolator;

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

    new-instance v2, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v2, v1}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v1, v2, v0, v3, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED_DECELERATE:Landroidx/core/animation/PathInterpolator;

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

    new-instance v4, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v4, v1}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    new-instance v1, Landroidx/core/animation/OvershootInterpolator;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v4}, Landroidx/core/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/OvershootInterpolator;

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v1, v8}, Landroidx/core/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/OvershootInterpolator;

    const v8, 0x3fd9999a    # 1.7f

    invoke-direct {v1, v8}, Landroidx/core/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v9, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v9, v0, v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v7, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD_DECELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v10, v0, v9, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY:Landroidx/core/animation/PathInterpolator;

    new-instance v11, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v11, v10, v0, v7, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v11, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v11, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v11, v0, v0, v9, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v11, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v12, Landroidx/core/animation/LinearInterpolator;

    invoke-direct {v12}, Landroidx/core/animation/LinearInterpolator;-><init>()V

    sput-object v12, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    sput-object v11, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v11, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v0, v11, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v3, v0, v7, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v9, v0, v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v11, v0, v10, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v9, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v7, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v7, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->ALPHA_IN:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v0, v0, v3, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->ALPHA_OUT:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Landroidx/core/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroidx/core/animation/AccelerateInterpolator;-><init>()V

    new-instance v1, Landroidx/core/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v3}, Landroidx/core/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/AccelerateInterpolator;

    invoke-direct {v1, v4}, Landroidx/core/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/AccelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v1, v4}, Landroidx/core/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/AccelerateInterpolator;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v1, v12}, Landroidx/core/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroidx/core/animation/AccelerateDecelerateInterpolator;-><init>()V

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroidx/core/animation/DecelerateInterpolator;-><init>()V

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    invoke-direct {v1, v4}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    invoke-direct {v1, v8}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    invoke-direct {v1, v12}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v1, v4}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

    new-instance v1, Landroidx/core/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v1, v4}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_3:Landroidx/core/animation/DecelerateInterpolator;

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v11, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v4, 0x3fb33333    # 1.4f

    invoke-direct {v1, v10, v0, v9, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v10, v0, v9, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v3, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/BounceInterpolator;

    invoke-direct {v1}, Landroidx/core/animation/BounceInterpolator;-><init>()V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v10, v0, v9, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v2, v0, v6, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v0, v5, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Lcom/android/app/animation/InterpolatorsAndroidX$1;

    invoke-direct {v1}, Lcom/android/app/animation/InterpolatorsAndroidX$1;-><init>()V

    new-instance v1, Lcom/android/app/animation/InterpolatorsAndroidX$2;

    invoke-direct {v1}, Lcom/android/app/animation/InterpolatorsAndroidX$2;-><init>()V

    sput-object v1, Lcom/android/app/animation/InterpolatorsAndroidX;->ZOOM_OUT:Lcom/android/app/animation/InterpolatorsAndroidX$2;

    new-instance v1, Lcom/android/app/animation/InterpolatorsAndroidX$3;

    invoke-direct {v1}, Lcom/android/app/animation/InterpolatorsAndroidX$3;-><init>()V

    new-instance v1, Lcom/android/app/animation/InterpolatorsAndroidX$4;

    invoke-direct {v1}, Lcom/android/app/animation/InterpolatorsAndroidX$4;-><init>()V

    new-instance v1, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v1, v6, v6, v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
