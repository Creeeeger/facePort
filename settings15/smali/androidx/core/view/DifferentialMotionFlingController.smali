.class public final Landroidx/core/view/DifferentialMotionFlingController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlingVelocityThresholds:[I

.field public mLastFlingVelocity:F

.field public mLastProcessedAxis:I

.field public mLastProcessedDeviceId:I

.field public mLastProcessedSource:I

.field public final mTarget:Landroidx/core/widget/NestedScrollView$DifferentialMotionFlingTargetImpl;

.field public final mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public final mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/widget/NestedScrollView$DifferentialMotionFlingTargetImpl;)V
    .locals 4

    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    iput v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/widget/NestedScrollView$DifferentialMotionFlingTargetImpl;

    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    iput-object v1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    return-void
.end method
