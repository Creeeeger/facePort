.class public final Lcom/android/compose/animation/Easings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Emphasized:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final INSTANCE:Lcom/android/compose/animation/Easings;

.field public static final Legacy:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final LegacyDecelerate:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final Linear:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final Standard:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final StandardAccelerate:Lcom/android/compose/animation/Easings$fromInterpolator$1;

.field public static final StandardDecelerate:Lcom/android/compose/animation/Easings$fromInterpolator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/Easings;

    invoke-direct {v0}, Lcom/android/compose/animation/Easings;-><init>()V

    sput-object v0, Lcom/android/compose/animation/Easings;->INSTANCE:Lcom/android/compose/animation/Easings;

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->STANDARD_DECELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sput-object v1, Lcom/android/compose/animation/Easings;->Emphasized:Lcom/android/compose/animation/Easings$fromInterpolator$1;

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->EMPHASIZED_DECELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

    new-instance v1, Lcom/android/compose/animation/Easings$fromInterpolator$1;

    invoke-direct {v1, v0}, Lcom/android/compose/animation/Easings$fromInterpolator$1;-><init>(Landroidx/core/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
