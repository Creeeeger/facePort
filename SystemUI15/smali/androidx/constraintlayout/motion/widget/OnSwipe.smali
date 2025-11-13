.class public final Landroidx/constraintlayout/motion/widget/OnSwipe;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDragScale:F

.field public final mDragThreshold:F

.field public final mLimitBoundsTo:I

.field public final mMaxAcceleration:F

.field public final mMaxVelocity:F

.field public final mMoveWhenScrollAtTop:Z

.field public final mRotationCenterId:I

.field public final mSpringDamping:F

.field public final mSpringMass:F

.field public final mSpringStiffness:F

.field public final mSpringStopThreshold:F

.field public final mTouchAnchorId:I

.field public final mTouchRegionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mTouchAnchorId:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mTouchRegionId:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mLimitBoundsTo:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mRotationCenterId:I

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMaxVelocity:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMaxAcceleration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mMoveWhenScrollAtTop:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mDragScale:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mDragThreshold:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringDamping:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringMass:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringStiffness:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/OnSwipe;->mSpringStopThreshold:F

    return-void
.end method
