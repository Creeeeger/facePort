.class public final Landroidx/core/view/DifferentialMotionFlingController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFlingVelocityThresholds:[I

.field public mLastFlingVelocity:F

.field public mLastProcessedAxis:I

.field public mLastProcessedDeviceId:I

.field public mLastProcessedSource:I

.field public final mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

.field public final mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;

.field public final mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;)V
    .locals 2

    new-instance v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/core/view/DifferentialMotionFlingController;-><init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/DifferentialMotionFlingTarget;Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedAxis:I

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedSource:I

    iput v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mLastProcessedDeviceId:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/DifferentialMotionFlingController;->mFlingVelocityThresholds:[I

    iput-object p1, p0, Landroidx/core/view/DifferentialMotionFlingController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/view/DifferentialMotionFlingController;->mTarget:Landroidx/core/view/DifferentialMotionFlingTarget;

    iput-object p3, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityThresholdCalculator:Landroidx/core/view/DifferentialMotionFlingController$FlingVelocityThresholdCalculator;

    iput-object p4, p0, Landroidx/core/view/DifferentialMotionFlingController;->mVelocityProvider:Landroidx/core/view/DifferentialMotionFlingController$DifferentialVelocityProvider;

    return-void
.end method
