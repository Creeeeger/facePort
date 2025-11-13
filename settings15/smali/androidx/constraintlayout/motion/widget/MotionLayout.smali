.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field public static IS_IN_EDIT_MODE:Z


# instance fields
.field public mAnimationStartTime:J

.field public mBeginState:I

.field public final mBoundsCheck:Landroid/graphics/RectF;

.field public mCurrentState:I

.field public mDebugPath:I

.field public final mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field public mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field public mEndState:I

.field public mEndWrapHeight:I

.field public mEndWrapWidth:I

.field public final mFrameArrayList:Ljava/util/HashMap;

.field public mFrames:I

.field public mHeightMeasureMode:I

.field public mInLayout:Z

.field public mInTransition:Z

.field public final mInteractionEnabled:Z

.field public mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

.field public mInverseMatrix:Landroid/graphics/Matrix;

.field public mKeepAnimating:Z

.field public final mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public mLastDrawTime:J

.field public mLastFps:F

.field public mLastHeightMeasureSpec:I

.field public mLastLayoutHeight:I

.field public mLastLayoutWidth:I

.field public mLastVelocity:F

.field public mLastWidthMeasureSpec:I

.field public final mListenerPosition:F

.field public final mListenerState:I

.field public mMeasureDuringTransition:Z

.field public final mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field public mNeedsFireTransitionCompleted:Z

.field public mOnComplete:Ljava/lang/Runnable;

.field public mPostInterpolationPosition:F

.field public final mPreRotate:Ljava/util/HashMap;

.field public mProgressInterpolator:Landroid/view/animation/Interpolator;

.field public mRegionView:Landroid/view/View;

.field public mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field public mScrollTargetDT:F

.field public mScrollTargetDX:F

.field public mScrollTargetDY:F

.field public mScrollTargetTime:J

.field public mStartWrapHeight:I

.field public mStartWrapWidth:I

.field public mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field public final mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTemporalInterpolator:Z

.field public final mTransitionCompleted:Ljava/util/ArrayList;

.field public mTransitionDuration:F

.field public mTransitionGoalPosition:F

.field public mTransitionInstantly:Z

.field public mTransitionLastPosition:F

.field public mTransitionLastTime:J

.field public mTransitionPosition:F

.field public mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public mUndergoingMotion:Z

.field public mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    new-instance v1, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    new-instance p3, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method


# virtual methods
.method public final animateTo(F)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_3

    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_0

    :cond_3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    :goto_0
    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_b

    const/4 v0, -0x1

    if-eq v4, v0, :cond_a

    if-eqz v4, :cond_9

    if-eq v4, v6, :cond_8

    const/4 v0, 0x2

    if-eq v4, v0, :cond_7

    const/4 v0, 0x4

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_1

    :cond_6
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_8
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_9
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_a
    iget-object p1, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object p1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$1;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    move-object p1, v0

    goto :goto_1

    :cond_b
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    if-eqz v3, :cond_2

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    goto :goto_0

    :cond_1
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    :cond_2
    :goto_1
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    const/4 v5, 0x1

    and-int/2addr v3, v5

    const/high16 v6, 0x41300000    # 11.0f

    const/high16 v7, 0x41200000    # 10.0f

    if-ne v3, v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    sub-long v10, v8, v10

    const-wide/32 v12, 0xbebc200

    cmp-long v3, v10, v12

    if-lez v3, :cond_5

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    int-to-float v3, v3

    long-to-float v10, v10

    const v11, 0x3089705f    # 1.0E-9f

    mul-float/2addr v10, v11

    div-float/2addr v3, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    goto :goto_2

    :cond_4
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    :cond_5
    :goto_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v8, 0x42280000    # 42.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " fps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {v10, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {v10, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " ) state="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_6

    const-string/jumbo v8, "undefined"

    goto :goto_3

    :cond_6
    invoke-static {v8, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x1000000

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1d

    int-to-float v9, v9

    invoke-virtual {v1, v8, v6, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v9, -0x77ff78

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    int-to-float v9, v9

    invoke-virtual {v1, v8, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-le v3, v5, :cond_31

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    if-nez v3, :cond_8

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    :cond_8
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v10, v9, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v10, :cond_9

    iget v9, v10, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_4

    :cond_9
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    :goto_4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_31

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_19

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_b

    and-int/lit8 v11, v0, 0x1

    if-ne v11, v12, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iget v14, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    add-int/lit8 v13, v13, -0x1e

    int-to-float v13, v13

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v7, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1d

    int-to-float v7, v7

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_6

    :cond_c
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v0, :cond_d

    if-nez v8, :cond_d

    move v8, v5

    :cond_d
    if-nez v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    if-eqz v10, :cond_11

    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v11

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    if-eqz v13, :cond_f

    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v2

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v17, v15, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput v2, v13, v15

    move/from16 v15, v17

    goto :goto_7

    :cond_f
    move v14, v2

    move/from16 v20, v14

    :goto_8
    array-length v13, v11

    if-ge v14, v13, :cond_10

    iget-object v13, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v13, v13, v2

    aget-wide v4, v11, v14

    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v13, v4, v5, v15}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    aget-wide v4, v11, v14

    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v13, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v12, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v17, v13

    move-object v13, v12

    move v12, v14

    move-object/from16 v16, v15

    move-wide v14, v4

    move-object/from16 v18, v10

    move/from16 v19, v20

    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v20, v20, 0x2

    add-int/lit8 v14, v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_10
    div-int/lit8 v20, v20, 0x2

    move/from16 v4, v20

    goto :goto_9

    :cond_11
    move v4, v2

    :goto_9
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    const/4 v4, 0x1

    if-lt v8, v4, :cond_2f

    div-int/lit8 v4, v9, 0x10

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    if-eqz v5, :cond_12

    array-length v5, v5

    mul-int/lit8 v10, v4, 0x2

    if-eq v5, v10, :cond_13

    :cond_12
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [F

    iput-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    :cond_13
    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    int-to-float v10, v5

    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x77000000

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    add-int/lit8 v11, v4, -0x1

    int-to-float v11, v11

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v11, v15, v11

    iget-object v12, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v13, "translationX"

    if-nez v12, :cond_14

    const/4 v14, 0x0

    goto :goto_a

    :cond_14
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-object v14, v12

    :goto_a
    iget-object v12, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v2, "translationY"

    if-nez v12, :cond_15

    const/4 v12, 0x0

    goto :goto_b

    :cond_15
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/utils/ViewSpline;

    :goto_b
    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v15, :cond_16

    const/4 v15, 0x0

    goto :goto_c

    :cond_16
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-object v15, v13

    :goto_c
    iget-object v13, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_17

    const/4 v2, 0x0

    goto :goto_d

    :cond_17
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    :goto_d
    move/from16 v20, v0

    const/4 v13, 0x0

    :goto_e
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/high16 v17, 0x7fc00000    # Float.NaN

    move-object/from16 v21, v6

    if-ge v13, v4, :cond_26

    int-to-float v6, v13

    mul-float/2addr v6, v11

    move/from16 v22, v4

    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v23, v4, v16

    if-eqz v23, :cond_19

    move/from16 v23, v9

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v24, v6, v9

    if-gez v24, :cond_18

    const/4 v6, 0x0

    :cond_18
    cmpl-float v24, v6, v9

    if-lez v24, :cond_1a

    move/from16 v24, v11

    move-object/from16 v25, v12

    float-to-double v11, v6

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v11, v26

    if-gez v11, :cond_1b

    sub-float/2addr v6, v9

    mul-float/2addr v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_f

    :cond_19
    move/from16 v23, v9

    :cond_1a
    move/from16 v24, v11

    move-object/from16 v25, v12

    :cond_1b
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_f
    float-to-double v11, v6

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v18, 0x0

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v16, v9

    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v9, :cond_1d

    move-object/from16 v27, v9

    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v28, v9, v6

    if-gez v28, :cond_1c

    move/from16 v18, v9

    move-object/from16 v0, v27

    goto :goto_11

    :cond_1c
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v17, v4

    :cond_1d
    :goto_11
    move-object/from16 v9, v16

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_1e
    if-eqz v0, :cond_20

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_1f
    move/from16 v16, v17

    :goto_12
    sub-float v4, v6, v18

    sub-float v16, v16, v18

    div-float v4, v4, v16

    float-to-double v11, v4

    invoke-virtual {v0, v11, v12}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v11

    double-to-float v0, v11

    mul-float v0, v0, v16

    add-float v0, v0, v18

    float-to-double v11, v0

    :cond_20
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v11, v12, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v0, :cond_21

    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v9, v4

    if-lez v9, :cond_21

    invoke-virtual {v0, v11, v12, v4}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    :cond_21
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v9, v13, 0x2

    move-wide/from16 v16, v11

    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move/from16 v27, v5

    move-object/from16 v5, v25

    move-object v12, v11

    move/from16 v25, v13

    move-object v11, v14

    move-wide/from16 v13, v16

    move-object v1, v15

    const/high16 v26, 0x3f800000    # 1.0f

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    if-eqz v1, :cond_22

    aget v0, v10, v9

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v4

    add-float/2addr v4, v0

    aput v4, v10, v9

    goto :goto_13

    :cond_22
    if-eqz v11, :cond_23

    aget v0, v10, v9

    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    move-result v4

    add-float/2addr v4, v0

    aput v4, v10, v9

    :cond_23
    :goto_13
    if-eqz v2, :cond_24

    add-int/lit8 v9, v9, 0x1

    aget v0, v10, v9

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v4

    add-float/2addr v4, v0

    aput v4, v10, v9

    goto :goto_14

    :cond_24
    if-eqz v5, :cond_25

    add-int/lit8 v9, v9, 0x1

    aget v0, v10, v9

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    move-result v4

    add-float/2addr v4, v0

    aput v4, v10, v9

    :cond_25
    :goto_14
    add-int/lit8 v13, v25, 0x1

    move-object v15, v1

    move-object v12, v5

    move-object v14, v11

    move-object/from16 v6, v21

    move/from16 v4, v22

    move/from16 v9, v23

    move/from16 v11, v24

    move/from16 v5, v27

    move-object/from16 v1, p1

    goto/16 :goto_e

    :cond_26
    move/from16 v27, v5

    move/from16 v23, v9

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    move-object/from16 v2, p1

    invoke-virtual {v3, v2, v8, v1, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v4, -0x55cd

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    const v4, -0x1f8a66

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    const v4, -0xcc5600

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v1, v27

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    invoke-virtual {v3, v2, v8, v1, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    const/4 v1, 0x5

    if-ne v8, v1, :cond_2e

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v4, 0x0

    :goto_15
    const/16 v6, 0x32

    if-gt v4, v6, :cond_2d

    int-to-float v8, v4

    int-to-float v6, v6

    div-float/2addr v8, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v8, v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    float-to-double v10, v8

    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_16
    array-length v15, v8

    const/4 v1, 0x3

    if-ge v10, v15, :cond_2b

    aget-wide v5, v9, v10

    double-to-float v5, v5

    aget v6, v8, v10

    const/4 v15, 0x1

    if-eq v6, v15, :cond_2a

    const/4 v15, 0x2

    if-eq v6, v15, :cond_29

    if-eq v6, v1, :cond_28

    const/4 v1, 0x4

    if-eq v6, v1, :cond_27

    goto :goto_17

    :cond_27
    move v14, v5

    goto :goto_17

    :cond_28
    move v13, v5

    goto :goto_17

    :cond_29
    move v12, v5

    goto :goto_17

    :cond_2a
    move v11, v5

    :goto_17
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x5

    const/4 v6, 0x0

    goto :goto_16

    :cond_2b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v5, :cond_2c

    const/4 v5, 0x0

    float-to-double v8, v5

    float-to-double v5, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v5

    add-double v25, v25, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float v15, v13, v12

    float-to-double v1, v15

    sub-double v1, v25, v1

    double-to-float v1, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v5

    sub-double/2addr v8, v10

    div-float v2, v14, v12

    float-to-double v5, v2

    sub-double/2addr v8, v5

    double-to-float v12, v8

    move v11, v1

    :cond_2c
    add-float/2addr v13, v11

    add-float/2addr v14, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    const/4 v1, 0x0

    add-float/2addr v11, v1

    add-float/2addr v12, v1

    add-float/2addr v13, v1

    add-float/2addr v14, v1

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    const/4 v5, 0x0

    aput v11, v2, v5

    const/4 v6, 0x1

    aput v12, v2, v6

    const/4 v8, 0x2

    aput v13, v2, v8

    const/4 v8, 0x3

    aput v12, v2, v8

    const/4 v8, 0x4

    aput v13, v2, v8

    const/4 v8, 0x5

    aput v14, v2, v8

    const/4 v8, 0x6

    aput v11, v2, v8

    const/4 v9, 0x7

    aput v14, v2, v9

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    const/4 v11, 0x2

    aget v12, v2, v11

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    const/4 v12, 0x4

    aget v12, v2, v12

    const/4 v13, 0x5

    aget v14, v2, v13

    invoke-virtual {v10, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    aget v8, v2, v8

    aget v2, v2, v9

    invoke-virtual {v10, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move v1, v13

    goto/16 :goto_15

    :cond_2d
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x2

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_18

    :cond_2e
    move-object v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto :goto_18

    :cond_2f
    move/from16 v20, v0

    move-object v0, v1

    move v5, v2

    move-object/from16 v21, v6

    move/from16 v23, v9

    const/4 v11, 0x2

    move v6, v4

    :goto_18
    move-object v1, v0

    move v2, v5

    move v5, v6

    move v12, v11

    move/from16 v0, v20

    move-object/from16 v6, v21

    move/from16 v9, v23

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_30
    move-object v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_31
    :goto_19
    return-void
.end method

.method public final endTrigger()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "button"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final evaluate(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v3, :cond_28

    if-nez p1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_28

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    instance-of v10, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v10, v12

    goto :goto_0

    :cond_3
    move v10, v2

    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v12, v10

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v13, :cond_4

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_4
    cmpl-float v13, v1, v2

    if-lez v13, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v2

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_7

    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v14, v6

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v3, :cond_f

    if-nez v14, :cond_f

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v14, :cond_d

    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    mul-float/2addr v4, v11

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    const/4 v10, 0x2

    if-ne v4, v5, :cond_9

    iget-object v4, v5, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v4}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v10

    goto :goto_2

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v4, v7

    :goto_2
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v8, :cond_c

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr v8, v9

    cmpg-float v8, v8, v15

    if-gtz v8, :cond_a

    if-ne v4, v10, :cond_a

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_a
    cmpl-float v8, v5, v2

    if-lez v8, :cond_b

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v3, v8

    if-ltz v9, :cond_b

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_b
    cmpg-float v5, v5, v2

    if-gez v5, :cond_c

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_c

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v12, v2

    goto :goto_5

    :cond_c
    move v12, v3

    goto :goto_5

    :cond_d
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_3

    :cond_e
    add-float/2addr v12, v10

    invoke-interface {v4, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v10

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :goto_3
    move v12, v3

    :goto_4
    move v4, v7

    goto :goto_5

    :cond_f
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_4

    :goto_5
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_10

    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_10
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-eq v4, v6, :cond_15

    if-lez v13, :cond_11

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v4, v12, v4

    if-gez v4, :cond_12

    :cond_11
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_13

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v4, v12, v4

    if-gtz v4, :cond_13

    :cond_12
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v12, v4

    if-gez v5, :cond_14

    cmpg-float v4, v12, v2

    if-gtz v4, :cond_15

    :cond_14
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_16

    move v5, v12

    goto :goto_6

    :cond_16
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    :goto_6
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_17

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v11, v1, v11

    add-float/2addr v11, v12

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :cond_17
    move v10, v7

    :goto_7
    if-ge v10, v4, :cond_19

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v16, :cond_18

    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move/from16 v17, v5

    move-wide/from16 v18, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v7

    or-int/2addr v7, v15

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    :cond_18
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_7

    :cond_19
    if-lez v13, :cond_1a

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v4, v12, v4

    if-gez v4, :cond_1b

    :cond_1a
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1c

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v4, v12, v4

    if-gtz v4, :cond_1c

    :cond_1b
    move v4, v6

    goto :goto_8

    :cond_1c
    const/4 v4, 0x0

    :goto_8
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-nez v5, :cond_1d

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_1d
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1e
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    xor-int/2addr v4, v6

    or-int/2addr v4, v5

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    cmpg-float v4, v12, v2

    if-gtz v4, :cond_1f

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v5, v4, :cond_1f

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    goto :goto_9

    :cond_1f
    const/4 v7, 0x0

    :goto_9
    float-to-double v4, v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_20

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v4, v5, :cond_20

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    move v7, v6

    :cond_20
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v4, :cond_24

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v4, :cond_21

    goto :goto_a

    :cond_21
    if-lez v13, :cond_22

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v12, v4

    if-eqz v5, :cond_23

    :cond_22
    cmpg-float v4, v1, v2

    if-gez v4, :cond_25

    cmpl-float v4, v12, v2

    if-nez v4, :cond_25

    :cond_23
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_b

    :cond_24
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_25
    :goto_b
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v3, :cond_28

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-nez v3, :cond_28

    if-lez v13, :cond_26

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v12, v3

    if-eqz v4, :cond_27

    :cond_26
    cmpg-float v1, v1, v2

    if-gez v1, :cond_28

    cmpl-float v1, v12, v2

    if-nez v1, :cond_28

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v1, v2, :cond_29

    goto :goto_c

    :cond_29
    move v6, v7

    :goto_c
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    :goto_d
    move v7, v6

    goto :goto_f

    :cond_2a
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2c

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-eq v1, v2, :cond_2b

    goto :goto_e

    :cond_2b
    move v6, v7

    :goto_e
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_d

    :cond_2c
    :goto_f
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v7, :cond_2d

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    if-nez v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_2d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    return-void
.end method

.method public final getAnchorDpDt(IFFF[F)V
    .locals 11

    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move v2, p2

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    aget-object v3, v3, v4

    float-to-double v7, v2

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v3, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v4

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v7, v8, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    aget v1, v1, v4

    :goto_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v5

    if-ge v4, v2, :cond_0

    aget-wide v2, v5, v4

    float-to-double v9, v1

    mul-double/2addr v2, v9

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v7, v8, v2}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, p3

    move v1, p4

    move-object/from16 v2, p5

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, p3

    move v1, p4

    move-object/from16 v2, p5

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v2, v3

    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v5

    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v5, v7

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v1, v0

    add-float/2addr v5, v2

    add-float/2addr v1, v3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v7, v0, p3

    mul-float/2addr v7, v2

    mul-float/2addr v5, p3

    add-float/2addr v5, v7

    aput v5, p5, v4

    sub-float/2addr v0, p4

    mul-float/2addr v0, v3

    mul-float/2addr v1, p4

    add-float/2addr v1, v0

    const/4 v0, 0x1

    aput v1, p5, v0

    :cond_3
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    const-string v0, ""

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "WARNING could not find view id "

    const-string v2, "MotionLayout"

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    return v1
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    const-string v0, "MotionLayout"

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_7

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    goto :goto_2

    :cond_0
    if-ne v7, v4, :cond_1

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_2

    :cond_1
    const/4 v9, 0x4

    if-ne v7, v9, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    goto :goto_2

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_2

    :cond_3
    const/4 v9, 0x5

    if-ne v7, v9, :cond_5

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-nez v9, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v8, v2

    :goto_1
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    goto :goto_2

    :cond_5
    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_8

    const-string p1, "WARNING NO app:layoutDescription tag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v6, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez p1, :cond_a

    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_3
    const-string v6, "CHECK: "

    if-ge v5, v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v1, :cond_b

    const-string v9, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-static {v6, p1, v9}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, " NO CONSTRAINTS for "

    invoke-static {v6, p1, v8}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    iget-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    array-length v5, v4

    new-array v7, v5, [I

    move v8, v2

    :goto_4
    if-ge v8, v5, :cond_e

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-ge v2, v5, :cond_12

    aget v4, v7, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aget v9, v7, v2

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v1, :cond_10

    invoke-static {v6, p1, v11, v8, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    if-ne v4, v1, :cond_11

    invoke-static {v6, p1, v11, v8, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v4, v5, :cond_14

    const-string v5, "CHECK: CURRENT"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v5, v6, :cond_15

    const-string v5, "CHECK: start and end constraint set should not be the same!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    if-nez v5, :cond_18

    const-string v5, " no such constraintSetStart "

    invoke-static {v5, v6, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    if-nez v4, :cond_13

    const-string v4, " no such constraintSetEnd "

    invoke-static {v4, v6, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    :goto_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne p1, v1, :cond_1b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez p1, :cond_1a

    goto :goto_8

    :cond_1a
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    :cond_1b
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_6

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    :goto_1
    if-lez v4, :cond_3

    if-ne v4, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v5, -0x1

    if-gez v5, :cond_2

    :goto_2
    const-string v1, "MotionScene"

    const-string v2, "Cannot be derived from yourself"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move v5, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-eqz v0, :cond_d

    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v2, -0x1

    if-ne p0, v2, :cond_7

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    if-eq v3, v2, :cond_a

    :cond_7
    if-ne p0, v2, :cond_8

    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_4

    :cond_8
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    if-ne v3, v2, :cond_9

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    :goto_4
    sget-object p0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_a
    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_c

    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_5

    :cond_c
    iget p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(FF)V

    const/high16 p0, 0x7fc00000    # Float.NaN

    iput p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iput p0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    goto :goto_5

    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_e

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_e
    :goto_5
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    goto/16 :goto_16

    :cond_1
    const/4 v3, 0x1

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    const/4 v13, -0x1

    if-eqz v1, :cond_2c

    iget-object v14, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v15, v13, :cond_2

    goto/16 :goto_15

    :cond_2
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/ViewTransition;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_3

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    const/4 v8, 0x2

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    if-eq v9, v3, :cond_7

    if-eq v9, v8, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_6
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    float-to-int v7, v12

    float-to-int v13, v11

    invoke-virtual {v6, v7, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    if-nez v6, :cond_8

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    goto :goto_2

    :cond_7
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    if-nez v6, :cond_8

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    :cond_8
    :goto_2
    const/4 v13, -0x1

    goto :goto_1

    :cond_9
    if-eqz v9, :cond_a

    if-eq v9, v3, :cond_a

    goto/16 :goto_15

    :cond_a
    iget-object v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v4, :cond_b

    const/4 v7, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    move-object v7, v4

    :goto_3
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition;

    iget v4, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    if-ne v4, v3, :cond_c

    if-nez v9, :cond_2b

    goto :goto_5

    :cond_c
    if-ne v4, v8, :cond_d

    if-ne v9, v3, :cond_2b

    goto :goto_5

    :cond_d
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2b

    if-nez v9, :cond_2b

    :goto_5
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v4, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, v12

    float-to-int v13, v11

    invoke-virtual {v10, v5, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2a

    new-array v5, v3, [Landroid/view/View;

    aput-object v4, v5, v2

    iget-boolean v13, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    if-eqz v13, :cond_f

    goto/16 :goto_12

    :cond_f
    iget v13, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    if-ne v13, v8, :cond_1b

    new-instance v13, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v13, v4}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    iget-object v5, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v8, 0x0

    iput v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iput-boolean v3, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v3

    move-object/from16 v20, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move/from16 v21, v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v8, v3, v7, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v9, v3, v5, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    :goto_7
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_11

    const/4 v8, 0x0

    goto :goto_8

    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    :goto_8
    iput v8, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-virtual {v4}, Landroid/view/View;->getElevation()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    iget-object v3, v13, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionController;->setup()V

    new-instance v4, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    iget v7, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    iget v8, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    iget v9, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    const/4 v5, -0x2

    if-eq v3, v5, :cond_1a

    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    if-eq v3, v2, :cond_17

    const/4 v5, 0x2

    if-eq v3, v5, :cond_16

    const/4 v2, 0x4

    if-eq v3, v2, :cond_15

    const/4 v2, 0x5

    if-eq v3, v2, :cond_14

    const/4 v2, 0x6

    if-eq v3, v2, :cond_13

    const/4 v2, 0x0

    goto :goto_9

    :cond_13
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_9

    :cond_14
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_9

    :cond_15
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_9

    :cond_16
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_17
    const/4 v5, 0x2

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_18
    const/4 v5, 0x2

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_9

    :cond_19
    const/4 v5, 0x2

    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    new-instance v3, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    move-object v2, v3

    goto :goto_9

    :cond_1a
    const/4 v5, 0x2

    iget v3, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    :goto_9
    iget v3, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    move/from16 v18, v12

    iget v12, v6, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    move/from16 v19, v5

    move-object v5, v1

    move-object/from16 v22, v1

    move-object v1, v6

    move-object v6, v13

    move-object/from16 v13, v20

    move/from16 v20, v21

    move-object/from16 v21, v10

    move-object v10, v2

    move/from16 v23, v11

    move v11, v3

    move/from16 v3, v18

    invoke-direct/range {v4 .. v12}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    move-object v4, v13

    goto/16 :goto_13

    :cond_1b
    move-object/from16 v22, v1

    move-object v1, v6

    move-object v4, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v11

    move v3, v12

    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    const/4 v7, 0x1

    if-ne v13, v7, :cond_22

    iget-object v7, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v7, :cond_1c

    const/4 v9, 0x0

    goto :goto_b

    :cond_1c
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    new-array v9, v8, [I

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v8, :cond_1d

    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_1d
    :goto_b
    const/4 v7, 0x0

    :goto_c
    array-length v8, v9

    if-ge v7, v8, :cond_22

    aget v8, v9, v7

    if-ne v8, v15, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v10, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v10, :cond_1f

    const/4 v8, 0x0

    :goto_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_1f
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v8

    goto :goto_d

    :goto_e
    aget-object v11, v5, v10

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v8

    if-eqz v6, :cond_21

    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz v10, :cond_20

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    :cond_20
    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v10, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_21
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_22
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez v10, :cond_23

    goto :goto_10

    :cond_23
    iget-object v11, v7, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_24
    const/4 v9, 0x0

    aget-object v8, v5, v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v8

    if-eqz v6, :cond_26

    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz v9, :cond_25

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    :cond_25
    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_26
    invoke-virtual {v14, v15, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    const v6, 0x7f0a1107

    invoke-virtual {v14, v6, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(I)V

    new-instance v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v7, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-direct {v6, v7, v15}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;I)V

    const/4 v7, 0x0

    aget-object v8, v5, v7

    iget v7, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_27

    const/16 v9, 0x8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    :cond_27
    iget v7, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    iget v7, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    iget v10, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    iput v7, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    iput-object v9, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    iput v10, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    if-eqz v2, :cond_28

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyFrames;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_29

    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    const/4 v2, 0x0

    goto :goto_11

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v2, 0x0

    throw v2

    :goto_11
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    new-instance v6, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v5}, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput-object v6, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    goto :goto_14

    :cond_2a
    :goto_12
    move-object/from16 v22, v1

    move-object v1, v6

    move-object v4, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v11

    move v3, v12

    :goto_13
    const/4 v2, 0x0

    :goto_14
    move-object v6, v1

    move v12, v3

    move-object v7, v4

    move/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v1, v22

    move/from16 v11, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v22, v1

    move-object v4, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v11

    move v3, v12

    const/4 v2, 0x0

    move v12, v3

    move-object v7, v4

    move/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v1, v22

    move/from16 v11, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_2c
    :goto_15
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v1, :cond_30

    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_30

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2d

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    return v2

    :cond_2d
    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_2f

    :cond_2e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    :cond_2f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v1, :cond_30

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_30
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    if-eq p1, p5, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    return-void

    :goto_0
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    throw p1
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v6, :cond_3

    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    move v3, v4

    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v6, :cond_4

    move v3, v4

    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v6

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v8, -0x1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_2

    :cond_5
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_2
    if-nez v3, :cond_6

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    if-ne v6, v10, :cond_6

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    if-eq v7, v9, :cond_7

    :cond_6
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-eq v9, v8, :cond_7

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    iput v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    move v1, v5

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_8
    move v1, v4

    :goto_3
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_e

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_b

    :cond_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    int-to-float v2, v1

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    float-to-int v1, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-eq v2, v6, :cond_c

    if-nez v2, :cond_d

    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    int-to-float v3, v2

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_d
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    instance-of v7, v6, Landroidx/constraintlayout/motion/utils/StopLogic;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_f

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float/2addr v7, v1

    mul-float/2addr v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float/2addr v7, v10

    goto :goto_4

    :cond_f
    move v7, v9

    :goto_4
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v10, v7

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v7, :cond_10

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_10
    cmpl-float v7, v1, v9

    if-lez v7, :cond_11

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v11, v10, v11

    if-gez v11, :cond_12

    :cond_11
    cmpg-float v11, v1, v9

    if-gtz v11, :cond_13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_13

    :cond_12
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_5

    :cond_13
    move v4, v5

    :goto_5
    if-eqz v6, :cond_15

    if-nez v4, :cond_15

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v4, :cond_14

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_6

    :cond_14
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :cond_15
    :goto_6
    if-lez v7, :cond_16

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_17

    :cond_16
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_18

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_18

    :cond_17
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :cond_18
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_19

    goto :goto_7

    :cond_19
    invoke-interface {v4, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :goto_7
    if-ge v5, v1, :cond_1b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v11, :cond_1a

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    move v12, v10

    move-wide v13, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_1b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1c
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v5, :cond_14

    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v8, -0x1

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_2

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    if-eq v6, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v6, :cond_2

    return-void

    :cond_2
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_3

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    goto :goto_0

    :cond_3
    move v6, v9

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_4

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    move v8, v3

    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v12, v6, v10

    if-eqz v12, :cond_5

    cmpl-float v6, v6, v11

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    :cond_6
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v5, :cond_d

    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_d

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v8, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v8, :cond_a

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v8, :cond_a

    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v13, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v15, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v10, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move/from16 v16, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v10, v7, v11

    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v13, 0x33d6bf95    # 1.0E-7f

    if-eqz v10, :cond_8

    aget v6, v12, v9

    cmpl-float v6, v6, v11

    if-nez v6, :cond_7

    aput v13, v12, v9

    :cond_7
    mul-float/2addr v5, v7

    aget v6, v12, v9

    div-float/2addr v5, v6

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    aget v7, v12, v5

    cmpl-float v7, v7, v11

    if-nez v7, :cond_9

    aput v13, v12, v5

    :cond_9
    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v6, v7

    aget v7, v12, v5

    div-float v5, v6, v7

    goto :goto_1

    :cond_a
    move v5, v11

    :goto_1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v7, v6, v11

    if-gtz v7, :cond_b

    cmpg-float v7, v5, v11

    if-ltz v7, :cond_c

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    cmpl-float v5, v5, v11

    if-lez v5, :cond_d

    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    int-to-float v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    int-to-float v8, v3

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    sub-long v12, v5, v12

    long-to-double v12, v12

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    double-to-float v10, v12

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v4, :cond_11

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v4, :cond_11

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v10, :cond_e

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_e
    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v15, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v14, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object/from16 v17, v14

    move v14, v6

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v13, v12, v9

    mul-float/2addr v10, v13

    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    const/4 v14, 0x1

    aget v15, v12, v14

    mul-float/2addr v13, v15

    add-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v14, v10

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v14, v16

    if-gez v10, :cond_f

    const v10, 0x3c23d70a    # 0.01f

    aput v10, v12, v9

    const/4 v13, 0x1

    aput v10, v12, v13

    :cond_f
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v13, v10, v11

    if-eqz v13, :cond_10

    mul-float/2addr v7, v10

    aget v4, v12, v9

    div-float/2addr v7, v4

    goto :goto_2

    :cond_10
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v8, v4

    const/4 v4, 0x1

    aget v7, v12, v4

    div-float v7, v8, v7

    :goto_2
    add-float/2addr v6, v7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_11
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_12

    aput v2, p4, v9

    const/4 v1, 0x1

    aput v3, p4, v1

    goto :goto_3

    :cond_12
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    aget v2, p4, v9

    if-nez v2, :cond_13

    aget v2, p4, v1

    if-eqz v2, :cond_14

    :cond_13
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    :cond_14
    :goto_4
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    return-void
.end method

.method public final onNewStateAttachHandlers()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    :cond_5
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto :goto_2

    :cond_7
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-virtual {v5, p0, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p0, :cond_c

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p0, :cond_c

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot find TouchAnchorId @id/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-static {v1, p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TouchResponse"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_4
    instance-of p0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_c

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    :cond_c
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p0

    iput-boolean p0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    :cond_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p0, :cond_1

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .locals 10

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz p1, :cond_6

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    div-float/2addr v1, p2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    div-float/2addr p0, p2

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v8, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move-object v2, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v3, p2

    iget v5, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    const/4 v6, 0x1

    aget v3, v3, v6

    cmpl-float v7, v2, v0

    if-eqz v7, :cond_1

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    goto :goto_0

    :cond_1
    mul-float/2addr p0, v5

    div-float v1, p0, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_2

    const/high16 p0, 0x40400000    # 3.0f

    div-float p0, v1, p0

    add-float/2addr v9, p0

    :cond_2
    cmpl-float p0, v9, v0

    if-eqz p0, :cond_6

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v2, v9, p0

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, p2

    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    move p2, v6

    :cond_4
    and-int/2addr p2, v2

    if-eqz p2, :cond_6

    float-to-double v2, v9

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v2, v4

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, p0

    :goto_2
    invoke-virtual {v8, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v2, :cond_65

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-eqz v3, :cond_65

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->me:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    :cond_1
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    if-eq v3, v10, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-eqz v12, :cond_16

    if-eq v12, v8, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-boolean v12, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    if-eqz v12, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    sub-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    sub-float/2addr v13, v14

    float-to-double v14, v13

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_5

    float-to-double v14, v12

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_63

    :cond_5
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    if-nez v14, :cond_6

    goto/16 :goto_2c

    :cond_6
    if-eq v3, v10, :cond_14

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v15, :cond_7

    invoke-virtual {v15, v3}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    move-result v15

    if-eq v15, v10, :cond_7

    goto :goto_0

    :cond_7
    move v15, v3

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v4, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    if-eq v4, v15, :cond_8

    iget v4, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v4, v15, :cond_9

    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v4, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_a
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-boolean v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    if-eqz v9, :cond_b

    move-object/from16 v21, v6

    goto :goto_3

    :cond_b
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v9, :cond_11

    iget-boolean v11, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v9, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v21, v6

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9, v11, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_c
    move-object/from16 v21, v6

    :cond_d
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v6, v9, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_3
    move-object/from16 v6, v21

    goto :goto_2

    :cond_e
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v9, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v9, v13

    iget v11, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v9

    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    if-eqz v6, :cond_f

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v6, v9

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v11, v9

    add-float v9, v13, v6

    move-object/from16 v22, v4

    add-float v4, v12, v11

    move/from16 v23, v12

    move/from16 v24, v13

    float-to-double v12, v4

    move-object v4, v10

    float-to-double v9, v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    float-to-double v12, v6

    move-object/from16 v25, v4

    move-object v6, v5

    float-to-double v4, v11

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v9, v4

    double-to-float v4, v9

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v11, v4, v5

    goto :goto_4

    :cond_f
    move-object/from16 v22, v4

    move-object v6, v5

    move-object/from16 v25, v10

    move/from16 v23, v12

    move/from16 v24, v13

    :goto_4
    iget v4, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v4, v3, :cond_10

    const/high16 v4, -0x40800000    # -1.0f

    :goto_5
    mul-float/2addr v11, v4

    goto :goto_6

    :cond_10
    const v4, 0x3f8ccccd    # 1.1f

    goto :goto_5

    :goto_6
    cmpl-float v4, v11, v8

    if-lez v4, :cond_12

    move v8, v11

    move-object v10, v15

    goto :goto_7

    :cond_11
    move-object/from16 v22, v4

    move-object/from16 v21, v6

    move-object/from16 v25, v10

    move/from16 v23, v12

    move/from16 v24, v13

    move-object v6, v5

    :cond_12
    move-object/from16 v10, v25

    :goto_7
    move-object v5, v6

    move-object/from16 v6, v21

    move-object/from16 v4, v22

    move/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_2

    :cond_13
    move-object v6, v5

    move-object/from16 v25, v10

    goto :goto_8

    :cond_14
    move-object v6, v5

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    :goto_8
    if-eqz v10, :cond_19

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v3, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    :goto_9
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    goto :goto_b

    :cond_16
    move-object v6, v5

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_63

    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    goto/16 :goto_2c

    :cond_17
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    :goto_a
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    goto/16 :goto_2c

    :cond_19
    :goto_b
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    if-eqz v3, :cond_1a

    goto/16 :goto_2c

    :cond_1a
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_5f

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v3, :cond_5f

    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    if-nez v4, :cond_5f

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const/high16 v23, 0x40400000    # 3.0f

    if-eqz v5, :cond_3e

    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1b

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    const/high16 v25, 0x43b40000    # 360.0f

    const/high16 v26, 0x40000000    # 2.0f

    const/4 v12, 0x1

    if-eq v5, v12, :cond_2c

    const/4 v12, 0x2

    if-eq v5, v12, :cond_1d

    :cond_1c
    move-object/from16 v33, v2

    goto/16 :goto_1b

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v26

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v26

    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    const/4 v15, -0x1

    if-eq v12, v15, :cond_1e

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v13, v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v12

    int-to-float v12, v15

    div-float v12, v12, v26

    add-float/2addr v6, v12

    const/4 v12, 0x1

    aget v13, v13, v12

    int-to-float v12, v13

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    div-float v5, v5, v26

    add-float/2addr v5, v12

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto :goto_c

    :cond_1e
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v15, -0x1

    if-eq v12, v15, :cond_20

    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1f

    const-string v12, "TouchResponse"

    const-string v13, "could not find view to animate to"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1f
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v5, v13, v5

    int-to-float v5, v5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v6

    int-to-float v6, v15

    div-float v6, v6, v26

    add-float/2addr v5, v6

    const/4 v6, 0x1

    aget v13, v13, v6

    int-to-float v6, v13

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float v12, v12, v26

    add-float/2addr v6, v12

    :cond_20
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    sub-float/2addr v12, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    sub-float/2addr v13, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    sub-float/2addr v15, v6

    float-to-double v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float/2addr v15, v5

    float-to-double v8, v15

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    sub-float/2addr v10, v6

    float-to-double v10, v10

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    sub-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double v5, v8, v5

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v10

    double-to-float v5, v5

    const/high16 v6, 0x43a50000    # 330.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_21

    sub-float v5, v5, v25

    goto :goto_d

    :cond_21
    const/high16 v6, -0x3c5b0000    # -330.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_22

    add-float v5, v5, v25

    :cond_22
    :goto_d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v10, v6

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v10, v20

    if-gtz v6, :cond_23

    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-eqz v6, :cond_1c

    :cond_23
    iget v6, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-boolean v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v10, :cond_24

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_24
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_25

    iget v11, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move-object/from16 v33, v2

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object/from16 v27, v2

    move/from16 v28, v10

    move/from16 v29, v6

    move/from16 v30, v11

    move/from16 v31, v15

    move-object/from16 v32, v0

    invoke-virtual/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    const/4 v0, 0x1

    aget v2, v7, v0

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v2, v10

    aput v2, v7, v0

    goto :goto_e

    :cond_25
    move-object/from16 v33, v2

    const/4 v0, 0x1

    aput v25, v7, v0

    :goto_e
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v5, v2

    aget v2, v7, v0

    div-float/2addr v5, v2

    add-float/2addr v5, v6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_2b

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_26

    cmpl-float v0, v6, v0

    if-nez v0, :cond_27

    :cond_26
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger()V

    :cond_27
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_28

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_28
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_f

    :cond_29
    const/4 v0, 0x0

    :goto_f
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    goto :goto_10

    :cond_2a
    const/4 v6, 0x0

    :goto_10
    float-to-double v4, v6

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    float-to-double v6, v12

    float-to-double v8, v13

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_11

    :cond_2b
    move v0, v5

    iput v0, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    goto/16 :goto_1b

    :cond_2c
    move-object/from16 v33, v2

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2d

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_2d
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_12

    :cond_2e
    const/4 v0, 0x0

    :goto_12
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    goto :goto_13

    :cond_2f
    const/4 v2, 0x0

    :goto_13
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v26

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v26

    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_30

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v8, v13, v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float v9, v9, v26

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aget v10, v13, v9

    int-to-float v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_14
    add-int/2addr v5, v10

    int-to-float v5, v5

    div-float v5, v5, v26

    add-float/2addr v5, v9

    move/from16 v34, v8

    move v8, v5

    move/from16 v5, v34

    goto :goto_15

    :cond_30
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_31

    iget-object v5, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v8, v13, v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float v9, v9, v26

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aget v10, v13, v9

    int-to-float v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_14

    :cond_31
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v5, v8

    float-to-double v10, v5

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_32

    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object/from16 v27, v1

    move/from16 v28, v8

    move/from16 v29, v4

    move/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v15

    invoke-virtual/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    const/4 v1, 0x1

    aget v8, v7, v1

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v8, v12

    aput v8, v7, v1

    goto :goto_16

    :cond_32
    const/4 v1, 0x1

    aput v25, v7, v1

    :goto_16
    add-float/2addr v2, v5

    float-to-double v1, v2

    add-float/2addr v0, v9

    float-to-double v8, v0

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    sub-double/2addr v0, v10

    double-to-float v0, v0

    const/high16 v1, 0x427a0000    # 62.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_33

    mul-float v1, v0, v23

    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v5, v7, v2

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    :goto_17
    const/4 v2, 0x0

    goto :goto_18

    :cond_33
    move v1, v4

    goto :goto_17

    :goto_18
    cmpl-float v5, v1, v2

    if-eqz v5, :cond_3a

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_3a

    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3a

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v0, v5

    const/4 v5, 0x1

    aget v7, v7, v5

    div-float/2addr v0, v7

    float-to-double v7, v1

    cmpg-double v1, v7, v21

    if-gez v1, :cond_34

    const/4 v1, 0x0

    :goto_19
    const/4 v5, 0x6

    goto :goto_1a

    :cond_34
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_19

    :goto_1a
    if-ne v2, v5, :cond_36

    add-float v1, v4, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_35

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_35
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_36
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_38

    add-float v1, v4, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_37

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_37
    const/4 v1, 0x0

    :cond_38
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    mul-float v0, v0, v23

    invoke-virtual {v14, v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_39

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3d

    :cond_39
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1b

    :cond_3a
    const/4 v0, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3d

    :cond_3b
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1b

    :cond_3c
    move-object/from16 v33, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    :cond_3d
    :goto_1b
    move-object/from16 v1, p1

    goto/16 :goto_2a

    :cond_3e
    move-object/from16 v33, v2

    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    move-object/from16 v1, p1

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_40

    goto/16 :goto_2a

    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    sub-float/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    sub-float/2addr v2, v5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v5, v2

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_41

    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-eqz v5, :cond_60

    :cond_41
    iget v5, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v6, :cond_42

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    invoke-virtual {v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_42
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v6, -0x1

    if-eq v9, v6, :cond_43

    iget v11, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_1c

    :cond_43
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v8, v6

    const/4 v9, 0x1

    aput v8, v7, v9

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v6, v8

    const/4 v8, 0x0

    aput v6, v7, v8

    :goto_1c
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    aget v10, v7, v8

    mul-float/2addr v6, v10

    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v10, v7, v9

    mul-float/2addr v8, v10

    add-float/2addr v8, v6

    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v10, v6

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v10, v12

    const v8, 0x3c23d70a    # 0.01f

    if-gez v6, :cond_44

    const/4 v6, 0x0

    aput v8, v7, v6

    aput v8, v7, v9

    goto :goto_1d

    :cond_44
    const/4 v6, 0x0

    :goto_1d
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_45

    aget v0, v7, v6

    div-float/2addr v2, v0

    goto :goto_1e

    :cond_45
    aget v2, v7, v9

    div-float v2, v0, v2

    :goto_1e
    add-float/2addr v5, v2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_46

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_46
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v13, 0x7

    if-ne v2, v13, :cond_47

    const v2, 0x3f7d70a4    # 0.99f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_47
    iget v2, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v5, v0, v2

    if-eqz v5, :cond_4e

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_48

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v11

    if-nez v2, :cond_49

    :cond_48
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger()V

    :cond_49
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4a

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_4a
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_1f

    :cond_4b
    const/4 v0, 0x0

    :goto_1f
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    goto :goto_20

    :cond_4c
    const/4 v2, 0x0

    :goto_20
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4d

    const/4 v4, 0x0

    aget v2, v7, v4

    div-float/2addr v0, v2

    goto :goto_21

    :cond_4d
    const/4 v0, 0x1

    aget v4, v7, v0

    div-float v0, v2, v4

    :goto_21
    iput v0, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_22

    :cond_4e
    const/4 v5, 0x0

    iput v5, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    goto/16 :goto_2a

    :cond_4f
    const/4 v0, 0x0

    const/4 v5, 0x6

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x7

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_50

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_50
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_23

    :cond_51
    const/4 v0, 0x0

    :goto_23
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    goto :goto_24

    :cond_52
    const/4 v2, 0x0

    :goto_24
    iget v4, v14, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v8, -0x1

    if-eq v9, v8, :cond_53

    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move-object v8, v14

    move-object/from16 v19, v10

    move v10, v4

    move/from16 v24, v11

    move v11, v12

    move v12, v15

    move v15, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_25

    :cond_53
    move/from16 v24, v11

    move v15, v13

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v9, v8

    const/4 v10, 0x1

    aput v9, v7, v10

    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v7, v9

    :goto_25
    iget v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    aget v9, v7, v9

    aget v7, v7, v10

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_54

    div-float/2addr v0, v9

    goto :goto_26

    :cond_54
    div-float v0, v2, v7

    :goto_26
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_55

    div-float v2, v0, v23

    add-float/2addr v2, v4

    :goto_27
    const/4 v7, 0x0

    goto :goto_28

    :cond_55
    move v2, v4

    goto :goto_27

    :goto_28
    cmpl-float v8, v2, v7

    if-eqz v8, :cond_5c

    cmpl-float v7, v2, v24

    if-eqz v7, :cond_5c

    iget v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5c

    float-to-double v8, v2

    cmpg-double v2, v8, v21

    if-gez v2, :cond_56

    const/4 v2, 0x0

    goto :goto_29

    :cond_56
    move/from16 v2, v24

    :goto_29
    if-ne v7, v5, :cond_58

    add-float v2, v4, v0

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_57

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_57
    move/from16 v2, v24

    :cond_58
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    if-ne v5, v15, :cond_5a

    add-float v2, v4, v0

    cmpl-float v2, v2, v24

    if-lez v2, :cond_59

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_59
    const/4 v2, 0x0

    :cond_5a
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    invoke-virtual {v14, v2, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_5b

    cmpg-float v0, v24, v4

    if-gtz v0, :cond_60

    :cond_5b
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2a

    :cond_5c
    const/4 v0, 0x0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_5d

    cmpg-float v0, v24, v2

    if-gtz v0, :cond_60

    :cond_5d
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2a

    :cond_5e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    goto :goto_2a

    :cond_5f
    move-object/from16 v33, v2

    :cond_60
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    move-object/from16 v2, v33

    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    if-eqz v0, :cond_62

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->tracker:Landroid/view/VelocityTracker;

    goto :goto_2b

    :cond_61
    const/4 v1, 0x0

    :goto_2b
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_63

    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    goto :goto_2c

    :cond_62
    move-object/from16 v0, p0

    :cond_63
    :goto_2c
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_64

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    return v0

    :cond_64
    const/4 v0, 0x1

    return v0

    :cond_65
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final parseLayoutDescription(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    return-void
.end method

.method public final requestLayout()V
    .locals 4

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_2

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    return-void

    :cond_3
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-gtz v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_5
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_8

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_8
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final setProgress(FF)V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    if-lez p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_0

    :cond_3
    cmpl-float p2, p1, v0

    if-eqz p2, :cond_5

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final setState(I)V
    .locals 6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v1, :cond_e

    int-to-float p0, v0

    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    const/4 v3, 0x0

    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-ne v2, p1, :cond_8

    if-ne p1, v0, :cond_0

    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    :goto_0
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-eq v2, v0, :cond_1

    iget-object v5, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-virtual {v2, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_9

    :cond_1
    :goto_1
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-virtual {v2, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_2
    iget p0, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-ne p0, v3, :cond_4

    goto/16 :goto_9

    :cond_4
    if-ne v3, v0, :cond_5

    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    iget-object p0, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_3
    if-ne v3, v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_4
    if-nez p0, :cond_7

    goto/16 :goto_9

    :cond_7
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_9

    :cond_8
    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    :goto_5
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-virtual {v5, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v0

    :goto_6
    if-ne v3, v0, :cond_b

    iget-object p0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_7

    :cond_b
    iget-object p0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_7
    if-ne v3, v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_8
    if-nez p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NO Constraint set found ! id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim =-1.0, -1.0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConstraintLayoutStates"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_9

    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public final setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 3

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setTransition(II)V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->startState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :cond_2
    return-void
.end method

.method public final setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v2, v1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    iput v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final touchAnimateTo(FFI)V
    .locals 15

    move-object v0, p0

    move/from16 v8, p1

    move/from16 v4, p2

    move/from16 v1, p3

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v5, :cond_2

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_0

    :cond_2
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    :goto_0
    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_8

    if-eq v1, v12, :cond_8

    const/4 v14, 0x4

    if-eq v1, v14, :cond_7

    const/4 v14, 0x5

    if-eq v1, v14, :cond_3

    if-eq v1, v11, :cond_8

    if-eq v1, v10, :cond_8

    goto/16 :goto_c

    :cond_3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    cmpl-float v3, v4, v9

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v3, :cond_4

    div-float v3, v4, v2

    mul-float v6, v4, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v6, v2

    add-float/2addr v6, v1

    cmpl-float v1, v6, v7

    if-lez v1, :cond_5

    goto :goto_1

    :cond_4
    neg-float v3, v4

    div-float/2addr v3, v2

    mul-float v6, v4, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, v6

    add-float/2addr v2, v1

    cmpg-float v1, v2, v9

    if-gez v1, :cond_5

    :goto_1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v3

    iput v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_c

    :cond_5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_6

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v3, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    move v7, v3

    goto :goto_2

    :cond_6
    move v7, v9

    :goto_2
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_c

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v3

    iput v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    goto/16 :goto_c

    :cond_8
    if-eq v1, v2, :cond_b

    if-ne v1, v10, :cond_9

    goto :goto_3

    :cond_9
    if-eq v1, v12, :cond_a

    if-ne v1, v11, :cond_c

    :cond_a
    move v8, v7

    goto :goto_4

    :cond_b
    :goto_3
    move v8, v9

    :cond_c
    :goto_4
    if-eqz v5, :cond_d

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_d

    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    goto :goto_5

    :cond_d
    move v1, v13

    :goto_5
    if-nez v1, :cond_f

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v7

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v3, :cond_e

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v3, :cond_e

    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    move v9, v3

    :cond_e
    move v3, v8

    move/from16 v4, p2

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    goto/16 :goto_b

    :cond_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    if-eqz v5, :cond_10

    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v3, :cond_10

    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    goto :goto_6

    :cond_10
    move v3, v9

    :goto_6
    if-eqz v5, :cond_11

    iget-object v4, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v4, :cond_11

    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    goto :goto_7

    :cond_11
    move v4, v9

    :goto_7
    if-eqz v5, :cond_12

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v6, :cond_12

    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    goto :goto_8

    :cond_12
    move v6, v9

    :goto_8
    if-eqz v5, :cond_13

    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v7, :cond_13

    iget v7, v7, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    goto :goto_9

    :cond_13
    move v7, v9

    :goto_9
    if-eqz v5, :cond_14

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v5, :cond_14

    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    goto :goto_a

    :cond_14
    move v5, v13

    :goto_a
    iget-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    if-nez v10, :cond_15

    new-instance v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    iput-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    iput v13, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    iput-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    :cond_15
    iget-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    iput-object v10, v1, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    float-to-double v11, v8

    iput-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    float-to-double v11, v6

    iput-wide v11, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    float-to-double v1, v4

    iput-wide v1, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    iput v3, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    iput v7, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    iput v5, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    iput v9, v10, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    :goto_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    :goto_c
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public final transitionToState(I)V
    .locals 13

    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->endState:I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v0, :cond_b

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    int-to-float v4, v2

    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    if-nez v0, :cond_2

    move v3, p1

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    iget v6, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    if-eqz v5, :cond_8

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v1

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v7, v4, v4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v5, v7, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne v3, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v7

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    iget v3, v5, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    goto :goto_2

    :cond_7
    move v3, v6

    goto :goto_2

    :cond_8
    :goto_1
    if-ne v6, v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/StateSet$Variant;

    iget v4, v4, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne v3, v4, :cond_a

    :goto_2
    if-eq v3, v2, :cond_b

    move p1, v3

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_c

    goto/16 :goto_d

    :cond_c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_d

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/16 :goto_d

    :cond_d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, p1, :cond_e

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto/16 :goto_d

    :cond_e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v0, v2, :cond_f

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    goto/16 :goto_d

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v6, :cond_10

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_3

    :cond_10
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    :goto_3
    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v0

    :goto_4
    if-ge v6, v3, :cond_11

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v7, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_14

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v7, :cond_12

    goto/16 :goto_7

    :cond_12
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v4, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v4, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_13

    move v8, v4

    goto :goto_6

    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    :goto_6
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    iput v6, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move p1, v0

    :goto_8
    if-ge p1, v3, :cond_16

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    if-nez v1, :cond_15

    goto :goto_9

    :cond_15
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->setup()V

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_17

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    goto :goto_a

    :cond_17
    move p1, v4

    :goto_a
    cmpl-float v1, p1, v4

    if-eqz v1, :cond_19

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v6, -0x800001

    move v7, v0

    :goto_b
    if-ge v7, v3, :cond_18

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_18
    :goto_c
    if-ge v0, v3, :cond_19

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float v10, v5, p1

    div-float v10, v5, v10

    iput v10, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    add-float/2addr v9, v8

    sub-float/2addr v9, v1

    mul-float/2addr v9, p1

    sub-float v8, v6, v1

    div-float/2addr v9, v8

    sub-float v8, p1, v9

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_d
    return-void
.end method

.method public final updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method
