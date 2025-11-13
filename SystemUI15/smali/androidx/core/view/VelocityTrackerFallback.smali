.class public final Landroidx/core/view/VelocityTrackerFallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDataPointsBufferLastUsedIndex:I

.field public mDataPointsBufferSize:I

.field public final mEventTimes:[J

.field public mLastComputedVelocity:F

.field public final mMovements:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/core/view/VelocityTrackerFallback;->mMovements:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mEventTimes:[J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mLastComputedVelocity:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferSize:I

    iput v0, p0, Landroidx/core/view/VelocityTrackerFallback;->mDataPointsBufferLastUsedIndex:I

    return-void
.end method
