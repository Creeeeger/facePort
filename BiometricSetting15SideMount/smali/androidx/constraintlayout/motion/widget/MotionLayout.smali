.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

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

.field public mDecoratorsHelpers:Ljava/util/ArrayList;

.field public mDelayedApply:Z

.field public mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field public mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field public mEndState:I

.field public mEndWrapHeight:I

.field public mEndWrapWidth:I

.field public final mFrameArrayList:Ljava/util/HashMap;

.field public mFrames:I

.field public mHeightMeasureMode:I

.field public mInLayout:Z

.field public mInTransition:Z

.field public mInteractionEnabled:Z

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

.field public mListenerPosition:F

.field public mListenerState:I

.field public mMeasureDuringTransition:Z

.field public final mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field public mNeedsFireTransitionCompleted:Z

.field public mOnComplete:Ljava/lang/Runnable;

.field public mOnHideHelpers:Ljava/util/ArrayList;

.field public mOnShowHelpers:Ljava/util/ArrayList;

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

.field public mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field public mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mTransitionPosition:F

.field public mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public mUndergoingMotion:Z

.field public mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 15
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 16
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 18
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 19
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 20
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 21
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 32
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 33
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 34
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 40
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 41
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 54
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 57
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 62
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 63
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 64
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 65
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 66
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 67
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 69
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v2, -0x1

    .line 74
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 78
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 79
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 81
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 85
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 86
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 87
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    .line 95
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 98
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 100
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 103
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 105
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 106
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 107
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 108
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 109
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 110
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 111
    new-instance v1, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 112
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 113
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 114
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 115
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 118
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    const-wide/16 v1, -0x1

    .line 120
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 121
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 122
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 123
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 124
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 125
    new-instance p3, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 126
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 128
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 129
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 130
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 131
    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 132
    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 133
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 134
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 135
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    add-int/2addr v1, v3

    .line 28
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public final animateTo(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 7
    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 9
    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 19
    .line 20
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 21
    .line 22
    cmpl-float v2, v1, p1

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 29
    .line 30
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 38
    .line 39
    div-float/2addr p1, v0

    .line 40
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 41
    .line 42
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    .line 58
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 68
    .line 69
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 70
    .line 71
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 68
    .line 69
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 88
    .line 89
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    and-int/2addr v3, v5

    .line 101
    const/high16 v6, 0x41300000    # 11.0f

    .line 102
    .line 103
    const/high16 v7, 0x41200000    # 10.0f

    .line 104
    .line 105
    if-ne v3, v5, :cond_8

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_8

    .line 112
    .line 113
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 114
    .line 115
    add-int/2addr v3, v5

    .line 116
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 123
    .line 124
    const-wide/16 v12, -0x1

    .line 125
    .line 126
    cmp-long v3, v10, v12

    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    sub-long v10, v8, v10

    .line 131
    .line 132
    const-wide/32 v12, 0xbebc200

    .line 133
    .line 134
    .line 135
    cmp-long v3, v10, v12

    .line 136
    .line 137
    if-lez v3, :cond_6

    .line 138
    .line 139
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 140
    .line 141
    int-to-float v3, v3

    .line 142
    long-to-float v10, v10

    .line 143
    const v11, 0x3089705f    # 1.0E-9f

    .line 144
    .line 145
    .line 146
    mul-float/2addr v10, v11

    .line 147
    div-float/2addr v3, v10

    .line 148
    const/high16 v10, 0x42c80000    # 100.0f

    .line 149
    .line 150
    mul-float/2addr v3, v10

    .line 151
    float-to-int v3, v3

    .line 152
    int-to-float v3, v3

    .line 153
    div-float/2addr v3, v10

    .line 154
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 155
    .line 156
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 157
    .line 158
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 162
    .line 163
    :cond_6
    :goto_3
    new-instance v3, Landroid/graphics/Paint;

    .line 164
    .line 165
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .line 167
    .line 168
    const/high16 v8, 0x42280000    # 42.0f

    .line 169
    .line 170
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 178
    .line 179
    mul-float/2addr v8, v9

    .line 180
    float-to-int v8, v8

    .line 181
    int-to-float v8, v8

    .line 182
    div-float/2addr v8, v7

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 189
    .line 190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v10, " fps "

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 199
    .line 200
    invoke-static {v10, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v10, " -> "

    .line 208
    .line 209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 225
    .line 226
    invoke-static {v9, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v9, " (progress: "

    .line 234
    .line 235
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v8, " ) state="

    .line 242
    .line 243
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 247
    .line 248
    const/4 v9, -0x1

    .line 249
    if-ne v8, v9, :cond_7

    .line 250
    .line 251
    const-string v8, "undefined"

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_7
    invoke-static {v8, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    const/high16 v9, -0x1000000

    .line 266
    .line 267
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    add-int/lit8 v9, v9, -0x1d

    .line 275
    .line 276
    int-to-float v9, v9

    .line 277
    invoke-virtual {v1, v8, v6, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    .line 279
    .line 280
    const v9, -0x77ff78

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    add-int/lit8 v9, v9, -0x1e

    .line 291
    .line 292
    int-to-float v9, v9

    .line 293
    invoke-virtual {v1, v8, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    .line 295
    .line 296
    :cond_8
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 297
    .line 298
    if-le v3, v5, :cond_30

    .line 299
    .line 300
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 301
    .line 302
    if-nez v3, :cond_9

    .line 303
    .line 304
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 305
    .line 306
    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 307
    .line 308
    .line 309
    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 310
    .line 311
    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 312
    .line 313
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 314
    .line 315
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 316
    .line 317
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    if-eqz v8, :cond_30

    .line 327
    .line 328
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-nez v11, :cond_a

    .line 333
    .line 334
    goto/16 :goto_1b

    .line 335
    .line 336
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 337
    .line 338
    .line 339
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 340
    .line 341
    invoke-virtual {v11}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    const/4 v13, 0x2

    .line 346
    if-nez v12, :cond_b

    .line 347
    .line 348
    and-int/lit8 v12, v10, 0x1

    .line 349
    .line 350
    if-ne v12, v13, :cond_b

    .line 351
    .line 352
    new-instance v12, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    iget v15, v11, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 366
    .line 367
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v14, ":"

    .line 375
    .line 376
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 391
    .line 392
    .line 393
    move-result v14

    .line 394
    add-int/lit8 v14, v14, -0x1e

    .line 395
    .line 396
    int-to-float v14, v14

    .line 397
    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 398
    .line 399
    invoke-virtual {v1, v12, v7, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    add-int/lit8 v7, v7, -0x1d

    .line 407
    .line 408
    int-to-float v7, v7

    .line 409
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 410
    .line 411
    invoke-virtual {v1, v12, v6, v7, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    .line 413
    .line 414
    :cond_b
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-eqz v7, :cond_2f

    .line 427
    .line 428
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 433
    .line 434
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 435
    .line 436
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 437
    .line 438
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v12

    .line 448
    if-eqz v12, :cond_c

    .line 449
    .line 450
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v12

    .line 454
    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 455
    .line 456
    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 457
    .line 458
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    goto :goto_6

    .line 463
    :cond_c
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 464
    .line 465
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 466
    .line 467
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    if-lez v10, :cond_d

    .line 472
    .line 473
    if-nez v8, :cond_d

    .line 474
    .line 475
    move v8, v5

    .line 476
    :cond_d
    if-nez v8, :cond_e

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_e
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 480
    .line 481
    if-eqz v11, :cond_11

    .line 482
    .line 483
    iget-object v12, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 484
    .line 485
    aget-object v12, v12, v2

    .line 486
    .line 487
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 488
    .line 489
    .line 490
    move-result-object v12

    .line 491
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 492
    .line 493
    if-eqz v14, :cond_f

    .line 494
    .line 495
    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object v15

    .line 501
    move/from16 v16, v2

    .line 502
    .line 503
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v17

    .line 507
    if-eqz v17, :cond_f

    .line 508
    .line 509
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v17

    .line 513
    move-object/from16 v13, v17

    .line 514
    .line 515
    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 516
    .line 517
    add-int/lit8 v17, v16, 0x1

    .line 518
    .line 519
    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 520
    .line 521
    aput v13, v14, v16

    .line 522
    .line 523
    move/from16 v16, v17

    .line 524
    .line 525
    const/4 v13, 0x2

    .line 526
    goto :goto_7

    .line 527
    :cond_f
    move v13, v2

    .line 528
    move/from16 v21, v13

    .line 529
    .line 530
    :goto_8
    array-length v14, v12

    .line 531
    if-ge v13, v14, :cond_10

    .line 532
    .line 533
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 534
    .line 535
    aget-object v14, v14, v2

    .line 536
    .line 537
    aget-wide v4, v12, v13

    .line 538
    .line 539
    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 540
    .line 541
    invoke-virtual {v14, v4, v5, v15}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 542
    .line 543
    .line 544
    aget-wide v15, v12, v13

    .line 545
    .line 546
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 547
    .line 548
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 549
    .line 550
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 551
    .line 552
    move-object/from16 v17, v4

    .line 553
    .line 554
    move-object/from16 v18, v5

    .line 555
    .line 556
    move-object/from16 v19, v11

    .line 557
    .line 558
    move/from16 v20, v21

    .line 559
    .line 560
    invoke-virtual/range {v14 .. v20}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 561
    .line 562
    .line 563
    add-int/lit8 v21, v21, 0x2

    .line 564
    .line 565
    add-int/lit8 v13, v13, 0x1

    .line 566
    .line 567
    const/4 v4, 0x0

    .line 568
    const/4 v5, 0x1

    .line 569
    goto :goto_8

    .line 570
    :cond_10
    div-int/lit8 v21, v21, 0x2

    .line 571
    .line 572
    move/from16 v4, v21

    .line 573
    .line 574
    goto :goto_9

    .line 575
    :cond_11
    move v4, v2

    .line 576
    :goto_9
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 577
    .line 578
    const/4 v4, 0x1

    .line 579
    if-lt v8, v4, :cond_2e

    .line 580
    .line 581
    div-int/lit8 v4, v9, 0x10

    .line 582
    .line 583
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 584
    .line 585
    if-eqz v5, :cond_12

    .line 586
    .line 587
    array-length v5, v5

    .line 588
    mul-int/lit8 v11, v4, 0x2

    .line 589
    .line 590
    if-eq v5, v11, :cond_13

    .line 591
    .line 592
    :cond_12
    mul-int/lit8 v5, v4, 0x2

    .line 593
    .line 594
    new-array v5, v5, [F

    .line 595
    .line 596
    iput-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 597
    .line 598
    new-instance v5, Landroid/graphics/Path;

    .line 599
    .line 600
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 601
    .line 602
    .line 603
    iput-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 604
    .line 605
    :cond_13
    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 606
    .line 607
    int-to-float v11, v5

    .line 608
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 609
    .line 610
    .line 611
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 612
    .line 613
    const/high16 v12, 0x77000000

    .line 614
    .line 615
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    .line 617
    .line 618
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 619
    .line 620
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    .line 622
    .line 623
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 624
    .line 625
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    .line 627
    .line 628
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 629
    .line 630
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    .line 632
    .line 633
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 634
    .line 635
    add-int/lit8 v12, v4, -0x1

    .line 636
    .line 637
    int-to-float v12, v12

    .line 638
    const/high16 v14, 0x3f800000    # 1.0f

    .line 639
    .line 640
    div-float v12, v14, v12

    .line 641
    .line 642
    iget-object v13, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 643
    .line 644
    const-string v15, "translationX"

    .line 645
    .line 646
    if-nez v13, :cond_14

    .line 647
    .line 648
    const/4 v13, 0x0

    .line 649
    goto :goto_a

    .line 650
    :cond_14
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v13

    .line 654
    check-cast v13, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 655
    .line 656
    :goto_a
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 657
    .line 658
    const-string v14, "translationY"

    .line 659
    .line 660
    if-nez v2, :cond_15

    .line 661
    .line 662
    move-object/from16 v21, v6

    .line 663
    .line 664
    const/4 v2, 0x0

    .line 665
    goto :goto_b

    .line 666
    :cond_15
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 671
    .line 672
    move-object/from16 v21, v6

    .line 673
    .line 674
    :goto_b
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 675
    .line 676
    if-nez v6, :cond_16

    .line 677
    .line 678
    const/4 v6, 0x0

    .line 679
    goto :goto_c

    .line 680
    :cond_16
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 685
    .line 686
    :goto_c
    iget-object v15, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 687
    .line 688
    if-nez v15, :cond_17

    .line 689
    .line 690
    const/4 v14, 0x0

    .line 691
    goto :goto_d

    .line 692
    :cond_17
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v14

    .line 696
    check-cast v14, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 697
    .line 698
    :goto_d
    move/from16 v22, v9

    .line 699
    .line 700
    const/4 v15, 0x0

    .line 701
    :goto_e
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 702
    .line 703
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 704
    .line 705
    move/from16 v23, v10

    .line 706
    .line 707
    if-ge v15, v4, :cond_25

    .line 708
    .line 709
    int-to-float v10, v15

    .line 710
    mul-float/2addr v10, v12

    .line 711
    move/from16 v24, v4

    .line 712
    .line 713
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 714
    .line 715
    const/high16 v16, 0x3f800000    # 1.0f

    .line 716
    .line 717
    cmpl-float v19, v4, v16

    .line 718
    .line 719
    move/from16 v25, v12

    .line 720
    .line 721
    if-eqz v19, :cond_19

    .line 722
    .line 723
    iget v12, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 724
    .line 725
    cmpg-float v19, v10, v12

    .line 726
    .line 727
    if-gez v19, :cond_18

    .line 728
    .line 729
    const/4 v10, 0x0

    .line 730
    :cond_18
    cmpl-float v19, v10, v12

    .line 731
    .line 732
    if-lez v19, :cond_19

    .line 733
    .line 734
    move-object/from16 v19, v13

    .line 735
    .line 736
    move-object/from16 v26, v14

    .line 737
    .line 738
    float-to-double v13, v10

    .line 739
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    .line 740
    .line 741
    cmpg-double v13, v13, v27

    .line 742
    .line 743
    if-gez v13, :cond_1a

    .line 744
    .line 745
    sub-float/2addr v10, v12

    .line 746
    mul-float/2addr v10, v4

    .line 747
    const/high16 v4, 0x3f800000    # 1.0f

    .line 748
    .line 749
    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    .line 750
    .line 751
    .line 752
    move-result v10

    .line 753
    goto :goto_f

    .line 754
    :cond_19
    move-object/from16 v19, v13

    .line 755
    .line 756
    move-object/from16 v26, v14

    .line 757
    .line 758
    :cond_1a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 759
    .line 760
    :goto_f
    float-to-double v12, v10

    .line 761
    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 762
    .line 763
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 766
    .line 767
    .line 768
    move-result-object v14

    .line 769
    const/16 v18, 0x0

    .line 770
    .line 771
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 772
    .line 773
    .line 774
    move-result v16

    .line 775
    if-eqz v16, :cond_1d

    .line 776
    .line 777
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v16

    .line 781
    move-object/from16 v4, v16

    .line 782
    .line 783
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 784
    .line 785
    move-wide/from16 v28, v12

    .line 786
    .line 787
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 788
    .line 789
    if-eqz v12, :cond_1c

    .line 790
    .line 791
    iget v13, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 792
    .line 793
    cmpg-float v16, v13, v10

    .line 794
    .line 795
    if-gez v16, :cond_1b

    .line 796
    .line 797
    move-object v9, v12

    .line 798
    move/from16 v18, v13

    .line 799
    .line 800
    goto :goto_11

    .line 801
    :cond_1b
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 802
    .line 803
    .line 804
    move-result v12

    .line 805
    if-eqz v12, :cond_1c

    .line 806
    .line 807
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 808
    .line 809
    move/from16 v17, v4

    .line 810
    .line 811
    :cond_1c
    :goto_11
    move-wide/from16 v12, v28

    .line 812
    .line 813
    const/high16 v4, 0x3f800000    # 1.0f

    .line 814
    .line 815
    goto :goto_10

    .line 816
    :cond_1d
    move-wide/from16 v28, v12

    .line 817
    .line 818
    if-eqz v9, :cond_1f

    .line 819
    .line 820
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 821
    .line 822
    .line 823
    move-result v4

    .line 824
    if-eqz v4, :cond_1e

    .line 825
    .line 826
    const/high16 v16, 0x3f800000    # 1.0f

    .line 827
    .line 828
    goto :goto_12

    .line 829
    :cond_1e
    move/from16 v16, v17

    .line 830
    .line 831
    :goto_12
    sub-float v4, v10, v18

    .line 832
    .line 833
    sub-float v16, v16, v18

    .line 834
    .line 835
    div-float v4, v4, v16

    .line 836
    .line 837
    float-to-double v12, v4

    .line 838
    invoke-virtual {v9, v12, v13}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 839
    .line 840
    .line 841
    move-result-wide v12

    .line 842
    double-to-float v4, v12

    .line 843
    mul-float v4, v4, v16

    .line 844
    .line 845
    add-float v4, v4, v18

    .line 846
    .line 847
    float-to-double v12, v4

    .line 848
    goto :goto_13

    .line 849
    :cond_1f
    move-wide/from16 v12, v28

    .line 850
    .line 851
    :goto_13
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 852
    .line 853
    const/4 v9, 0x0

    .line 854
    aget-object v4, v4, v9

    .line 855
    .line 856
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 857
    .line 858
    invoke-virtual {v4, v12, v13, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 859
    .line 860
    .line 861
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 862
    .line 863
    if-eqz v4, :cond_20

    .line 864
    .line 865
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 866
    .line 867
    array-length v14, v9

    .line 868
    if-lez v14, :cond_20

    .line 869
    .line 870
    invoke-virtual {v4, v12, v13, v9}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 871
    .line 872
    .line 873
    :cond_20
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 874
    .line 875
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 876
    .line 877
    mul-int/lit8 v28, v15, 0x2

    .line 878
    .line 879
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 880
    .line 881
    move-wide/from16 v16, v12

    .line 882
    .line 883
    move-object/from16 v12, v19

    .line 884
    .line 885
    move-object v13, v14

    .line 886
    move/from16 v27, v15

    .line 887
    .line 888
    move-object/from16 v0, v26

    .line 889
    .line 890
    const/high16 v26, 0x3f800000    # 1.0f

    .line 891
    .line 892
    move-wide/from16 v14, v16

    .line 893
    .line 894
    move-object/from16 v16, v4

    .line 895
    .line 896
    move-object/from16 v17, v9

    .line 897
    .line 898
    move-object/from16 v18, v11

    .line 899
    .line 900
    move/from16 v19, v28

    .line 901
    .line 902
    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 903
    .line 904
    .line 905
    if-eqz v6, :cond_21

    .line 906
    .line 907
    aget v4, v11, v28

    .line 908
    .line 909
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    .line 910
    .line 911
    .line 912
    move-result v9

    .line 913
    add-float/2addr v9, v4

    .line 914
    aput v9, v11, v28

    .line 915
    .line 916
    goto :goto_14

    .line 917
    :cond_21
    if-eqz v12, :cond_22

    .line 918
    .line 919
    aget v4, v11, v28

    .line 920
    .line 921
    invoke-virtual {v12, v10}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 922
    .line 923
    .line 924
    move-result v9

    .line 925
    add-float/2addr v9, v4

    .line 926
    aput v9, v11, v28

    .line 927
    .line 928
    :cond_22
    :goto_14
    if-eqz v0, :cond_23

    .line 929
    .line 930
    add-int/lit8 v28, v28, 0x1

    .line 931
    .line 932
    aget v4, v11, v28

    .line 933
    .line 934
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    .line 935
    .line 936
    .line 937
    move-result v9

    .line 938
    add-float/2addr v9, v4

    .line 939
    aput v9, v11, v28

    .line 940
    .line 941
    goto :goto_15

    .line 942
    :cond_23
    if-eqz v2, :cond_24

    .line 943
    .line 944
    add-int/lit8 v28, v28, 0x1

    .line 945
    .line 946
    aget v4, v11, v28

    .line 947
    .line 948
    invoke-virtual {v2, v10}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 949
    .line 950
    .line 951
    move-result v9

    .line 952
    add-float/2addr v9, v4

    .line 953
    aput v9, v11, v28

    .line 954
    .line 955
    :cond_24
    :goto_15
    add-int/lit8 v15, v27, 0x1

    .line 956
    .line 957
    move-object v14, v0

    .line 958
    move-object v13, v12

    .line 959
    move/from16 v10, v23

    .line 960
    .line 961
    move/from16 v4, v24

    .line 962
    .line 963
    move/from16 v12, v25

    .line 964
    .line 965
    move-object/from16 v0, p0

    .line 966
    .line 967
    goto/16 :goto_e

    .line 968
    .line 969
    :cond_25
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 970
    .line 971
    invoke-virtual {v3, v1, v8, v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    .line 972
    .line 973
    .line 974
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 975
    .line 976
    const/16 v2, -0x55cd

    .line 977
    .line 978
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 979
    .line 980
    .line 981
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 982
    .line 983
    const v2, -0x1f8a66

    .line 984
    .line 985
    .line 986
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 987
    .line 988
    .line 989
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 990
    .line 991
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 992
    .line 993
    .line 994
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 995
    .line 996
    const v2, -0xcc5600

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1000
    .line 1001
    .line 1002
    neg-int v0, v5

    .line 1003
    int-to-float v0, v0

    .line 1004
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1005
    .line 1006
    .line 1007
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 1008
    .line 1009
    invoke-virtual {v3, v1, v8, v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V

    .line 1010
    .line 1011
    .line 1012
    const/4 v0, 0x5

    .line 1013
    if-ne v8, v0, :cond_2d

    .line 1014
    .line 1015
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1016
    .line 1017
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1018
    .line 1019
    .line 1020
    const/4 v2, 0x0

    .line 1021
    :goto_16
    const/16 v5, 0x32

    .line 1022
    .line 1023
    if-gt v2, v5, :cond_2c

    .line 1024
    .line 1025
    int-to-float v6, v2

    .line 1026
    int-to-float v5, v5

    .line 1027
    div-float/2addr v6, v5

    .line 1028
    const/4 v5, 0x0

    .line 1029
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 1030
    .line 1031
    .line 1032
    move-result v6

    .line 1033
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1034
    .line 1035
    const/4 v10, 0x0

    .line 1036
    aget-object v8, v8, v10

    .line 1037
    .line 1038
    float-to-double v10, v6

    .line 1039
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 1040
    .line 1041
    invoke-virtual {v8, v10, v11, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 1042
    .line 1043
    .line 1044
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 1045
    .line 1046
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 1047
    .line 1048
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 1049
    .line 1050
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 1051
    .line 1052
    iget v12, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 1053
    .line 1054
    iget v13, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 1055
    .line 1056
    move v14, v13

    .line 1057
    move v13, v12

    .line 1058
    move v12, v11

    .line 1059
    move v11, v10

    .line 1060
    const/4 v10, 0x0

    .line 1061
    :goto_17
    array-length v15, v6

    .line 1062
    const/4 v0, 0x3

    .line 1063
    if-ge v10, v15, :cond_2a

    .line 1064
    .line 1065
    aget-wide v4, v8, v10

    .line 1066
    .line 1067
    double-to-float v4, v4

    .line 1068
    aget v5, v6, v10

    .line 1069
    .line 1070
    const/4 v15, 0x1

    .line 1071
    if-eq v5, v15, :cond_29

    .line 1072
    .line 1073
    const/4 v15, 0x2

    .line 1074
    if-eq v5, v15, :cond_28

    .line 1075
    .line 1076
    if-eq v5, v0, :cond_27

    .line 1077
    .line 1078
    const/4 v0, 0x4

    .line 1079
    if-eq v5, v0, :cond_26

    .line 1080
    .line 1081
    goto :goto_18

    .line 1082
    :cond_26
    move v14, v4

    .line 1083
    goto :goto_18

    .line 1084
    :cond_27
    move v13, v4

    .line 1085
    goto :goto_18

    .line 1086
    :cond_28
    move v12, v4

    .line 1087
    goto :goto_18

    .line 1088
    :cond_29
    move v11, v4

    .line 1089
    :goto_18
    add-int/lit8 v10, v10, 0x1

    .line 1090
    .line 1091
    const/4 v0, 0x5

    .line 1092
    const/4 v5, 0x0

    .line 1093
    goto :goto_17

    .line 1094
    :cond_2a
    iget-object v4, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1095
    .line 1096
    if-eqz v4, :cond_2b

    .line 1097
    .line 1098
    const/4 v4, 0x0

    .line 1099
    float-to-double v5, v4

    .line 1100
    float-to-double v10, v11

    .line 1101
    float-to-double v0, v12

    .line 1102
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v25

    .line 1106
    mul-double v25, v25, v10

    .line 1107
    .line 1108
    add-double v25, v25, v5

    .line 1109
    .line 1110
    const/high16 v8, 0x40000000    # 2.0f

    .line 1111
    .line 1112
    div-float v12, v13, v8

    .line 1113
    .line 1114
    move-object/from16 v24, v9

    .line 1115
    .line 1116
    float-to-double v8, v12

    .line 1117
    sub-double v8, v25, v8

    .line 1118
    .line 1119
    double-to-float v8, v8

    .line 1120
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 1121
    .line 1122
    .line 1123
    move-result-wide v0

    .line 1124
    mul-double/2addr v0, v10

    .line 1125
    sub-double/2addr v5, v0

    .line 1126
    const/high16 v0, 0x40000000    # 2.0f

    .line 1127
    .line 1128
    div-float v0, v14, v0

    .line 1129
    .line 1130
    float-to-double v0, v0

    .line 1131
    sub-double/2addr v5, v0

    .line 1132
    double-to-float v12, v5

    .line 1133
    move v11, v8

    .line 1134
    goto :goto_19

    .line 1135
    :cond_2b
    move-object/from16 v24, v9

    .line 1136
    .line 1137
    :goto_19
    add-float/2addr v13, v11

    .line 1138
    add-float/2addr v14, v12

    .line 1139
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 1140
    .line 1141
    .line 1142
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 1143
    .line 1144
    .line 1145
    const/4 v0, 0x0

    .line 1146
    add-float/2addr v11, v0

    .line 1147
    add-float/2addr v12, v0

    .line 1148
    add-float/2addr v13, v0

    .line 1149
    add-float/2addr v14, v0

    .line 1150
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    .line 1151
    .line 1152
    const/4 v5, 0x0

    .line 1153
    aput v11, v1, v5

    .line 1154
    .line 1155
    const/4 v6, 0x1

    .line 1156
    aput v12, v1, v6

    .line 1157
    .line 1158
    const/4 v8, 0x2

    .line 1159
    aput v13, v1, v8

    .line 1160
    .line 1161
    const/4 v4, 0x3

    .line 1162
    aput v12, v1, v4

    .line 1163
    .line 1164
    const/4 v8, 0x4

    .line 1165
    aput v13, v1, v8

    .line 1166
    .line 1167
    const/4 v8, 0x5

    .line 1168
    aput v14, v1, v8

    .line 1169
    .line 1170
    const/4 v8, 0x6

    .line 1171
    aput v11, v1, v8

    .line 1172
    .line 1173
    const/4 v9, 0x7

    .line 1174
    aput v14, v1, v9

    .line 1175
    .line 1176
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1177
    .line 1178
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1182
    .line 1183
    const/4 v11, 0x2

    .line 1184
    aget v12, v1, v11

    .line 1185
    .line 1186
    const/4 v4, 0x3

    .line 1187
    aget v4, v1, v4

    .line 1188
    .line 1189
    invoke-virtual {v10, v12, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1190
    .line 1191
    .line 1192
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1193
    .line 1194
    const/4 v10, 0x4

    .line 1195
    aget v10, v1, v10

    .line 1196
    .line 1197
    const/4 v12, 0x5

    .line 1198
    aget v13, v1, v12

    .line 1199
    .line 1200
    invoke-virtual {v4, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1204
    .line 1205
    aget v8, v1, v8

    .line 1206
    .line 1207
    aget v1, v1, v9

    .line 1208
    .line 1209
    invoke-virtual {v4, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1210
    .line 1211
    .line 1212
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1213
    .line 1214
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 1215
    .line 1216
    .line 1217
    add-int/lit8 v2, v2, 0x1

    .line 1218
    .line 1219
    move-object/from16 v1, p1

    .line 1220
    .line 1221
    move v0, v12

    .line 1222
    move-object/from16 v9, v24

    .line 1223
    .line 1224
    goto/16 :goto_16

    .line 1225
    .line 1226
    :cond_2c
    const/4 v5, 0x0

    .line 1227
    const/4 v6, 0x1

    .line 1228
    const/4 v11, 0x2

    .line 1229
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 1230
    .line 1231
    const/high16 v1, 0x44000000    # 512.0f

    .line 1232
    .line 1233
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1234
    .line 1235
    .line 1236
    move-object/from16 v0, p1

    .line 1237
    .line 1238
    const/high16 v1, 0x40000000    # 2.0f

    .line 1239
    .line 1240
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1241
    .line 1242
    .line 1243
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1244
    .line 1245
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 1246
    .line 1247
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1248
    .line 1249
    .line 1250
    const/high16 v1, -0x40000000    # -2.0f

    .line 1251
    .line 1252
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1253
    .line 1254
    .line 1255
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 1256
    .line 1257
    const/high16 v2, -0x10000

    .line 1258
    .line 1259
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1260
    .line 1261
    .line 1262
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 1263
    .line 1264
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 1265
    .line 1266
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_1a

    .line 1270
    :cond_2d
    move-object v0, v1

    .line 1271
    const/4 v5, 0x0

    .line 1272
    const/4 v6, 0x1

    .line 1273
    const/4 v11, 0x2

    .line 1274
    goto :goto_1a

    .line 1275
    :cond_2e
    move-object v0, v1

    .line 1276
    move v5, v2

    .line 1277
    move-object/from16 v21, v6

    .line 1278
    .line 1279
    move/from16 v22, v9

    .line 1280
    .line 1281
    move/from16 v23, v10

    .line 1282
    .line 1283
    const/4 v11, 0x2

    .line 1284
    move v6, v4

    .line 1285
    :goto_1a
    move-object v1, v0

    .line 1286
    move v2, v5

    .line 1287
    move v5, v6

    .line 1288
    move v13, v11

    .line 1289
    move-object/from16 v6, v21

    .line 1290
    .line 1291
    move/from16 v9, v22

    .line 1292
    .line 1293
    move/from16 v10, v23

    .line 1294
    .line 1295
    const/4 v4, 0x0

    .line 1296
    move-object/from16 v0, p0

    .line 1297
    .line 1298
    goto/16 :goto_5

    .line 1299
    .line 1300
    :cond_2f
    move-object v0, v1

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1302
    .line 1303
    .line 1304
    :cond_30
    :goto_1b
    move-object/from16 v0, p0

    .line 1305
    .line 1306
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 1307
    .line 1308
    if-eqz v0, :cond_31

    .line 1309
    .line 1310
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    if-eqz v1, :cond_31

    .line 1319
    .line 1320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 1325
    .line 1326
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    .line 1328
    .line 1329
    goto :goto_1c

    .line 1330
    :cond_31
    return-void
.end method

.method public final endTrigger(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 24
    .line 25
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "button"

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    move v4, v1

    .line 42
    :goto_1
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 43
    .line 44
    array-length v6, v5

    .line 45
    if-ge v4, v6, :cond_1

    .line 46
    .line 47
    aget-object v5, v5, v4

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/high16 v6, -0x3d380000    # -100.0f

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    const/high16 v6, 0x42c80000    # 100.0f

    .line 55
    .line 56
    :goto_2
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v5, v7, v6}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(Landroid/view/View;F)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method

.method public final evaluate(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 16
    .line 17
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    cmpl-float v3, v1, v2

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-lez v3, :cond_1

    .line 26
    .line 27
    cmpg-float v3, v1, v5

    .line 28
    .line 29
    if-gez v3, :cond_1

    .line 30
    .line 31
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 32
    .line 33
    :cond_1
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 40
    .line 41
    if-eqz v3, :cond_28

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 46
    .line 47
    cmpl-float v3, v3, v1

    .line 48
    .line 49
    if-eqz v3, :cond_28

    .line 50
    .line 51
    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 52
    .line 53
    sub-float/2addr v3, v1

    .line 54
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 63
    .line 64
    instance-of v10, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 65
    .line 66
    const v11, 0x3089705f    # 1.0E-9f

    .line 67
    .line 68
    .line 69
    if-nez v10, :cond_3

    .line 70
    .line 71
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 72
    .line 73
    sub-long v12, v8, v12

    .line 74
    .line 75
    long-to-float v10, v12

    .line 76
    mul-float/2addr v10, v1

    .line 77
    mul-float/2addr v10, v11

    .line 78
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 79
    .line 80
    div-float/2addr v10, v12

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v10, v2

    .line 83
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 84
    .line 85
    add-float/2addr v12, v10

    .line 86
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 87
    .line 88
    if-eqz v13, :cond_4

    .line 89
    .line 90
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 91
    .line 92
    :cond_4
    cmpl-float v13, v1, v2

    .line 93
    .line 94
    if-lez v13, :cond_5

    .line 95
    .line 96
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 97
    .line 98
    cmpl-float v14, v12, v14

    .line 99
    .line 100
    if-gez v14, :cond_6

    .line 101
    .line 102
    :cond_5
    cmpg-float v14, v1, v2

    .line 103
    .line 104
    if-gtz v14, :cond_7

    .line 105
    .line 106
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 107
    .line 108
    cmpg-float v14, v12, v14

    .line 109
    .line 110
    if-gtz v14, :cond_7

    .line 111
    .line 112
    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 113
    .line 114
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 115
    .line 116
    move v14, v6

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    move v14, v7

    .line 119
    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 120
    .line 121
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 122
    .line 123
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 124
    .line 125
    const v15, 0x3727c5ac    # 1.0E-5f

    .line 126
    .line 127
    .line 128
    if-eqz v3, :cond_f

    .line 129
    .line 130
    if-nez v14, :cond_f

    .line 131
    .line 132
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 133
    .line 134
    if-eqz v14, :cond_d

    .line 135
    .line 136
    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 137
    .line 138
    sub-long v4, v8, v4

    .line 139
    .line 140
    long-to-float v4, v4

    .line 141
    mul-float/2addr v4, v11

    .line 142
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 147
    .line 148
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 149
    .line 150
    const/4 v10, 0x2

    .line 151
    if-ne v4, v5, :cond_9

    .line 152
    .line 153
    iget-object v4, v5, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 154
    .line 155
    invoke-interface {v4}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    move v4, v10

    .line 162
    goto :goto_2

    .line 163
    :cond_8
    move v4, v6

    .line 164
    goto :goto_2

    .line 165
    :cond_9
    move v4, v7

    .line 166
    :goto_2
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 167
    .line 168
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 169
    .line 170
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 171
    .line 172
    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 173
    .line 174
    if-eqz v8, :cond_c

    .line 175
    .line 176
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 181
    .line 182
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 187
    .line 188
    mul-float/2addr v8, v9

    .line 189
    cmpg-float v8, v8, v15

    .line 190
    .line 191
    if-gtz v8, :cond_a

    .line 192
    .line 193
    if-ne v4, v10, :cond_a

    .line 194
    .line 195
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 196
    .line 197
    :cond_a
    cmpl-float v8, v5, v2

    .line 198
    .line 199
    if-lez v8, :cond_b

    .line 200
    .line 201
    const/high16 v8, 0x3f800000    # 1.0f

    .line 202
    .line 203
    cmpl-float v9, v3, v8

    .line 204
    .line 205
    if-ltz v9, :cond_b

    .line 206
    .line 207
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 208
    .line 209
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 210
    .line 211
    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    .line 213
    :cond_b
    cmpg-float v5, v5, v2

    .line 214
    .line 215
    if-gez v5, :cond_c

    .line 216
    .line 217
    cmpg-float v5, v3, v2

    .line 218
    .line 219
    if-gtz v5, :cond_c

    .line 220
    .line 221
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 222
    .line 223
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 224
    .line 225
    move v12, v2

    .line 226
    goto :goto_5

    .line 227
    :cond_c
    move v12, v3

    .line 228
    goto :goto_5

    .line 229
    :cond_d
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 234
    .line 235
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 236
    .line 237
    if-eqz v5, :cond_e

    .line 238
    .line 239
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_e
    add-float/2addr v12, v10

    .line 247
    invoke-interface {v4, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    sub-float/2addr v4, v3

    .line 252
    mul-float/2addr v4, v1

    .line 253
    div-float/2addr v4, v10

    .line 254
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 255
    .line 256
    :goto_3
    move v12, v3

    .line 257
    :goto_4
    move v4, v7

    .line 258
    goto :goto_5

    .line 259
    :cond_f
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :goto_5
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 263
    .line 264
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    cmpl-float v3, v3, v15

    .line 269
    .line 270
    if-lez v3, :cond_10

    .line 271
    .line 272
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 273
    .line 274
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 275
    .line 276
    .line 277
    :cond_10
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 278
    .line 279
    if-eq v4, v6, :cond_15

    .line 280
    .line 281
    if-lez v13, :cond_11

    .line 282
    .line 283
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 284
    .line 285
    cmpl-float v4, v12, v4

    .line 286
    .line 287
    if-gez v4, :cond_12

    .line 288
    .line 289
    :cond_11
    cmpg-float v4, v1, v2

    .line 290
    .line 291
    if-gtz v4, :cond_13

    .line 292
    .line 293
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 294
    .line 295
    cmpg-float v4, v12, v4

    .line 296
    .line 297
    if-gtz v4, :cond_13

    .line 298
    .line 299
    :cond_12
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 300
    .line 301
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 302
    .line 303
    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 304
    .line 305
    cmpl-float v5, v12, v4

    .line 306
    .line 307
    if-gez v5, :cond_14

    .line 308
    .line 309
    cmpg-float v4, v12, v2

    .line 310
    .line 311
    if-gtz v4, :cond_15

    .line 312
    .line 313
    :cond_14
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 316
    .line 317
    .line 318
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 325
    .line 326
    .line 327
    move-result-wide v8

    .line 328
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 329
    .line 330
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 331
    .line 332
    if-nez v5, :cond_16

    .line 333
    .line 334
    move v5, v12

    .line 335
    goto :goto_6

    .line 336
    :cond_16
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    :goto_6
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 341
    .line 342
    if-eqz v10, :cond_17

    .line 343
    .line 344
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 345
    .line 346
    div-float v11, v1, v11

    .line 347
    .line 348
    add-float/2addr v11, v12

    .line 349
    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 354
    .line 355
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 356
    .line 357
    invoke-interface {v11, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 358
    .line 359
    .line 360
    move-result v11

    .line 361
    sub-float/2addr v10, v11

    .line 362
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 363
    .line 364
    :cond_17
    move v10, v7

    .line 365
    :goto_7
    if-ge v10, v4, :cond_19

    .line 366
    .line 367
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 372
    .line 373
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v15

    .line 377
    move-object/from16 v16, v15

    .line 378
    .line 379
    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 380
    .line 381
    if-eqz v16, :cond_18

    .line 382
    .line 383
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 384
    .line 385
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 386
    .line 387
    move/from16 v17, v5

    .line 388
    .line 389
    move-wide/from16 v18, v8

    .line 390
    .line 391
    move-object/from16 v20, v11

    .line 392
    .line 393
    move-object/from16 v21, v7

    .line 394
    .line 395
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    or-int/2addr v7, v15

    .line 400
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 401
    .line 402
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 403
    .line 404
    const/4 v7, 0x0

    .line 405
    goto :goto_7

    .line 406
    :cond_19
    if-lez v13, :cond_1a

    .line 407
    .line 408
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 409
    .line 410
    cmpl-float v4, v12, v4

    .line 411
    .line 412
    if-gez v4, :cond_1b

    .line 413
    .line 414
    :cond_1a
    cmpg-float v4, v1, v2

    .line 415
    .line 416
    if-gtz v4, :cond_1c

    .line 417
    .line 418
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 419
    .line 420
    cmpg-float v4, v12, v4

    .line 421
    .line 422
    if-gtz v4, :cond_1c

    .line 423
    .line 424
    :cond_1b
    move v4, v6

    .line 425
    goto :goto_8

    .line 426
    :cond_1c
    const/4 v4, 0x0

    .line 427
    :goto_8
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 428
    .line 429
    if-nez v5, :cond_1d

    .line 430
    .line 431
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 432
    .line 433
    if-nez v5, :cond_1d

    .line 434
    .line 435
    if-eqz v4, :cond_1d

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 438
    .line 439
    .line 440
    :cond_1d
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 441
    .line 442
    if-eqz v5, :cond_1e

    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 445
    .line 446
    .line 447
    :cond_1e
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 448
    .line 449
    xor-int/2addr v4, v6

    .line 450
    or-int/2addr v4, v5

    .line 451
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 452
    .line 453
    cmpg-float v4, v12, v2

    .line 454
    .line 455
    if-gtz v4, :cond_1f

    .line 456
    .line 457
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 458
    .line 459
    const/4 v5, -0x1

    .line 460
    if-eq v4, v5, :cond_1f

    .line 461
    .line 462
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 463
    .line 464
    if-eq v5, v4, :cond_1f

    .line 465
    .line 466
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 467
    .line 468
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 469
    .line 470
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 478
    .line 479
    .line 480
    move v7, v6

    .line 481
    goto :goto_9

    .line 482
    :cond_1f
    const/4 v7, 0x0

    .line 483
    :goto_9
    float-to-double v4, v12

    .line 484
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 485
    .line 486
    cmpl-double v4, v4, v8

    .line 487
    .line 488
    if-ltz v4, :cond_20

    .line 489
    .line 490
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 491
    .line 492
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 493
    .line 494
    if-eq v4, v5, :cond_20

    .line 495
    .line 496
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 497
    .line 498
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 499
    .line 500
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 508
    .line 509
    .line 510
    move v7, v6

    .line 511
    :cond_20
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 512
    .line 513
    if-nez v4, :cond_24

    .line 514
    .line 515
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 516
    .line 517
    if-eqz v4, :cond_21

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_21
    if-lez v13, :cond_22

    .line 521
    .line 522
    const/high16 v4, 0x3f800000    # 1.0f

    .line 523
    .line 524
    cmpl-float v5, v12, v4

    .line 525
    .line 526
    if-eqz v5, :cond_23

    .line 527
    .line 528
    :cond_22
    cmpg-float v4, v1, v2

    .line 529
    .line 530
    if-gez v4, :cond_25

    .line 531
    .line 532
    cmpl-float v4, v12, v2

    .line 533
    .line 534
    if-nez v4, :cond_25

    .line 535
    .line 536
    :cond_23
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 537
    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_24
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 541
    .line 542
    .line 543
    :cond_25
    :goto_b
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 544
    .line 545
    if-nez v3, :cond_28

    .line 546
    .line 547
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 548
    .line 549
    if-nez v3, :cond_28

    .line 550
    .line 551
    if-lez v13, :cond_26

    .line 552
    .line 553
    const/high16 v3, 0x3f800000    # 1.0f

    .line 554
    .line 555
    cmpl-float v4, v12, v3

    .line 556
    .line 557
    if-eqz v4, :cond_27

    .line 558
    .line 559
    :cond_26
    cmpg-float v1, v1, v2

    .line 560
    .line 561
    if-gez v1, :cond_28

    .line 562
    .line 563
    cmpl-float v1, v12, v2

    .line 564
    .line 565
    if-nez v1, :cond_28

    .line 566
    .line 567
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 568
    .line 569
    .line 570
    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 571
    .line 572
    const/high16 v3, 0x3f800000    # 1.0f

    .line 573
    .line 574
    cmpl-float v3, v1, v3

    .line 575
    .line 576
    if-ltz v3, :cond_2a

    .line 577
    .line 578
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 579
    .line 580
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 581
    .line 582
    if-eq v1, v2, :cond_29

    .line 583
    .line 584
    goto :goto_c

    .line 585
    :cond_29
    move v6, v7

    .line 586
    :goto_c
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 587
    .line 588
    :goto_d
    move v7, v6

    .line 589
    goto :goto_f

    .line 590
    :cond_2a
    cmpg-float v1, v1, v2

    .line 591
    .line 592
    if-gtz v1, :cond_2c

    .line 593
    .line 594
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 595
    .line 596
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 597
    .line 598
    if-eq v1, v2, :cond_2b

    .line 599
    .line 600
    goto :goto_e

    .line 601
    :cond_2b
    move v6, v7

    .line 602
    :goto_e
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 603
    .line 604
    goto :goto_d

    .line 605
    :cond_2c
    :goto_f
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 606
    .line 607
    or-int/2addr v1, v7

    .line 608
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 609
    .line 610
    if-eqz v7, :cond_2d

    .line 611
    .line 612
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 613
    .line 614
    if-nez v1, :cond_2d

    .line 615
    .line 616
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 617
    .line 618
    .line 619
    :cond_2d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 620
    .line 621
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 622
    .line 623
    return-void
.end method

.method public final fireTransitionChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 18
    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 53
    .line 54
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 55
    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method

.method public final fireTransitionCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 21
    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v1

    .line 52
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 53
    .line 54
    if-eq v0, v2, :cond_2

    .line 55
    .line 56
    if-eq v2, v1, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final getAnchorDpDt(IFFF[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-nez p0, :cond_1

    .line 23
    .line 24
    const-string p0, ""

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "WARNING could not find view id "

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "MotionLayout"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object v1
.end method

.method public getCurrentState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2
    .line 3
    return p0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object p0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 13
    .line 14
    return-object p0
.end method

.method public getEndState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 2
    .line 3
    return p0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getProgress()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2
    .line 3
    return p0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStartState()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 2
    .line 3
    return p0
.end method

.method public getTargetPosition()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2
    .line 3
    return p0
.end method

.method public final getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 20
    .line 21
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 22
    .line 23
    if-ne v1, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    .line 16
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 17
    .line 18
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 19
    .line 20
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 21
    .line 22
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "motion.progress"

    .line 47
    .line 48
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    .line 52
    .line 53
    const-string v1, "motion.velocity"

    .line 54
    .line 55
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    .line 59
    .line 60
    const-string v1, "motion.StartState"

    .line 61
    .line 62
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v1, "motion.EndState"

    .line 68
    .line 69
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 70
    .line 71
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    div-float/2addr v0, v1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 14
    .line 15
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 16
    .line 17
    mul-float/2addr p0, v1

    .line 18
    float-to-long v0, p0

    .line 19
    return-wide v0
.end method

.method public getVelocity()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 2
    .line 3
    return p0
.end method

.method public final handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    move-object v0, p3

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v1

    .line 14
    :goto_0
    if-ltz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    add-float/2addr v4, p1

    .line 26
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    int-to-float v5, v5

    .line 31
    sub-float/2addr v4, v5

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    int-to-float v5, v5

    .line 37
    add-float/2addr v5, p2

    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    int-to-float v6, v6

    .line 43
    sub-float/2addr v5, v6

    .line 44
    invoke-virtual {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-nez v0, :cond_5

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    add-float/2addr v3, p1

    .line 66
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    int-to-float v4, v4

    .line 71
    sub-float/2addr v3, v4

    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    int-to-float v4, v4

    .line 77
    add-float/2addr v4, p2

    .line 78
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    int-to-float v5, v5

    .line 83
    sub-float/2addr v4, v5

    .line 84
    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 94
    .line 95
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    :cond_2
    neg-float p1, p1

    .line 110
    neg-float p2, p2

    .line 111
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    neg-float p1, p1

    .line 129
    neg-float p2, p2

    .line 130
    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 142
    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    new-instance p1, Landroid/graphics/Matrix;

    .line 146
    .line 147
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 151
    .line 152
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 153
    .line 154
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    .line 158
    .line 159
    invoke-virtual {p4, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    .line 168
    .line 169
    :goto_2
    if-eqz p0, :cond_5

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move v1, v0

    .line 173
    :goto_3
    return v1
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 6
    .line 7
    const-string v0, "MotionLayout"

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_9

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    .line 18
    .line 19
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    move v5, v2

    .line 29
    move v6, v4

    .line 30
    :goto_0
    if-ge v5, v3, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/4 v8, 0x2

    .line 37
    if-ne v7, v8, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-direct {v8, v9, p0, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 50
    .line 51
    .line 52
    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    if-ne v7, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const/4 v9, 0x4

    .line 65
    if-ne v7, v9, :cond_2

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 73
    .line 74
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    if-nez v7, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/4 v9, 0x5

    .line 85
    if-ne v7, v9, :cond_5

    .line 86
    .line 87
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 88
    .line 89
    if-nez v9, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move v8, v2

    .line 99
    :goto_1
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/4 v8, 0x3

    .line 103
    if-ne v7, v8, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 110
    .line 111
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 118
    .line 119
    if-nez p1, :cond_8

    .line 120
    .line 121
    const-string p1, "WARNING NO app:layoutDescription tag"

    .line 122
    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_8
    if-nez v6, :cond_9

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 130
    .line 131
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 132
    .line 133
    if-eqz p1, :cond_19

    .line 134
    .line 135
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 136
    .line 137
    if-nez p1, :cond_a

    .line 138
    .line 139
    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 140
    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    move v5, v2

    .line 173
    :goto_3
    const-string v6, "CHECK: "

    .line 174
    .line 175
    if-ge v5, v4, :cond_d

    .line 176
    .line 177
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-ne v8, v1, :cond_b

    .line 186
    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v10, " ALL VIEWS SHOULD HAVE ID\'s "

    .line 196
    .line 197
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v10, " does not!"

    .line 212
    .line 213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_b
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    if-nez v8, :cond_c

    .line 228
    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v6, " NO CONSTRAINTS for "

    .line 238
    .line 239
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_d
    iget-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    new-array v5, v2, [Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, [Ljava/lang/Integer;

    .line 272
    .line 273
    array-length v5, v4

    .line 274
    new-array v7, v5, [I

    .line 275
    .line 276
    move v8, v2

    .line 277
    :goto_4
    if-ge v8, v5, :cond_e

    .line 278
    .line 279
    aget-object v9, v4, v8

    .line 280
    .line 281
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    aput v9, v7, v8

    .line 286
    .line 287
    add-int/lit8 v8, v8, 0x1

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_e
    :goto_5
    if-ge v2, v5, :cond_12

    .line 291
    .line 292
    aget v4, v7, v2

    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-static {v8, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    aget v9, v7, v2

    .line 303
    .line 304
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    if-nez v9, :cond_f

    .line 309
    .line 310
    new-instance v9, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v10, " NO View matches id "

    .line 319
    .line 320
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    :cond_f
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 338
    .line 339
    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 340
    .line 341
    const-string v10, ") no LAYOUT_HEIGHT"

    .line 342
    .line 343
    const-string v11, "("

    .line 344
    .line 345
    if-ne v9, v1, :cond_10

    .line 346
    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 376
    .line 377
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 378
    .line 379
    if-ne v4, v1, :cond_11

    .line 380
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_12
    new-instance p1, Landroid/util/SparseIntArray;

    .line 409
    .line 410
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 411
    .line 412
    .line 413
    new-instance v2, Landroid/util/SparseIntArray;

    .line 414
    .line 415
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 416
    .line 417
    .line 418
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 419
    .line 420
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-eqz v4, :cond_19

    .line 431
    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 437
    .line 438
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 439
    .line 440
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 441
    .line 442
    if-ne v4, v5, :cond_14

    .line 443
    .line 444
    const-string v5, "CHECK: CURRENT"

    .line 445
    .line 446
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :cond_14
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 450
    .line 451
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 452
    .line 453
    if-ne v5, v6, :cond_15

    .line 454
    .line 455
    const-string v5, "CHECK: start and end constraint set should not be the same!"

    .line 456
    .line 457
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_15
    iget v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 461
    .line 462
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 463
    .line 464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    const-string v9, "->"

    .line 485
    .line 486
    if-ne v8, v4, :cond_16

    .line 487
    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v10, "CHECK: two transitions with the same start and end "

    .line 491
    .line 492
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    :cond_16
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    if-ne v8, v5, :cond_17

    .line 516
    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v10, "CHECK: you can\'t have reverse transitions"

    .line 520
    .line 521
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    :cond_17
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    .line 545
    .line 546
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 547
    .line 548
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    if-nez v5, :cond_18

    .line 553
    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v7, " no such constraintSetStart "

    .line 557
    .line 558
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    :cond_18
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 572
    .line 573
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    if-nez v4, :cond_13

    .line 578
    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    const-string v5, " no such constraintSetEnd "

    .line 582
    .line 583
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    goto/16 :goto_6

    .line 597
    .line 598
    :cond_19
    :goto_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 599
    .line 600
    if-ne p1, v1, :cond_1b

    .line 601
    .line 602
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 603
    .line 604
    if-eqz p1, :cond_1b

    .line 605
    .line 606
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 607
    .line 608
    .line 609
    move-result p1

    .line 610
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 611
    .line 612
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 613
    .line 614
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 615
    .line 616
    .line 617
    move-result p1

    .line 618
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 619
    .line 620
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 621
    .line 622
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 623
    .line 624
    if-nez p1, :cond_1a

    .line 625
    .line 626
    goto :goto_8

    .line 627
    :cond_1a
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 628
    .line 629
    :goto_8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 630
    .line 631
    :cond_1b
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v2, v3, :cond_4

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    :goto_1
    if-lez v4, :cond_3

    .line 56
    .line 57
    if-ne v4, v3, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v6, v5, -0x1

    .line 61
    .line 62
    if-gez v5, :cond_2

    .line 63
    .line 64
    :goto_2
    const-string v1, "MotionScene"

    .line 65
    .line 66
    const-string v2, "Cannot be derived from yourself"

    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    move v5, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v1, v3, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 116
    .line 117
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 118
    .line 119
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 152
    .line 153
    const/4 v1, 0x4

    .line 154
    if-ne v0, v1, :cond_a

    .line 155
    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 159
    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 163
    .line 164
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    :goto_5
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_14

    .line 7
    .line 8
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 16
    .line 17
    const/4 v10, -0x1

    .line 18
    if-eqz v1, :cond_10

    .line 19
    .line 20
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    if-ne v11, v10, :cond_1

    .line 27
    .line 28
    goto/16 :goto_9

    .line 29
    .line 30
    :cond_1
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 31
    .line 32
    if-nez v5, :cond_4

    .line 33
    .line 34
    new-instance v5, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 40
    .line 41
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    move v8, v2

    .line 64
    :goto_0
    if-ge v8, v7, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-eqz v12, :cond_3

    .line 75
    .line 76
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 77
    .line 78
    .line 79
    iget-object v12, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 80
    .line 81
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    new-instance v14, Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 105
    .line 106
    const/4 v9, 0x2

    .line 107
    if-eqz v5, :cond_8

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_8

    .line 114
    .line 115
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_8

    .line 126
    .line 127
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 132
    .line 133
    if-eq v15, v3, :cond_6

    .line 134
    .line 135
    if-eq v15, v9, :cond_5

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 142
    .line 143
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 144
    .line 145
    iget-object v8, v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {v7, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 148
    .line 149
    .line 150
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 151
    .line 152
    float-to-int v8, v12

    .line 153
    float-to-int v10, v13

    .line 154
    invoke-virtual {v7, v8, v10}, Landroid/graphics/Rect;->contains(II)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-nez v7, :cond_7

    .line 159
    .line 160
    iget-boolean v7, v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 161
    .line 162
    if-nez v7, :cond_7

    .line 163
    .line 164
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    iget-boolean v7, v6, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 169
    .line 170
    if-nez v7, :cond_7

    .line 171
    .line 172
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse()V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_2
    const/4 v10, -0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    if-eqz v15, :cond_9

    .line 178
    .line 179
    if-eq v15, v3, :cond_9

    .line 180
    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :cond_9
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 184
    .line 185
    if-nez v4, :cond_a

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    :goto_3
    move-object v10, v4

    .line 189
    goto :goto_4

    .line 190
    :cond_a
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    goto :goto_3

    .line 195
    :goto_4
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v16

    .line 201
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_10

    .line 206
    .line 207
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    move-object v8, v4

    .line 212
    check-cast v8, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 213
    .line 214
    iget v4, v8, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 215
    .line 216
    if-ne v4, v3, :cond_b

    .line 217
    .line 218
    if-nez v15, :cond_f

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_b
    if-ne v4, v9, :cond_c

    .line 222
    .line 223
    if-ne v15, v3, :cond_f

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_c
    const/4 v5, 0x3

    .line 227
    if-ne v4, v5, :cond_f

    .line 228
    .line 229
    if-nez v15, :cond_f

    .line 230
    .line 231
    :goto_6
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v17

    .line 237
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_f

    .line 242
    .line 243
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Landroid/view/View;

    .line 248
    .line 249
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-nez v5, :cond_d

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_d
    invoke-virtual {v4, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 257
    .line 258
    .line 259
    float-to-int v5, v12

    .line 260
    float-to-int v6, v13

    .line 261
    invoke-virtual {v14, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_e

    .line 266
    .line 267
    new-array v7, v3, [Landroid/view/View;

    .line 268
    .line 269
    aput-object v4, v7, v2

    .line 270
    .line 271
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 272
    .line 273
    move-object v4, v8

    .line 274
    move-object v5, v1

    .line 275
    move-object/from16 v18, v7

    .line 276
    .line 277
    move v7, v11

    .line 278
    move-object/from16 v19, v8

    .line 279
    .line 280
    move-object v8, v10

    .line 281
    move/from16 v20, v9

    .line 282
    .line 283
    move-object/from16 v9, v18

    .line 284
    .line 285
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_e
    move-object/from16 v19, v8

    .line 290
    .line 291
    move/from16 v20, v9

    .line 292
    .line 293
    :goto_8
    move-object/from16 v8, v19

    .line 294
    .line 295
    move/from16 v9, v20

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_f
    move/from16 v20, v9

    .line 299
    .line 300
    move/from16 v9, v20

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_10
    :goto_9
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 304
    .line 305
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 306
    .line 307
    if-eqz v1, :cond_14

    .line 308
    .line 309
    iget-boolean v4, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 310
    .line 311
    xor-int/2addr v3, v4

    .line 312
    if-eqz v3, :cond_14

    .line 313
    .line 314
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 315
    .line 316
    if-eqz v1, :cond_14

    .line 317
    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_11

    .line 323
    .line 324
    new-instance v3, Landroid/graphics/RectF;

    .line 325
    .line 326
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    if-eqz v3, :cond_11

    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-nez v3, :cond_11

    .line 348
    .line 349
    return v2

    .line 350
    :cond_11
    iget v1, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 351
    .line 352
    const/4 v3, -0x1

    .line 353
    if-eq v1, v3, :cond_14

    .line 354
    .line 355
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 356
    .line 357
    if-eqz v3, :cond_12

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eq v3, v1, :cond_13

    .line 364
    .line 365
    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 370
    .line 371
    :cond_13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 372
    .line 373
    if-eqz v1, :cond_14

    .line 374
    .line 375
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    int-to-float v1, v1

    .line 382
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 383
    .line 384
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    int-to-float v4, v4

    .line 389
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 390
    .line 391
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    int-to-float v5, v5

    .line 396
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    int-to-float v6, v6

    .line 403
    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 407
    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_14

    .line 421
    .line 422
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    int-to-float v1, v1

    .line 429
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 430
    .line 431
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    int-to-float v3, v3

    .line 436
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 437
    .line 438
    move-object/from16 v5, p1

    .line 439
    .line 440
    invoke-virtual {v0, v1, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-nez v1, :cond_14

    .line 445
    .line 446
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    return v0

    .line 451
    :cond_14
    :goto_a
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sub-int/2addr p4, p2

    .line 18
    sub-int/2addr p5, p3

    .line 19
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    .line 20
    .line 21
    if-ne p1, p4, :cond_1

    .line 22
    .line 23
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    .line 24
    .line 25
    if-eq p1, p5, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    .line 34
    .line 35
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 38
    .line 39
    return-void

    .line 40
    :goto_0
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    .line 41
    .line 42
    throw p1
.end method

.method public final onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne v3, v1, :cond_2

    .line 20
    .line 21
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 22
    .line 23
    if-eq v3, v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v3, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v3, v4

    .line 29
    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    .line 39
    .line 40
    .line 41
    move v3, v4

    .line 42
    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 43
    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 48
    .line 49
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 52
    .line 53
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 58
    .line 59
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 60
    .line 61
    const/4 v8, -0x1

    .line 62
    if-nez v7, :cond_5

    .line 63
    .line 64
    move v7, v8

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 67
    .line 68
    :goto_2
    if-nez v3, :cond_6

    .line 69
    .line 70
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 71
    .line 72
    iget v10, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 73
    .line 74
    if-ne v6, v10, :cond_6

    .line 75
    .line 76
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 77
    .line 78
    if-eq v7, v9, :cond_7

    .line 79
    .line 80
    :cond_6
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 81
    .line 82
    if-eq v9, v8, :cond_7

    .line 83
    .line 84
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 90
    .line 91
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 96
    .line 97
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 110
    .line 111
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 112
    .line 113
    iput v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 114
    .line 115
    move v1, v5

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    if-eqz v3, :cond_8

    .line 118
    .line 119
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 120
    .line 121
    .line 122
    :cond_8
    move v1, v4

    .line 123
    :goto_3
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 124
    .line 125
    if-nez v2, :cond_9

    .line 126
    .line 127
    if-eqz v1, :cond_e

    .line 128
    .line 129
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    add-int/2addr v2, v1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    add-int/2addr v3, v1

    .line 147
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    add-int/2addr v1, v3

    .line 154
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 155
    .line 156
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/2addr v3, v2

    .line 161
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 162
    .line 163
    const/high16 v6, -0x80000000

    .line 164
    .line 165
    if-eq v2, v6, :cond_a

    .line 166
    .line 167
    if-nez v2, :cond_b

    .line 168
    .line 169
    :cond_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 170
    .line 171
    int-to-float v2, v1

    .line 172
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 173
    .line 174
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 175
    .line 176
    sub-int/2addr v8, v1

    .line 177
    int-to-float v1, v8

    .line 178
    mul-float/2addr v7, v1

    .line 179
    add-float/2addr v7, v2

    .line 180
    float-to-int v1, v7

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 182
    .line 183
    .line 184
    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 185
    .line 186
    if-eq v2, v6, :cond_c

    .line 187
    .line 188
    if-nez v2, :cond_d

    .line 189
    .line 190
    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 191
    .line 192
    int-to-float v3, v2

    .line 193
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 194
    .line 195
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 196
    .line 197
    sub-int/2addr v7, v2

    .line 198
    int-to-float v2, v7

    .line 199
    mul-float/2addr v6, v2

    .line 200
    add-float/2addr v6, v3

    .line 201
    float-to-int v3, v6

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 203
    .line 204
    .line 205
    :cond_d
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 206
    .line 207
    .line 208
    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 209
    .line 210
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 211
    .line 212
    sub-float/2addr v1, v2

    .line 213
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v2

    .line 221
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 222
    .line 223
    instance-of v7, v6, Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 224
    .line 225
    const v8, 0x3089705f    # 1.0E-9f

    .line 226
    .line 227
    .line 228
    const/4 v9, 0x0

    .line 229
    if-nez v7, :cond_f

    .line 230
    .line 231
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 232
    .line 233
    sub-long v10, v2, v10

    .line 234
    .line 235
    long-to-float v7, v10

    .line 236
    mul-float/2addr v7, v1

    .line 237
    mul-float/2addr v7, v8

    .line 238
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 239
    .line 240
    div-float/2addr v7, v10

    .line 241
    goto :goto_4

    .line 242
    :cond_f
    move v7, v9

    .line 243
    :goto_4
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 244
    .line 245
    add-float/2addr v10, v7

    .line 246
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 247
    .line 248
    if-eqz v7, :cond_10

    .line 249
    .line 250
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 251
    .line 252
    :cond_10
    cmpl-float v7, v1, v9

    .line 253
    .line 254
    if-lez v7, :cond_11

    .line 255
    .line 256
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 257
    .line 258
    cmpl-float v11, v10, v11

    .line 259
    .line 260
    if-gez v11, :cond_12

    .line 261
    .line 262
    :cond_11
    cmpg-float v11, v1, v9

    .line 263
    .line 264
    if-gtz v11, :cond_13

    .line 265
    .line 266
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 267
    .line 268
    cmpg-float v11, v10, v11

    .line 269
    .line 270
    if-gtz v11, :cond_13

    .line 271
    .line 272
    :cond_12
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_13
    move v4, v5

    .line 276
    :goto_5
    if-eqz v6, :cond_15

    .line 277
    .line 278
    if-nez v4, :cond_15

    .line 279
    .line 280
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 281
    .line 282
    if-eqz v4, :cond_14

    .line 283
    .line 284
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 285
    .line 286
    sub-long/2addr v2, v10

    .line 287
    long-to-float v2, v2

    .line 288
    mul-float/2addr v2, v8

    .line 289
    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    goto :goto_6

    .line 294
    :cond_14
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    :cond_15
    :goto_6
    if-lez v7, :cond_16

    .line 299
    .line 300
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 301
    .line 302
    cmpl-float v2, v10, v2

    .line 303
    .line 304
    if-gez v2, :cond_17

    .line 305
    .line 306
    :cond_16
    cmpg-float v1, v1, v9

    .line 307
    .line 308
    if-gtz v1, :cond_18

    .line 309
    .line 310
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 311
    .line 312
    cmpg-float v1, v10, v1

    .line 313
    .line 314
    if-gtz v1, :cond_18

    .line 315
    .line 316
    :cond_17
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 317
    .line 318
    :cond_18
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    .line 329
    .line 330
    if-nez v4, :cond_19

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_19
    invoke-interface {v4, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    :goto_7
    if-ge v5, v1, :cond_1b

    .line 338
    .line 339
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v15

    .line 343
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 344
    .line 345
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    move-object v11, v4

    .line 350
    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 351
    .line 352
    if-eqz v11, :cond_1a

    .line 353
    .line 354
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 355
    .line 356
    move v12, v10

    .line 357
    move-wide v13, v2

    .line 358
    move-object/from16 v16, v4

    .line 359
    .line 360
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 361
    .line 362
    .line 363
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_1b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 367
    .line 368
    if-eqz v1, :cond_1c

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 371
    .line 372
    .line 373
    :cond_1c
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 15
    .line 16
    if-eqz v5, :cond_14

    .line 17
    .line 18
    iget-boolean v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    xor-int/2addr v6, v7

    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    const/4 v8, -0x1

    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 30
    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 34
    .line 35
    if-eq v6, v8, :cond_2

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-eq v9, v6, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v6, v9

    .line 57
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    if-eqz v6, :cond_6

    .line 61
    .line 62
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 63
    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    iget v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 67
    .line 68
    and-int/lit8 v6, v6, 0x4

    .line 69
    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    move v8, v3

    .line 73
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 74
    .line 75
    cmpl-float v12, v6, v10

    .line 76
    .line 77
    if-eqz v12, :cond_5

    .line 78
    .line 79
    cmpl-float v6, v6, v11

    .line 80
    .line 81
    if-nez v6, :cond_6

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->canScrollVertically(I)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    return-void

    .line 90
    :cond_6
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 91
    .line 92
    if-eqz v5, :cond_d

    .line 93
    .line 94
    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 95
    .line 96
    and-int/2addr v5, v7

    .line 97
    if-eqz v5, :cond_d

    .line 98
    .line 99
    int-to-float v5, v2

    .line 100
    int-to-float v6, v3

    .line 101
    iget-object v8, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 102
    .line 103
    if-eqz v8, :cond_a

    .line 104
    .line 105
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 106
    .line 107
    if-eqz v8, :cond_a

    .line 108
    .line 109
    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 110
    .line 111
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    iget v14, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 116
    .line 117
    iget v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 118
    .line 119
    iget v13, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 120
    .line 121
    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 122
    .line 123
    iget-object v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 124
    .line 125
    move/from16 v17, v13

    .line 126
    .line 127
    move-object v13, v7

    .line 128
    move/from16 v16, v12

    .line 129
    .line 130
    move-object/from16 v18, v10

    .line 131
    .line 132
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 133
    .line 134
    .line 135
    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 136
    .line 137
    cmpl-float v10, v7, v11

    .line 138
    .line 139
    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 140
    .line 141
    const v13, 0x33d6bf95    # 1.0E-7f

    .line 142
    .line 143
    .line 144
    if-eqz v10, :cond_8

    .line 145
    .line 146
    aget v6, v12, v9

    .line 147
    .line 148
    cmpl-float v6, v6, v11

    .line 149
    .line 150
    if-nez v6, :cond_7

    .line 151
    .line 152
    aput v13, v12, v9

    .line 153
    .line 154
    :cond_7
    mul-float/2addr v5, v7

    .line 155
    aget v6, v12, v9

    .line 156
    .line 157
    div-float/2addr v5, v6

    .line 158
    goto :goto_1

    .line 159
    :cond_8
    const/4 v5, 0x1

    .line 160
    aget v7, v12, v5

    .line 161
    .line 162
    cmpl-float v7, v7, v11

    .line 163
    .line 164
    if-nez v7, :cond_9

    .line 165
    .line 166
    aput v13, v12, v5

    .line 167
    .line 168
    :cond_9
    iget v7, v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 169
    .line 170
    mul-float/2addr v6, v7

    .line 171
    aget v7, v12, v5

    .line 172
    .line 173
    div-float v5, v6, v7

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_a
    move v5, v11

    .line 177
    :goto_1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 178
    .line 179
    cmpg-float v7, v6, v11

    .line 180
    .line 181
    if-gtz v7, :cond_b

    .line 182
    .line 183
    cmpg-float v7, v5, v11

    .line 184
    .line 185
    if-ltz v7, :cond_c

    .line 186
    .line 187
    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    .line 188
    .line 189
    cmpl-float v6, v6, v7

    .line 190
    .line 191
    if-ltz v6, :cond_d

    .line 192
    .line 193
    cmpl-float v5, v5, v11

    .line 194
    .line 195
    if-lez v5, :cond_d

    .line 196
    .line 197
    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    .line 201
    .line 202
    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    int-to-float v7, v2

    .line 216
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 217
    .line 218
    int-to-float v8, v3

    .line 219
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 220
    .line 221
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 222
    .line 223
    sub-long v12, v5, v12

    .line 224
    .line 225
    long-to-double v12, v12

    .line 226
    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    mul-double/2addr v12, v14

    .line 232
    double-to-float v10, v12

    .line 233
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 234
    .line 235
    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 236
    .line 237
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 238
    .line 239
    if-eqz v4, :cond_11

    .line 240
    .line 241
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 242
    .line 243
    if-eqz v4, :cond_11

    .line 244
    .line 245
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 246
    .line 247
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    iget-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 252
    .line 253
    if-nez v10, :cond_e

    .line 254
    .line 255
    const/4 v10, 0x1

    .line 256
    iput-boolean v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 257
    .line 258
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 259
    .line 260
    .line 261
    :cond_e
    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 262
    .line 263
    iget v15, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 264
    .line 265
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 266
    .line 267
    iget-object v14, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 268
    .line 269
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 270
    .line 271
    move-object/from16 v17, v14

    .line 272
    .line 273
    move v14, v6

    .line 274
    move/from16 v16, v10

    .line 275
    .line 276
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 277
    .line 278
    .line 279
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 280
    .line 281
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 282
    .line 283
    aget v13, v12, v9

    .line 284
    .line 285
    mul-float/2addr v10, v13

    .line 286
    iget v13, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 287
    .line 288
    const/4 v14, 0x1

    .line 289
    aget v15, v12, v14

    .line 290
    .line 291
    mul-float/2addr v13, v15

    .line 292
    add-float/2addr v13, v10

    .line 293
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    float-to-double v14, v10

    .line 298
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    cmpg-double v10, v14, v16

    .line 304
    .line 305
    if-gez v10, :cond_f

    .line 306
    .line 307
    const v10, 0x3c23d70a    # 0.01f

    .line 308
    .line 309
    .line 310
    aput v10, v12, v9

    .line 311
    .line 312
    const/4 v13, 0x1

    .line 313
    aput v10, v12, v13

    .line 314
    .line 315
    :cond_f
    iget v10, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 316
    .line 317
    cmpl-float v13, v10, v11

    .line 318
    .line 319
    if-eqz v13, :cond_10

    .line 320
    .line 321
    mul-float/2addr v7, v10

    .line 322
    aget v4, v12, v9

    .line 323
    .line 324
    div-float/2addr v7, v4

    .line 325
    goto :goto_2

    .line 326
    :cond_10
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 327
    .line 328
    mul-float/2addr v8, v4

    .line 329
    const/4 v4, 0x1

    .line 330
    aget v7, v12, v4

    .line 331
    .line 332
    div-float v7, v8, v7

    .line 333
    .line 334
    :goto_2
    add-float/2addr v6, v7

    .line 335
    const/high16 v4, 0x3f800000    # 1.0f

    .line 336
    .line 337
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    cmpl-float v6, v4, v6

    .line 350
    .line 351
    if-eqz v6, :cond_11

    .line 352
    .line 353
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 354
    .line 355
    .line 356
    :cond_11
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 357
    .line 358
    cmpl-float v1, v1, v4

    .line 359
    .line 360
    if-eqz v1, :cond_12

    .line 361
    .line 362
    aput v2, p4, v9

    .line 363
    .line 364
    const/4 v1, 0x1

    .line 365
    aput v3, p4, v1

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_12
    const/4 v1, 0x1

    .line 369
    :goto_3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 370
    .line 371
    .line 372
    aget v2, p4, v9

    .line 373
    .line 374
    if-nez v2, :cond_13

    .line 375
    .line 376
    aget v2, p4, v1

    .line 377
    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    :cond_13
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 381
    .line 382
    :cond_14
    :goto_4
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 2
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 4
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 5
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 9
    .line 10
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 11
    .line 12
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 13
    .line 14
    return-void
.end method

.method public final onNewStateAttachHandlers()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_9

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 42
    .line 43
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-lez v5, :cond_2

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 68
    .line 69
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 90
    .line 91
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-lez v5, :cond_4

    .line 98
    .line 99
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 116
    .line 117
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 138
    .line 139
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-lez v5, :cond_6

    .line 146
    .line 147
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 164
    .line 165
    invoke-virtual {v6, p0, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_9

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 186
    .line 187
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-lez v4, :cond_8

    .line 194
    .line 195
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-eqz v5, :cond_8

    .line 206
    .line 207
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 212
    .line 213
    invoke-virtual {v5, p0, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 226
    .line 227
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 228
    .line 229
    if-eqz p0, :cond_c

    .line 230
    .line 231
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 232
    .line 233
    if-eqz p0, :cond_c

    .line 234
    .line 235
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 236
    .line 237
    if-eq v0, v1, :cond_a

    .line 238
    .line 239
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-nez v0, :cond_b

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v3, "cannot find TouchAnchorId @id/"

    .line 250
    .line 251
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 259
    .line 260
    invoke-static {v1, p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    const-string v1, "TouchResponse"

    .line 272
    .line 273
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    const/4 v0, 0x0

    .line 278
    :cond_b
    :goto_4
    instance-of p0, v0, Landroidx/core/widget/NestedScrollView;

    .line 279
    .line 280
    if-eqz p0, :cond_c

    .line 281
    .line 282
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 283
    .line 284
    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    .line 285
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    .line 291
    .line 292
    new-instance p0, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    .line 293
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, p0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 298
    .line 299
    .line 300
    :cond_c
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    iput-boolean p0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 14
    .line 15
    and-int/lit8 p0, p0, 0x2

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .locals 10

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v1, p2, v0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 14
    .line 15
    div-float/2addr v1, p2

    .line 16
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 17
    .line 18
    div-float/2addr p0, p2

    .line 19
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 29
    .line 30
    iget-object v2, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    iget v4, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 37
    .line 38
    iget v6, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 39
    .line 40
    iget v7, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 41
    .line 42
    iget-object v8, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 43
    .line 44
    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    .line 46
    move v5, v9

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 48
    .line 49
    .line 50
    iget v3, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 51
    .line 52
    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 53
    .line 54
    aget p2, v4, p2

    .line 55
    .line 56
    iget v5, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    aget v4, v4, v6

    .line 60
    .line 61
    cmpl-float v6, v3, v0

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    mul-float/2addr v1, v3

    .line 66
    div-float/2addr v1, p2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    mul-float/2addr p0, v5

    .line 69
    div-float v1, p0, v4

    .line 70
    .line 71
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    .line 77
    const/high16 p0, 0x40400000    # 3.0f

    .line 78
    .line 79
    div-float p0, v1, p0

    .line 80
    .line 81
    add-float/2addr v9, p0

    .line 82
    :cond_2
    cmpl-float p0, v9, v0

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    const/high16 p0, 0x3f800000    # 1.0f

    .line 87
    .line 88
    cmpl-float p2, v9, p0

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    iget p1, p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 93
    .line 94
    const/4 p2, 0x3

    .line 95
    if-eq p1, p2, :cond_4

    .line 96
    .line 97
    float-to-double v3, v9

    .line 98
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 99
    .line 100
    cmpg-double p2, v3, v5

    .line 101
    .line 102
    if-gez p2, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move v0, p0

    .line 106
    :goto_1
    invoke-virtual {v2, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_2
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 6
    .line 7
    if-eqz v2, :cond_67

    .line 8
    .line 9
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 10
    .line 11
    if-eqz v3, :cond_67

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_67

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 20
    .line 21
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-boolean v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 27
    .line 28
    xor-int/2addr v3, v4

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    new-instance v5, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 46
    .line 47
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->sMe:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 55
    .line 56
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iput-object v8, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 61
    .line 62
    iput-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 63
    .line 64
    :cond_1
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 65
    .line 66
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 67
    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    const/4 v8, 0x2

    .line 74
    const/4 v10, -0x1

    .line 75
    if-eq v3, v10, :cond_19

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_16

    .line 82
    .line 83
    if-eq v12, v8, :cond_3

    .line 84
    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :cond_3
    iget-boolean v12, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 88
    .line 89
    if-eqz v12, :cond_4

    .line 90
    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 98
    .line 99
    sub-float/2addr v12, v13

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 105
    .line 106
    sub-float/2addr v13, v14

    .line 107
    float-to-double v14, v13

    .line 108
    const-wide/16 v16, 0x0

    .line 109
    .line 110
    cmpl-double v14, v14, v16

    .line 111
    .line 112
    if-nez v14, :cond_5

    .line 113
    .line 114
    float-to-double v14, v12

    .line 115
    cmpl-double v14, v14, v16

    .line 116
    .line 117
    if-eqz v14, :cond_65

    .line 118
    .line 119
    :cond_5
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 120
    .line 121
    if-nez v14, :cond_6

    .line 122
    .line 123
    goto/16 :goto_2f

    .line 124
    .line 125
    :cond_6
    if-eq v3, v10, :cond_14

    .line 126
    .line 127
    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 128
    .line 129
    if-eqz v15, :cond_7

    .line 130
    .line 131
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(I)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eq v15, v10, :cond_7

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_7
    move v15, v3

    .line 139
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v18

    .line 154
    if-eqz v18, :cond_a

    .line 155
    .line 156
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v18

    .line 160
    move-object/from16 v8, v18

    .line 161
    .line 162
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 163
    .line 164
    iget v4, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 165
    .line 166
    if-eq v4, v15, :cond_8

    .line 167
    .line 168
    iget v4, v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 169
    .line 170
    if-ne v4, v15, :cond_9

    .line 171
    .line 172
    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_9
    const/4 v4, 0x1

    .line 176
    const/4 v8, 0x2

    .line 177
    goto :goto_1

    .line 178
    :cond_a
    new-instance v4, Landroid/graphics/RectF;

    .line 179
    .line 180
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    const/4 v8, 0x0

    .line 188
    const/4 v10, 0x0

    .line 189
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    if-eqz v15, :cond_13

    .line 194
    .line 195
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 200
    .line 201
    iget-boolean v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 202
    .line 203
    if-eqz v9, :cond_b

    .line 204
    .line 205
    move-object/from16 v19, v6

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 209
    .line 210
    if-eqz v9, :cond_11

    .line 211
    .line 212
    iget-boolean v11, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 213
    .line 214
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 215
    .line 216
    .line 217
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 218
    .line 219
    invoke-virtual {v9, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    if-eqz v9, :cond_c

    .line 224
    .line 225
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    move-object/from16 v19, v6

    .line 230
    .line 231
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    invoke-virtual {v9, v11, v6}, Landroid/graphics/RectF;->contains(FF)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-nez v6, :cond_d

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_c
    move-object/from16 v19, v6

    .line 243
    .line 244
    :cond_d
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 245
    .line 246
    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    if-eqz v6, :cond_e

    .line 251
    .line 252
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    invoke-virtual {v6, v9, v11}, Landroid/graphics/RectF;->contains(FF)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_e

    .line 265
    .line 266
    :goto_3
    move-object/from16 v6, v19

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_e
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 270
    .line 271
    iget v9, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 272
    .line 273
    mul-float/2addr v9, v13

    .line 274
    iget v11, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 275
    .line 276
    mul-float/2addr v11, v12

    .line 277
    add-float/2addr v11, v9

    .line 278
    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 279
    .line 280
    if-eqz v6, :cond_f

    .line 281
    .line 282
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 287
    .line 288
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    const/high16 v9, 0x3f000000    # 0.5f

    .line 292
    .line 293
    sub-float/2addr v6, v9

    .line 294
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    iget-object v9, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    const/high16 v9, 0x3f000000    # 0.5f

    .line 304
    .line 305
    sub-float/2addr v11, v9

    .line 306
    add-float v9, v13, v6

    .line 307
    .line 308
    move-object/from16 v20, v4

    .line 309
    .line 310
    add-float v4, v12, v11

    .line 311
    .line 312
    move/from16 v21, v12

    .line 313
    .line 314
    move/from16 v22, v13

    .line 315
    .line 316
    float-to-double v12, v4

    .line 317
    move-object v4, v10

    .line 318
    float-to-double v9, v9

    .line 319
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 320
    .line 321
    .line 322
    move-result-wide v9

    .line 323
    float-to-double v12, v6

    .line 324
    move-object/from16 v23, v4

    .line 325
    .line 326
    move-object v6, v5

    .line 327
    float-to-double v4, v11

    .line 328
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 329
    .line 330
    .line 331
    move-result-wide v4

    .line 332
    sub-double/2addr v9, v4

    .line 333
    double-to-float v4, v9

    .line 334
    const/high16 v5, 0x41200000    # 10.0f

    .line 335
    .line 336
    mul-float v11, v4, v5

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_f
    move-object/from16 v20, v4

    .line 340
    .line 341
    move-object v6, v5

    .line 342
    move-object/from16 v23, v10

    .line 343
    .line 344
    move/from16 v21, v12

    .line 345
    .line 346
    move/from16 v22, v13

    .line 347
    .line 348
    :goto_4
    iget v4, v15, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 349
    .line 350
    if-ne v4, v3, :cond_10

    .line 351
    .line 352
    const/high16 v4, -0x40800000    # -1.0f

    .line 353
    .line 354
    :goto_5
    mul-float/2addr v11, v4

    .line 355
    goto :goto_6

    .line 356
    :cond_10
    const v4, 0x3f8ccccd    # 1.1f

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :goto_6
    cmpl-float v4, v11, v8

    .line 361
    .line 362
    if-lez v4, :cond_12

    .line 363
    .line 364
    move v8, v11

    .line 365
    move-object v10, v15

    .line 366
    goto :goto_7

    .line 367
    :cond_11
    move-object/from16 v20, v4

    .line 368
    .line 369
    move-object/from16 v19, v6

    .line 370
    .line 371
    move-object/from16 v23, v10

    .line 372
    .line 373
    move/from16 v21, v12

    .line 374
    .line 375
    move/from16 v22, v13

    .line 376
    .line 377
    move-object v6, v5

    .line 378
    :cond_12
    move-object/from16 v10, v23

    .line 379
    .line 380
    :goto_7
    move-object v5, v6

    .line 381
    move-object/from16 v6, v19

    .line 382
    .line 383
    move-object/from16 v4, v20

    .line 384
    .line 385
    move/from16 v12, v21

    .line 386
    .line 387
    move/from16 v13, v22

    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :cond_13
    move-object v6, v5

    .line 392
    move-object/from16 v23, v10

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_14
    move-object v6, v5

    .line 396
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 397
    .line 398
    :goto_8
    if-eqz v10, :cond_19

    .line 399
    .line 400
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 401
    .line 402
    .line 403
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 404
    .line 405
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 406
    .line 407
    invoke-virtual {v3, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_15

    .line 412
    .line 413
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 414
    .line 415
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 420
    .line 421
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-nez v3, :cond_15

    .line 430
    .line 431
    const/4 v3, 0x1

    .line 432
    goto :goto_9

    .line 433
    :cond_15
    const/4 v3, 0x0

    .line 434
    :goto_9
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 435
    .line 436
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 437
    .line 438
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 439
    .line 440
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 441
    .line 442
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 443
    .line 444
    iput v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 445
    .line 446
    iput v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 447
    .line 448
    const/4 v4, 0x0

    .line 449
    iput-boolean v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_16
    move-object v6, v5

    .line 453
    const/4 v4, 0x0

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 459
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 465
    .line 466
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 467
    .line 468
    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 469
    .line 470
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 471
    .line 472
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 473
    .line 474
    if-eqz v1, :cond_65

    .line 475
    .line 476
    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    if-eqz v1, :cond_17

    .line 481
    .line 482
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 483
    .line 484
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 489
    .line 490
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-nez v1, :cond_17

    .line 499
    .line 500
    const/4 v1, 0x0

    .line 501
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 502
    .line 503
    const/4 v1, 0x1

    .line 504
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 505
    .line 506
    goto/16 :goto_2f

    .line 507
    .line 508
    :cond_17
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 509
    .line 510
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 511
    .line 512
    invoke-virtual {v1, v7, v6}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    if-eqz v1, :cond_18

    .line 517
    .line 518
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 519
    .line 520
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    .line 525
    .line 526
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-nez v1, :cond_18

    .line 535
    .line 536
    const/4 v1, 0x1

    .line 537
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_18
    const/4 v1, 0x0

    .line 541
    iput-boolean v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 542
    .line 543
    :goto_a
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 544
    .line 545
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 546
    .line 547
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 548
    .line 549
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 550
    .line 551
    iput v3, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 552
    .line 553
    iput v2, v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 554
    .line 555
    goto/16 :goto_2f

    .line 556
    .line 557
    :cond_19
    :goto_b
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    .line 558
    .line 559
    if-eqz v3, :cond_1a

    .line 560
    .line 561
    goto/16 :goto_2f

    .line 562
    .line 563
    :cond_1a
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 564
    .line 565
    if-eqz v3, :cond_61

    .line 566
    .line 567
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 568
    .line 569
    if-eqz v3, :cond_61

    .line 570
    .line 571
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    .line 572
    .line 573
    if-nez v4, :cond_61

    .line 574
    .line 575
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 576
    .line 577
    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 578
    .line 579
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 580
    .line 581
    iget-object v7, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 582
    .line 583
    iget-object v8, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 584
    .line 585
    if-eqz v5, :cond_3f

    .line 586
    .line 587
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 588
    .line 589
    if-eqz v5, :cond_1b

    .line 590
    .line 591
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 592
    .line 593
    .line 594
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    if-eqz v5, :cond_3d

    .line 599
    .line 600
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 601
    .line 602
    const/high16 v23, 0x43b40000    # 360.0f

    .line 603
    .line 604
    const/high16 v24, 0x40000000    # 2.0f

    .line 605
    .line 606
    const/4 v10, 0x1

    .line 607
    if-eq v5, v10, :cond_2d

    .line 608
    .line 609
    const/4 v10, 0x2

    .line 610
    if-eq v5, v10, :cond_1d

    .line 611
    .line 612
    :cond_1c
    move-object/from16 v31, v2

    .line 613
    .line 614
    goto/16 :goto_1c

    .line 615
    .line 616
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 617
    .line 618
    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 620
    .line 621
    .line 622
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    int-to-float v5, v5

    .line 627
    div-float v5, v5, v24

    .line 628
    .line 629
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    int-to-float v6, v6

    .line 634
    div-float v6, v6, v24

    .line 635
    .line 636
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 637
    .line 638
    const/4 v11, -0x1

    .line 639
    if-eq v10, v11, :cond_1e

    .line 640
    .line 641
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 646
    .line 647
    .line 648
    const/4 v6, 0x0

    .line 649
    aget v10, v9, v6

    .line 650
    .line 651
    int-to-float v6, v10

    .line 652
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 653
    .line 654
    .line 655
    move-result v10

    .line 656
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 657
    .line 658
    .line 659
    move-result v11

    .line 660
    add-int/2addr v11, v10

    .line 661
    int-to-float v10, v11

    .line 662
    div-float v10, v10, v24

    .line 663
    .line 664
    add-float/2addr v6, v10

    .line 665
    const/4 v10, 0x1

    .line 666
    aget v9, v9, v10

    .line 667
    .line 668
    int-to-float v9, v9

    .line 669
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 670
    .line 671
    .line 672
    move-result v10

    .line 673
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    add-int/2addr v5, v10

    .line 678
    int-to-float v5, v5

    .line 679
    div-float v5, v5, v24

    .line 680
    .line 681
    add-float/2addr v5, v9

    .line 682
    move/from16 v32, v6

    .line 683
    .line 684
    move v6, v5

    .line 685
    move/from16 v5, v32

    .line 686
    .line 687
    goto :goto_c

    .line 688
    :cond_1e
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 689
    .line 690
    const/4 v11, -0x1

    .line 691
    if-eq v10, v11, :cond_20

    .line 692
    .line 693
    iget-object v11, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 694
    .line 695
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object v10

    .line 699
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v10

    .line 703
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 704
    .line 705
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 706
    .line 707
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 708
    .line 709
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 710
    .line 711
    .line 712
    move-result-object v10

    .line 713
    if-nez v10, :cond_1f

    .line 714
    .line 715
    const-string v9, "TouchResponse"

    .line 716
    .line 717
    const-string v10, "could not find view to animate to"

    .line 718
    .line 719
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    goto :goto_c

    .line 723
    :cond_1f
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 724
    .line 725
    .line 726
    const/4 v5, 0x0

    .line 727
    aget v6, v9, v5

    .line 728
    .line 729
    int-to-float v5, v6

    .line 730
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 735
    .line 736
    .line 737
    move-result v11

    .line 738
    add-int/2addr v11, v6

    .line 739
    int-to-float v6, v11

    .line 740
    div-float v6, v6, v24

    .line 741
    .line 742
    add-float/2addr v5, v6

    .line 743
    const/4 v6, 0x1

    .line 744
    aget v9, v9, v6

    .line 745
    .line 746
    int-to-float v6, v9

    .line 747
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 748
    .line 749
    .line 750
    move-result v9

    .line 751
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 752
    .line 753
    .line 754
    move-result v10

    .line 755
    add-int/2addr v10, v9

    .line 756
    int-to-float v9, v10

    .line 757
    div-float v9, v9, v24

    .line 758
    .line 759
    add-float/2addr v6, v9

    .line 760
    :cond_20
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 761
    .line 762
    .line 763
    move-result v9

    .line 764
    sub-float/2addr v9, v5

    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 766
    .line 767
    .line 768
    move-result v10

    .line 769
    sub-float/2addr v10, v6

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 771
    .line 772
    .line 773
    move-result v11

    .line 774
    sub-float/2addr v11, v6

    .line 775
    float-to-double v14, v11

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 777
    .line 778
    .line 779
    move-result v11

    .line 780
    sub-float/2addr v11, v5

    .line 781
    float-to-double v12, v11

    .line 782
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 783
    .line 784
    .line 785
    move-result-wide v11

    .line 786
    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 787
    .line 788
    sub-float/2addr v13, v6

    .line 789
    float-to-double v13, v13

    .line 790
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 791
    .line 792
    sub-float/2addr v6, v5

    .line 793
    float-to-double v5, v6

    .line 794
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 795
    .line 796
    .line 797
    move-result-wide v5

    .line 798
    sub-double v5, v11, v5

    .line 799
    .line 800
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    mul-double/2addr v5, v13

    .line 806
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    div-double/2addr v5, v13

    .line 812
    double-to-float v5, v5

    .line 813
    const/high16 v6, 0x43a50000    # 330.0f

    .line 814
    .line 815
    cmpl-float v6, v5, v6

    .line 816
    .line 817
    if-lez v6, :cond_21

    .line 818
    .line 819
    sub-float v5, v5, v23

    .line 820
    .line 821
    goto :goto_d

    .line 822
    :cond_21
    const/high16 v6, -0x3c5b0000    # -330.0f

    .line 823
    .line 824
    cmpg-float v6, v5, v6

    .line 825
    .line 826
    if-gez v6, :cond_22

    .line 827
    .line 828
    add-float v5, v5, v23

    .line 829
    .line 830
    :cond_22
    :goto_d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    float-to-double v13, v6

    .line 835
    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    cmpl-double v6, v13, v19

    .line 841
    .line 842
    if-gtz v6, :cond_23

    .line 843
    .line 844
    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 845
    .line 846
    if-eqz v6, :cond_1c

    .line 847
    .line 848
    :cond_23
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 849
    .line 850
    .line 851
    move-result v6

    .line 852
    iget-boolean v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 853
    .line 854
    if-nez v13, :cond_24

    .line 855
    .line 856
    const/4 v13, 0x1

    .line 857
    iput-boolean v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 858
    .line 859
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 860
    .line 861
    .line 862
    :cond_24
    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 863
    .line 864
    const/4 v14, -0x1

    .line 865
    if-eq v13, v14, :cond_25

    .line 866
    .line 867
    iget v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 868
    .line 869
    iget v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 870
    .line 871
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 872
    .line 873
    move-object/from16 v31, v2

    .line 874
    .line 875
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 876
    .line 877
    move-object/from16 v25, v2

    .line 878
    .line 879
    move/from16 v26, v13

    .line 880
    .line 881
    move/from16 v27, v6

    .line 882
    .line 883
    move/from16 v28, v14

    .line 884
    .line 885
    move/from16 v29, v15

    .line 886
    .line 887
    move-object/from16 v30, v0

    .line 888
    .line 889
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 890
    .line 891
    .line 892
    const/4 v0, 0x1

    .line 893
    aget v2, v7, v0

    .line 894
    .line 895
    float-to-double v13, v2

    .line 896
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    .line 897
    .line 898
    .line 899
    move-result-wide v13

    .line 900
    double-to-float v2, v13

    .line 901
    aput v2, v7, v0

    .line 902
    .line 903
    goto :goto_e

    .line 904
    :cond_25
    move-object/from16 v31, v2

    .line 905
    .line 906
    const/4 v0, 0x1

    .line 907
    aput v23, v7, v0

    .line 908
    .line 909
    :goto_e
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 910
    .line 911
    mul-float/2addr v5, v2

    .line 912
    aget v2, v7, v0

    .line 913
    .line 914
    div-float/2addr v5, v2

    .line 915
    add-float/2addr v5, v6

    .line 916
    const/high16 v0, 0x3f800000    # 1.0f

    .line 917
    .line 918
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    const/4 v5, 0x0

    .line 923
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 928
    .line 929
    .line 930
    move-result v6

    .line 931
    cmpl-float v7, v2, v6

    .line 932
    .line 933
    if-eqz v7, :cond_2c

    .line 934
    .line 935
    cmpl-float v7, v6, v5

    .line 936
    .line 937
    if-eqz v7, :cond_26

    .line 938
    .line 939
    cmpl-float v0, v6, v0

    .line 940
    .line 941
    if-nez v0, :cond_28

    .line 942
    .line 943
    :cond_26
    if-nez v7, :cond_27

    .line 944
    .line 945
    const/4 v0, 0x1

    .line 946
    goto :goto_f

    .line 947
    :cond_27
    const/4 v0, 0x0

    .line 948
    :goto_f
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 949
    .line 950
    .line 951
    :cond_28
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 952
    .line 953
    .line 954
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 955
    .line 956
    if-eqz v0, :cond_29

    .line 957
    .line 958
    const/16 v2, 0x3e8

    .line 959
    .line 960
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 961
    .line 962
    .line 963
    :cond_29
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 964
    .line 965
    if-eqz v0, :cond_2a

    .line 966
    .line 967
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    goto :goto_10

    .line 972
    :cond_2a
    const/4 v0, 0x0

    .line 973
    :goto_10
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 974
    .line 975
    if-eqz v2, :cond_2b

    .line 976
    .line 977
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 978
    .line 979
    .line 980
    move-result v6

    .line 981
    goto :goto_11

    .line 982
    :cond_2b
    const/4 v6, 0x0

    .line 983
    :goto_11
    float-to-double v4, v6

    .line 984
    float-to-double v6, v0

    .line 985
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 986
    .line 987
    .line 988
    move-result-wide v13

    .line 989
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 990
    .line 991
    .line 992
    move-result-wide v4

    .line 993
    sub-double/2addr v4, v11

    .line 994
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 995
    .line 996
    .line 997
    move-result-wide v4

    .line 998
    mul-double/2addr v4, v13

    .line 999
    float-to-double v6, v9

    .line 1000
    float-to-double v9, v10

    .line 1001
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    .line 1002
    .line 1003
    .line 1004
    move-result-wide v6

    .line 1005
    div-double/2addr v4, v6

    .line 1006
    double-to-float v0, v4

    .line 1007
    float-to-double v4, v0

    .line 1008
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 1009
    .line 1010
    .line 1011
    move-result-wide v4

    .line 1012
    double-to-float v0, v4

    .line 1013
    iput v0, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1014
    .line 1015
    goto :goto_12

    .line 1016
    :cond_2c
    move v0, v5

    .line 1017
    iput v0, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1018
    .line 1019
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1020
    .line 1021
    .line 1022
    move-result v0

    .line 1023
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1024
    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1030
    .line 1031
    goto/16 :goto_1c

    .line 1032
    .line 1033
    :cond_2d
    move-object/from16 v31, v2

    .line 1034
    .line 1035
    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1037
    .line 1038
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1039
    .line 1040
    if-eqz v0, :cond_2e

    .line 1041
    .line 1042
    const/16 v2, 0x10

    .line 1043
    .line 1044
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1045
    .line 1046
    .line 1047
    :cond_2e
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1048
    .line 1049
    if-eqz v0, :cond_2f

    .line 1050
    .line 1051
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    goto :goto_13

    .line 1056
    :cond_2f
    const/4 v0, 0x0

    .line 1057
    :goto_13
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1058
    .line 1059
    if-eqz v2, :cond_30

    .line 1060
    .line 1061
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1062
    .line 1063
    .line 1064
    move-result v2

    .line 1065
    goto :goto_14

    .line 1066
    :cond_30
    const/4 v2, 0x0

    .line 1067
    :goto_14
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1068
    .line 1069
    .line 1070
    move-result v4

    .line 1071
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 1072
    .line 1073
    .line 1074
    move-result v5

    .line 1075
    int-to-float v5, v5

    .line 1076
    div-float v5, v5, v24

    .line 1077
    .line 1078
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    .line 1079
    .line 1080
    .line 1081
    move-result v10

    .line 1082
    int-to-float v10, v10

    .line 1083
    div-float v10, v10, v24

    .line 1084
    .line 1085
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 1086
    .line 1087
    const/4 v13, -0x1

    .line 1088
    if-eq v12, v13, :cond_31

    .line 1089
    .line 1090
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1095
    .line 1096
    .line 1097
    const/4 v10, 0x0

    .line 1098
    aget v10, v9, v10

    .line 1099
    .line 1100
    int-to-float v10, v10

    .line 1101
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 1102
    .line 1103
    .line 1104
    move-result v12

    .line 1105
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 1106
    .line 1107
    .line 1108
    move-result v13

    .line 1109
    add-int/2addr v13, v12

    .line 1110
    int-to-float v12, v13

    .line 1111
    div-float v12, v12, v24

    .line 1112
    .line 1113
    add-float/2addr v10, v12

    .line 1114
    const/4 v12, 0x1

    .line 1115
    aget v9, v9, v12

    .line 1116
    .line 1117
    int-to-float v9, v9

    .line 1118
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1119
    .line 1120
    .line 1121
    move-result v12

    .line 1122
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 1123
    .line 1124
    .line 1125
    move-result v5

    .line 1126
    :goto_15
    add-int/2addr v5, v12

    .line 1127
    int-to-float v5, v5

    .line 1128
    div-float v5, v5, v24

    .line 1129
    .line 1130
    add-float/2addr v5, v9

    .line 1131
    move/from16 v32, v10

    .line 1132
    .line 1133
    move v10, v5

    .line 1134
    move/from16 v5, v32

    .line 1135
    .line 1136
    goto :goto_16

    .line 1137
    :cond_31
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1138
    .line 1139
    const/4 v13, -0x1

    .line 1140
    if-eq v12, v13, :cond_32

    .line 1141
    .line 1142
    iget-object v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 1143
    .line 1144
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v10

    .line 1148
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1153
    .line 1154
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 1155
    .line 1156
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 1157
    .line 1158
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v5

    .line 1162
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1163
    .line 1164
    .line 1165
    const/4 v10, 0x0

    .line 1166
    aget v10, v9, v10

    .line 1167
    .line 1168
    int-to-float v10, v10

    .line 1169
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 1170
    .line 1171
    .line 1172
    move-result v12

    .line 1173
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 1174
    .line 1175
    .line 1176
    move-result v13

    .line 1177
    add-int/2addr v13, v12

    .line 1178
    int-to-float v12, v13

    .line 1179
    div-float v12, v12, v24

    .line 1180
    .line 1181
    add-float/2addr v10, v12

    .line 1182
    const/4 v12, 0x1

    .line 1183
    aget v9, v9, v12

    .line 1184
    .line 1185
    int-to-float v9, v9

    .line 1186
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1187
    .line 1188
    .line 1189
    move-result v12

    .line 1190
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 1191
    .line 1192
    .line 1193
    move-result v5

    .line 1194
    goto :goto_15

    .line 1195
    :cond_32
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1196
    .line 1197
    .line 1198
    move-result v9

    .line 1199
    sub-float/2addr v9, v5

    .line 1200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1201
    .line 1202
    .line 1203
    move-result v5

    .line 1204
    sub-float/2addr v5, v10

    .line 1205
    float-to-double v12, v5

    .line 1206
    float-to-double v14, v9

    .line 1207
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v12

    .line 1211
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v12

    .line 1215
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1216
    .line 1217
    const/4 v14, -0x1

    .line 1218
    if-eq v10, v14, :cond_33

    .line 1219
    .line 1220
    iget v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1221
    .line 1222
    iget v15, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1223
    .line 1224
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1225
    .line 1226
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1227
    .line 1228
    move-object/from16 v25, v1

    .line 1229
    .line 1230
    move/from16 v26, v10

    .line 1231
    .line 1232
    move/from16 v27, v4

    .line 1233
    .line 1234
    move/from16 v28, v14

    .line 1235
    .line 1236
    move/from16 v29, v15

    .line 1237
    .line 1238
    move-object/from16 v30, v11

    .line 1239
    .line 1240
    invoke-virtual/range {v25 .. v30}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1241
    .line 1242
    .line 1243
    const/4 v1, 0x1

    .line 1244
    aget v10, v7, v1

    .line 1245
    .line 1246
    float-to-double v10, v10

    .line 1247
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v10

    .line 1251
    double-to-float v10, v10

    .line 1252
    aput v10, v7, v1

    .line 1253
    .line 1254
    goto :goto_17

    .line 1255
    :cond_33
    const/4 v1, 0x1

    .line 1256
    aput v23, v7, v1

    .line 1257
    .line 1258
    :goto_17
    add-float/2addr v2, v5

    .line 1259
    float-to-double v1, v2

    .line 1260
    add-float/2addr v0, v9

    .line 1261
    float-to-double v9, v0

    .line 1262
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 1263
    .line 1264
    .line 1265
    move-result-wide v0

    .line 1266
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 1267
    .line 1268
    .line 1269
    move-result-wide v0

    .line 1270
    sub-double/2addr v0, v12

    .line 1271
    double-to-float v0, v0

    .line 1272
    const/high16 v1, 0x427a0000    # 62.5f

    .line 1273
    .line 1274
    mul-float/2addr v0, v1

    .line 1275
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v1

    .line 1279
    if-nez v1, :cond_34

    .line 1280
    .line 1281
    const/high16 v1, 0x40400000    # 3.0f

    .line 1282
    .line 1283
    mul-float v11, v0, v1

    .line 1284
    .line 1285
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1286
    .line 1287
    mul-float/2addr v11, v1

    .line 1288
    const/4 v1, 0x1

    .line 1289
    aget v2, v7, v1

    .line 1290
    .line 1291
    div-float/2addr v11, v2

    .line 1292
    add-float/2addr v11, v4

    .line 1293
    :goto_18
    const/4 v1, 0x0

    .line 1294
    goto :goto_19

    .line 1295
    :cond_34
    move v11, v4

    .line 1296
    goto :goto_18

    .line 1297
    :goto_19
    cmpl-float v2, v11, v1

    .line 1298
    .line 1299
    if-eqz v2, :cond_3b

    .line 1300
    .line 1301
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1302
    .line 1303
    cmpl-float v2, v11, v1

    .line 1304
    .line 1305
    if-eqz v2, :cond_3b

    .line 1306
    .line 1307
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1308
    .line 1309
    const/4 v2, 0x3

    .line 1310
    if-eq v1, v2, :cond_3b

    .line 1311
    .line 1312
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1313
    .line 1314
    mul-float/2addr v0, v2

    .line 1315
    const/4 v2, 0x1

    .line 1316
    aget v5, v7, v2

    .line 1317
    .line 1318
    div-float/2addr v0, v5

    .line 1319
    float-to-double v9, v11

    .line 1320
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 1321
    .line 1322
    cmpg-double v2, v9, v11

    .line 1323
    .line 1324
    if-gez v2, :cond_35

    .line 1325
    .line 1326
    const/4 v2, 0x0

    .line 1327
    :goto_1a
    const/4 v5, 0x6

    .line 1328
    goto :goto_1b

    .line 1329
    :cond_35
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1330
    .line 1331
    goto :goto_1a

    .line 1332
    :goto_1b
    if-ne v1, v5, :cond_37

    .line 1333
    .line 1334
    add-float v1, v4, v0

    .line 1335
    .line 1336
    const/4 v2, 0x0

    .line 1337
    cmpg-float v1, v1, v2

    .line 1338
    .line 1339
    if-gez v1, :cond_36

    .line 1340
    .line 1341
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1342
    .line 1343
    .line 1344
    move-result v0

    .line 1345
    :cond_36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1346
    .line 1347
    :cond_37
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1348
    .line 1349
    const/4 v5, 0x7

    .line 1350
    if-ne v1, v5, :cond_39

    .line 1351
    .line 1352
    add-float v1, v4, v0

    .line 1353
    .line 1354
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1355
    .line 1356
    cmpl-float v1, v1, v2

    .line 1357
    .line 1358
    if-lez v1, :cond_38

    .line 1359
    .line 1360
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    neg-float v0, v0

    .line 1365
    :cond_38
    const/4 v2, 0x0

    .line 1366
    :cond_39
    iget v1, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1367
    .line 1368
    const/high16 v3, 0x40400000    # 3.0f

    .line 1369
    .line 1370
    mul-float/2addr v0, v3

    .line 1371
    invoke-virtual {v8, v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 1372
    .line 1373
    .line 1374
    const/4 v0, 0x0

    .line 1375
    cmpl-float v0, v0, v4

    .line 1376
    .line 1377
    if-gez v0, :cond_3a

    .line 1378
    .line 1379
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1380
    .line 1381
    cmpg-float v0, v0, v4

    .line 1382
    .line 1383
    if-gtz v0, :cond_3e

    .line 1384
    .line 1385
    :cond_3a
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_1c

    .line 1389
    :cond_3b
    const/4 v0, 0x0

    .line 1390
    cmpl-float v0, v0, v11

    .line 1391
    .line 1392
    if-gez v0, :cond_3c

    .line 1393
    .line 1394
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1395
    .line 1396
    cmpg-float v0, v0, v11

    .line 1397
    .line 1398
    if-gtz v0, :cond_3e

    .line 1399
    .line 1400
    :cond_3c
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1401
    .line 1402
    .line 1403
    goto :goto_1c

    .line 1404
    :cond_3d
    move-object/from16 v31, v2

    .line 1405
    .line 1406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1411
    .line 1412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1413
    .line 1414
    .line 1415
    move-result v0

    .line 1416
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1417
    .line 1418
    const/4 v0, 0x0

    .line 1419
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1420
    .line 1421
    :cond_3e
    :goto_1c
    move-object/from16 v1, p1

    .line 1422
    .line 1423
    goto/16 :goto_2d

    .line 1424
    .line 1425
    :cond_3f
    move-object/from16 v31, v2

    .line 1426
    .line 1427
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1428
    .line 1429
    move-object/from16 v1, p1

    .line 1430
    .line 1431
    if-eqz v0, :cond_40

    .line 1432
    .line 1433
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1434
    .line 1435
    .line 1436
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-eqz v0, :cond_60

    .line 1441
    .line 1442
    const/4 v2, 0x1

    .line 1443
    if-eq v0, v2, :cond_51

    .line 1444
    .line 1445
    const/4 v2, 0x2

    .line 1446
    if-eq v0, v2, :cond_41

    .line 1447
    .line 1448
    goto/16 :goto_2d

    .line 1449
    .line 1450
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1451
    .line 1452
    .line 1453
    move-result v0

    .line 1454
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1455
    .line 1456
    sub-float/2addr v0, v2

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1462
    .line 1463
    sub-float/2addr v2, v5

    .line 1464
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1465
    .line 1466
    mul-float/2addr v5, v2

    .line 1467
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1468
    .line 1469
    mul-float/2addr v6, v0

    .line 1470
    add-float/2addr v6, v5

    .line 1471
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 1472
    .line 1473
    .line 1474
    move-result v5

    .line 1475
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 1476
    .line 1477
    cmpl-float v5, v5, v6

    .line 1478
    .line 1479
    if-gtz v5, :cond_42

    .line 1480
    .line 1481
    iget-boolean v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1482
    .line 1483
    if-eqz v5, :cond_62

    .line 1484
    .line 1485
    :cond_42
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1486
    .line 1487
    .line 1488
    move-result v5

    .line 1489
    iget-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1490
    .line 1491
    if-nez v6, :cond_43

    .line 1492
    .line 1493
    const/4 v6, 0x1

    .line 1494
    iput-boolean v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1495
    .line 1496
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1497
    .line 1498
    .line 1499
    :cond_43
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1500
    .line 1501
    const/4 v6, -0x1

    .line 1502
    if-eq v10, v6, :cond_44

    .line 1503
    .line 1504
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1505
    .line 1506
    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1507
    .line 1508
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1509
    .line 1510
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1511
    .line 1512
    move v11, v5

    .line 1513
    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1514
    .line 1515
    .line 1516
    const/4 v9, 0x0

    .line 1517
    const/4 v10, 0x1

    .line 1518
    goto :goto_1d

    .line 1519
    :cond_44
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 1520
    .line 1521
    .line 1522
    move-result v6

    .line 1523
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    .line 1524
    .line 1525
    .line 1526
    move-result v9

    .line 1527
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 1528
    .line 1529
    .line 1530
    move-result v6

    .line 1531
    int-to-float v6, v6

    .line 1532
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1533
    .line 1534
    mul-float/2addr v9, v6

    .line 1535
    const/4 v10, 0x1

    .line 1536
    aput v9, v7, v10

    .line 1537
    .line 1538
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1539
    .line 1540
    mul-float/2addr v6, v9

    .line 1541
    const/4 v9, 0x0

    .line 1542
    aput v6, v7, v9

    .line 1543
    .line 1544
    :goto_1d
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1545
    .line 1546
    aget v11, v7, v9

    .line 1547
    .line 1548
    mul-float/2addr v6, v11

    .line 1549
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1550
    .line 1551
    aget v11, v7, v10

    .line 1552
    .line 1553
    mul-float/2addr v9, v11

    .line 1554
    add-float/2addr v9, v6

    .line 1555
    iget v6, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 1556
    .line 1557
    mul-float/2addr v9, v6

    .line 1558
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 1559
    .line 1560
    .line 1561
    move-result v6

    .line 1562
    float-to-double v11, v6

    .line 1563
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    cmpg-double v6, v11, v13

    .line 1569
    .line 1570
    const v9, 0x3c23d70a    # 0.01f

    .line 1571
    .line 1572
    .line 1573
    if-gez v6, :cond_45

    .line 1574
    .line 1575
    const/4 v6, 0x0

    .line 1576
    aput v9, v7, v6

    .line 1577
    .line 1578
    aput v9, v7, v10

    .line 1579
    .line 1580
    goto :goto_1e

    .line 1581
    :cond_45
    const/4 v6, 0x0

    .line 1582
    :goto_1e
    iget v11, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1583
    .line 1584
    const/4 v12, 0x0

    .line 1585
    cmpl-float v11, v11, v12

    .line 1586
    .line 1587
    if-eqz v11, :cond_46

    .line 1588
    .line 1589
    aget v0, v7, v6

    .line 1590
    .line 1591
    div-float/2addr v2, v0

    .line 1592
    goto :goto_1f

    .line 1593
    :cond_46
    aget v2, v7, v10

    .line 1594
    .line 1595
    div-float v2, v0, v2

    .line 1596
    .line 1597
    :goto_1f
    add-float/2addr v5, v2

    .line 1598
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1599
    .line 1600
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    .line 1601
    .line 1602
    .line 1603
    move-result v2

    .line 1604
    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    .line 1605
    .line 1606
    .line 1607
    move-result v0

    .line 1608
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1609
    .line 1610
    const/4 v5, 0x6

    .line 1611
    if-ne v2, v5, :cond_47

    .line 1612
    .line 1613
    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    .line 1614
    .line 1615
    .line 1616
    move-result v0

    .line 1617
    :cond_47
    iget v2, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1618
    .line 1619
    const/4 v5, 0x7

    .line 1620
    if-ne v2, v5, :cond_48

    .line 1621
    .line 1622
    const v2, 0x3f7d70a4    # 0.99f

    .line 1623
    .line 1624
    .line 1625
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    :cond_48
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1630
    .line 1631
    .line 1632
    move-result v2

    .line 1633
    cmpl-float v5, v0, v2

    .line 1634
    .line 1635
    if-eqz v5, :cond_50

    .line 1636
    .line 1637
    const/4 v5, 0x0

    .line 1638
    cmpl-float v6, v2, v5

    .line 1639
    .line 1640
    if-eqz v6, :cond_49

    .line 1641
    .line 1642
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1643
    .line 1644
    cmpl-float v2, v2, v5

    .line 1645
    .line 1646
    if-nez v2, :cond_4b

    .line 1647
    .line 1648
    :cond_49
    if-nez v6, :cond_4a

    .line 1649
    .line 1650
    const/4 v2, 0x1

    .line 1651
    goto :goto_20

    .line 1652
    :cond_4a
    const/4 v2, 0x0

    .line 1653
    :goto_20
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 1654
    .line 1655
    .line 1656
    :cond_4b
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1657
    .line 1658
    .line 1659
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1660
    .line 1661
    if-eqz v0, :cond_4c

    .line 1662
    .line 1663
    const/16 v2, 0x3e8

    .line 1664
    .line 1665
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1666
    .line 1667
    .line 1668
    :cond_4c
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1669
    .line 1670
    if-eqz v0, :cond_4d

    .line 1671
    .line 1672
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1673
    .line 1674
    .line 1675
    move-result v0

    .line 1676
    goto :goto_21

    .line 1677
    :cond_4d
    const/4 v0, 0x0

    .line 1678
    :goto_21
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1679
    .line 1680
    if-eqz v2, :cond_4e

    .line 1681
    .line 1682
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1683
    .line 1684
    .line 1685
    move-result v2

    .line 1686
    goto :goto_22

    .line 1687
    :cond_4e
    const/4 v2, 0x0

    .line 1688
    :goto_22
    iget v4, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1689
    .line 1690
    const/4 v5, 0x0

    .line 1691
    cmpl-float v4, v4, v5

    .line 1692
    .line 1693
    if-eqz v4, :cond_4f

    .line 1694
    .line 1695
    const/4 v4, 0x0

    .line 1696
    aget v2, v7, v4

    .line 1697
    .line 1698
    div-float/2addr v0, v2

    .line 1699
    goto :goto_23

    .line 1700
    :cond_4f
    const/4 v0, 0x1

    .line 1701
    aget v4, v7, v0

    .line 1702
    .line 1703
    div-float v0, v2, v4

    .line 1704
    .line 1705
    :goto_23
    iput v0, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1706
    .line 1707
    goto :goto_24

    .line 1708
    :cond_50
    const/4 v5, 0x0

    .line 1709
    iput v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1710
    .line 1711
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1712
    .line 1713
    .line 1714
    move-result v0

    .line 1715
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1716
    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1718
    .line 1719
    .line 1720
    move-result v0

    .line 1721
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1722
    .line 1723
    goto/16 :goto_2d

    .line 1724
    .line 1725
    :cond_51
    const/4 v0, 0x0

    .line 1726
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1727
    .line 1728
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1729
    .line 1730
    if-eqz v0, :cond_52

    .line 1731
    .line 1732
    const/16 v2, 0x3e8

    .line 1733
    .line 1734
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1735
    .line 1736
    .line 1737
    :cond_52
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1738
    .line 1739
    if-eqz v0, :cond_53

    .line 1740
    .line 1741
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 1742
    .line 1743
    .line 1744
    move-result v0

    .line 1745
    goto :goto_25

    .line 1746
    :cond_53
    const/4 v0, 0x0

    .line 1747
    :goto_25
    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1748
    .line 1749
    if-eqz v2, :cond_54

    .line 1750
    .line 1751
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 1752
    .line 1753
    .line 1754
    move-result v2

    .line 1755
    goto :goto_26

    .line 1756
    :cond_54
    const/4 v2, 0x0

    .line 1757
    :goto_26
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 1758
    .line 1759
    .line 1760
    move-result v4

    .line 1761
    iget v10, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 1762
    .line 1763
    const/4 v5, -0x1

    .line 1764
    if-eq v10, v5, :cond_55

    .line 1765
    .line 1766
    iget v12, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 1767
    .line 1768
    iget v13, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 1769
    .line 1770
    iget-object v14, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 1771
    .line 1772
    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1773
    .line 1774
    move v11, v4

    .line 1775
    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 1776
    .line 1777
    .line 1778
    const/4 v9, 0x0

    .line 1779
    const/4 v10, 0x1

    .line 1780
    goto :goto_27

    .line 1781
    :cond_55
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 1782
    .line 1783
    .line 1784
    move-result v5

    .line 1785
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    .line 1786
    .line 1787
    .line 1788
    move-result v9

    .line 1789
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 1790
    .line 1791
    .line 1792
    move-result v5

    .line 1793
    int-to-float v5, v5

    .line 1794
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 1795
    .line 1796
    mul-float/2addr v9, v5

    .line 1797
    const/4 v10, 0x1

    .line 1798
    aput v9, v7, v10

    .line 1799
    .line 1800
    iget v9, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1801
    .line 1802
    mul-float/2addr v5, v9

    .line 1803
    const/4 v9, 0x0

    .line 1804
    aput v5, v7, v9

    .line 1805
    .line 1806
    :goto_27
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 1807
    .line 1808
    aget v9, v7, v9

    .line 1809
    .line 1810
    aget v7, v7, v10

    .line 1811
    .line 1812
    const/4 v10, 0x0

    .line 1813
    cmpl-float v5, v5, v10

    .line 1814
    .line 1815
    if-eqz v5, :cond_56

    .line 1816
    .line 1817
    div-float/2addr v0, v9

    .line 1818
    goto :goto_28

    .line 1819
    :cond_56
    div-float v0, v2, v7

    .line 1820
    .line 1821
    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 1822
    .line 1823
    .line 1824
    move-result v2

    .line 1825
    if-nez v2, :cond_57

    .line 1826
    .line 1827
    const/high16 v2, 0x40400000    # 3.0f

    .line 1828
    .line 1829
    div-float v2, v0, v2

    .line 1830
    .line 1831
    add-float/2addr v2, v4

    .line 1832
    :goto_29
    const/4 v5, 0x0

    .line 1833
    goto :goto_2a

    .line 1834
    :cond_57
    move v2, v4

    .line 1835
    goto :goto_29

    .line 1836
    :goto_2a
    cmpl-float v7, v2, v5

    .line 1837
    .line 1838
    if-eqz v7, :cond_5e

    .line 1839
    .line 1840
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1841
    .line 1842
    cmpl-float v7, v2, v5

    .line 1843
    .line 1844
    if-eqz v7, :cond_5e

    .line 1845
    .line 1846
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1847
    .line 1848
    const/4 v7, 0x3

    .line 1849
    if-eq v5, v7, :cond_5e

    .line 1850
    .line 1851
    float-to-double v9, v2

    .line 1852
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 1853
    .line 1854
    cmpg-double v2, v9, v11

    .line 1855
    .line 1856
    if-gez v2, :cond_58

    .line 1857
    .line 1858
    const/4 v2, 0x0

    .line 1859
    :goto_2b
    const/4 v7, 0x6

    .line 1860
    goto :goto_2c

    .line 1861
    :cond_58
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1862
    .line 1863
    goto :goto_2b

    .line 1864
    :goto_2c
    if-ne v5, v7, :cond_5a

    .line 1865
    .line 1866
    add-float v2, v4, v0

    .line 1867
    .line 1868
    const/4 v5, 0x0

    .line 1869
    cmpg-float v2, v2, v5

    .line 1870
    .line 1871
    if-gez v2, :cond_59

    .line 1872
    .line 1873
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1874
    .line 1875
    .line 1876
    move-result v0

    .line 1877
    :cond_59
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1878
    .line 1879
    :cond_5a
    iget v5, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1880
    .line 1881
    const/4 v7, 0x7

    .line 1882
    if-ne v5, v7, :cond_5c

    .line 1883
    .line 1884
    add-float v2, v4, v0

    .line 1885
    .line 1886
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1887
    .line 1888
    cmpl-float v2, v2, v5

    .line 1889
    .line 1890
    if-lez v2, :cond_5b

    .line 1891
    .line 1892
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1893
    .line 1894
    .line 1895
    move-result v0

    .line 1896
    neg-float v0, v0

    .line 1897
    :cond_5b
    const/4 v2, 0x0

    .line 1898
    :cond_5c
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 1899
    .line 1900
    invoke-virtual {v8, v2, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(FFI)V

    .line 1901
    .line 1902
    .line 1903
    const/4 v0, 0x0

    .line 1904
    cmpl-float v0, v0, v4

    .line 1905
    .line 1906
    if-gez v0, :cond_5d

    .line 1907
    .line 1908
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1909
    .line 1910
    cmpg-float v0, v0, v4

    .line 1911
    .line 1912
    if-gtz v0, :cond_62

    .line 1913
    .line 1914
    :cond_5d
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1915
    .line 1916
    .line 1917
    goto :goto_2d

    .line 1918
    :cond_5e
    const/4 v0, 0x0

    .line 1919
    cmpl-float v0, v0, v2

    .line 1920
    .line 1921
    if-gez v0, :cond_5f

    .line 1922
    .line 1923
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1924
    .line 1925
    cmpg-float v0, v0, v2

    .line 1926
    .line 1927
    if-gtz v0, :cond_62

    .line 1928
    .line 1929
    :cond_5f
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 1930
    .line 1931
    .line 1932
    goto :goto_2d

    .line 1933
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1934
    .line 1935
    .line 1936
    move-result v0

    .line 1937
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 1938
    .line 1939
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1940
    .line 1941
    .line 1942
    move-result v0

    .line 1943
    iput v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 1944
    .line 1945
    const/4 v0, 0x0

    .line 1946
    iput-boolean v0, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 1947
    .line 1948
    goto :goto_2d

    .line 1949
    :cond_61
    move-object/from16 v31, v2

    .line 1950
    .line 1951
    :cond_62
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1952
    .line 1953
    .line 1954
    move-result v0

    .line 1955
    move-object/from16 v2, v31

    .line 1956
    .line 1957
    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    .line 1958
    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    .line 1964
    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1966
    .line 1967
    .line 1968
    move-result v0

    .line 1969
    const/4 v1, 0x1

    .line 1970
    if-ne v0, v1, :cond_64

    .line 1971
    .line 1972
    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 1973
    .line 1974
    if-eqz v0, :cond_64

    .line 1975
    .line 1976
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1977
    .line 1978
    if-eqz v1, :cond_63

    .line 1979
    .line 1980
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1981
    .line 1982
    .line 1983
    const/4 v1, 0x0

    .line 1984
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 1985
    .line 1986
    goto :goto_2e

    .line 1987
    :cond_63
    const/4 v1, 0x0

    .line 1988
    :goto_2e
    iput-object v1, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    .line 1989
    .line 1990
    move-object/from16 v0, p0

    .line 1991
    .line 1992
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1993
    .line 1994
    const/4 v3, -0x1

    .line 1995
    if-eq v1, v3, :cond_65

    .line 1996
    .line 1997
    invoke-virtual {v2, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    .line 1998
    .line 1999
    .line 2000
    goto :goto_2f

    .line 2001
    :cond_64
    move-object/from16 v0, p0

    .line 2002
    .line 2003
    :cond_65
    :goto_2f
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2004
    .line 2005
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2006
    .line 2007
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    .line 2008
    .line 2009
    and-int/lit8 v1, v1, 0x4

    .line 2010
    .line 2011
    if-eqz v1, :cond_66

    .line 2012
    .line 2013
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 2014
    .line 2015
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 2016
    .line 2017
    return v0

    .line 2018
    :cond_66
    const/4 v0, 0x1

    .line 2019
    return v0

    .line 2020
    :cond_67
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2021
    .line 2022
    .line 2023
    move-result v0

    .line 2024
    return v0
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_4
    instance-of v0, p1, Landroidx/constraintlayout/helper/widget/MotionEffect;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 80
    .line 81
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_6
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final parseLayoutDescription(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 3
    .line 4
    return-void
.end method

.method public final processTransitionCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-interface {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-interface {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final rebuildScene()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final requestLayout()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    cmpl-float v3, p1, v2

    .line 9
    .line 10
    if-lez v3, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string v3, "MotionLayout"

    .line 13
    .line 14
    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 15
    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 35
    .line 36
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 37
    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 42
    .line 43
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 44
    .line 45
    if-gtz v1, :cond_5

    .line 46
    .line 47
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 48
    .line 49
    cmpl-float v1, v1, v2

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 54
    .line 55
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 56
    .line 57
    if-ne v1, v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 63
    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 65
    .line 66
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 67
    .line 68
    cmpl-float v0, v1, v0

    .line 69
    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    cmpl-float v1, p1, v2

    .line 77
    .line 78
    if-ltz v1, :cond_7

    .line 79
    .line 80
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 81
    .line 82
    cmpl-float v0, v1, v0

    .line 83
    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 87
    .line 88
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 89
    .line 90
    if-ne v0, v1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 96
    .line 97
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 98
    .line 99
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 100
    .line 101
    cmpl-float v0, v0, v2

    .line 102
    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    const/4 v0, -0x1

    .line 110
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 111
    .line 112
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 113
    .line 114
    .line 115
    :cond_8
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 116
    .line 117
    if-nez v0, :cond_9

    .line 118
    .line 119
    return-void

    .line 120
    :cond_9
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 122
    .line 123
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 124
    .line 125
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 126
    .line 127
    const-wide/16 v1, -0x1

    .line 128
    .line 129
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 130
    .line 131
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 135
    .line 136
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setStartState(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 19
    .line 20
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 21
    .line 22
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 26
    .line 27
    return-void
.end method

.method public final setState(I)V
    .locals 6

    .line 10
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 11
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v1, :cond_e

    int-to-float p0, v0

    .line 15
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    const/4 v3, 0x0

    .line 16
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-ne v2, p1, :cond_8

    if-ne p1, v0, :cond_0

    .line 17
    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 19
    :goto_0
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-eq v2, v0, :cond_1

    .line 20
    iget-object v5, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-virtual {v2, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_9

    .line 21
    :cond_1
    :goto_1
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 23
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

    .line 24
    :goto_2
    iget p0, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-ne p0, v3, :cond_4

    goto/16 :goto_9

    :cond_4
    if-ne v3, v0, :cond_5

    const/4 p0, 0x0

    goto :goto_3

    .line 25
    :cond_5
    iget-object p0, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_3
    if-ne v3, v0, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_4
    if-nez p0, :cond_7

    goto/16 :goto_9

    .line 27
    :cond_7
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 28
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_9

    .line 29
    :cond_8
    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 30
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 31
    :goto_5
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 33
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

    .line 34
    iget-object p0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_7

    .line 35
    :cond_b
    iget-object p0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_7
    if-ne v3, v0, :cond_c

    goto :goto_8

    .line 36
    :cond_c
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_8
    if-nez p0, :cond_d

    .line 37
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

    .line 38
    :cond_d
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 39
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_9

    .line 40
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 6

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object p1

    .line 19
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 20
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 21
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 27
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 28
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 29
    iput p0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    return-void

    .line 30
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 31
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 32
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 33
    iput-object p1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 34
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz p1, :cond_4

    .line 35
    iget-boolean v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 36
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 37
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 38
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    .line 39
    invoke-virtual {p1, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 40
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 41
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    cmpl-float p1, v0, v2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 43
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_5
    cmpl-float p1, v0, v3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 46
    :cond_6
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    goto :goto_3

    .line 50
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final setTransition(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 6
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_2

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 12
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    :cond_2
    return-void
.end method

.method public setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 3

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 52
    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz p1, :cond_0

    .line 53
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    if-eqz v1, :cond_0

    .line 54
    iget-boolean v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    .line 55
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 56
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 57
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 58
    :cond_1
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 65
    :goto_1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTransitionFlags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 67
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result p1

    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 69
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v1, :cond_4

    goto :goto_3

    .line 70
    :cond_4
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 71
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne p1, v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v2, v1, :cond_5

    return-void

    .line 72
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 73
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 74
    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 75
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 76
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 77
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 80
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 81
    iput v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 82
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "MotionLayout"

    .line 6
    .line 7
    const-string p1, "MotionScene not defined"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 p0, 0x8

    .line 18
    .line 19
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    iput p0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "motion.progress"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mProgress:F

    .line 24
    .line 25
    const-string v1, "motion.velocity"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mVelocity:F

    .line 32
    .line 33
    const-string v1, "motion.StartState"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mStartState:I

    .line 40
    .line 41
    const-string v1, "motion.EndState"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->mEndState:I

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "->"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " (pos:"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " Dpos/Dt:"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final touchAnimateTo(FFI)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 7
    .line 8
    cmpl-float v0, v0, p1

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 30
    .line 31
    div-float v7, v1, v2

    .line 32
    .line 33
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 34
    .line 35
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    const/4 v4, 0x6

    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz p3, :cond_7

    .line 47
    .line 48
    if-eq p3, v0, :cond_7

    .line 49
    .line 50
    if-eq p3, v5, :cond_7

    .line 51
    .line 52
    const/4 v6, 0x4

    .line 53
    if-eq p3, v6, :cond_6

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    if-eq p3, v6, :cond_2

    .line 57
    .line 58
    if-eq p3, v4, :cond_7

    .line 59
    .line 60
    if-eq p3, v3, :cond_7

    .line 61
    .line 62
    goto/16 :goto_c

    .line 63
    .line 64
    :cond_2
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    cmpl-float v3, p2, v1

    .line 73
    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    .line 76
    if-lez v3, :cond_3

    .line 77
    .line 78
    div-float v3, p2, v0

    .line 79
    .line 80
    mul-float v5, p2, v3

    .line 81
    .line 82
    mul-float/2addr v0, v3

    .line 83
    mul-float/2addr v0, v3

    .line 84
    div-float/2addr v0, v4

    .line 85
    sub-float/2addr v5, v0

    .line 86
    add-float/2addr v5, p3

    .line 87
    cmpl-float p3, v5, v2

    .line 88
    .line 89
    if-lez p3, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    neg-float v2, p2

    .line 93
    div-float/2addr v2, v0

    .line 94
    mul-float v3, p2, v2

    .line 95
    .line 96
    mul-float/2addr v0, v2

    .line 97
    mul-float/2addr v0, v2

    .line 98
    div-float/2addr v0, v4

    .line 99
    add-float/2addr v0, v3

    .line 100
    add-float/2addr v0, p3

    .line 101
    cmpg-float p3, v0, v1

    .line 102
    .line 103
    if-gez p3, :cond_4

    .line 104
    .line 105
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 106
    .line 107
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 108
    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 116
    .line 117
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 118
    .line 119
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 120
    .line 121
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 122
    .line 123
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 124
    .line 125
    goto/16 :goto_c

    .line 126
    .line 127
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 128
    .line 129
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 130
    .line 131
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 132
    .line 133
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 134
    .line 135
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 140
    .line 141
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 142
    .line 143
    if-eqz p3, :cond_5

    .line 144
    .line 145
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 146
    .line 147
    if-eqz p3, :cond_5

    .line 148
    .line 149
    iget p3, p3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 150
    .line 151
    move v8, p3

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    move v8, v1

    .line 154
    :goto_1
    move v4, p1

    .line 155
    move v5, p2

    .line 156
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 157
    .line 158
    .line 159
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 160
    .line 161
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 162
    .line 163
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 164
    .line 165
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 166
    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 168
    .line 169
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 170
    .line 171
    goto/16 :goto_c

    .line 172
    .line 173
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 174
    .line 175
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 184
    .line 185
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 186
    .line 187
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 188
    .line 189
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 190
    .line 191
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 192
    .line 193
    goto/16 :goto_c

    .line 194
    .line 195
    :cond_7
    if-eq p3, v0, :cond_a

    .line 196
    .line 197
    if-ne p3, v3, :cond_8

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    if-eq p3, v5, :cond_9

    .line 201
    .line 202
    if-ne p3, v4, :cond_b

    .line 203
    .line 204
    :cond_9
    move p1, v2

    .line 205
    goto :goto_3

    .line 206
    :cond_a
    :goto_2
    move p1, v1

    .line 207
    :cond_b
    :goto_3
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 208
    .line 209
    iget-object v0, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 210
    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 214
    .line 215
    if-eqz v2, :cond_c

    .line 216
    .line 217
    iget v2, v2, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_c
    move v2, v10

    .line 221
    :goto_4
    if-nez v2, :cond_e

    .line 222
    .line 223
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 224
    .line 225
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 226
    .line 227
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 232
    .line 233
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 234
    .line 235
    if-eqz p3, :cond_d

    .line 236
    .line 237
    iget-object p3, p3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 238
    .line 239
    if-eqz p3, :cond_d

    .line 240
    .line 241
    iget p3, p3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 242
    .line 243
    move v9, p3

    .line 244
    goto :goto_5

    .line 245
    :cond_d
    move v9, v1

    .line 246
    :goto_5
    move v5, p1

    .line 247
    move v6, p2

    .line 248
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_b

    .line 252
    .line 253
    :cond_e
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 254
    .line 255
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 256
    .line 257
    if-eqz v0, :cond_f

    .line 258
    .line 259
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 260
    .line 261
    if-eqz v2, :cond_f

    .line 262
    .line 263
    iget v2, v2, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_f
    move v2, v1

    .line 267
    :goto_6
    if-eqz v0, :cond_10

    .line 268
    .line 269
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 270
    .line 271
    if-eqz v3, :cond_10

    .line 272
    .line 273
    iget v3, v3, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_10
    move v3, v1

    .line 277
    :goto_7
    if-eqz v0, :cond_11

    .line 278
    .line 279
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 280
    .line 281
    if-eqz v4, :cond_11

    .line 282
    .line 283
    iget v4, v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_11
    move v4, v1

    .line 287
    :goto_8
    if-eqz v0, :cond_12

    .line 288
    .line 289
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 290
    .line 291
    if-eqz v5, :cond_12

    .line 292
    .line 293
    iget v5, v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_12
    move v5, v1

    .line 297
    :goto_9
    if-eqz v0, :cond_13

    .line 298
    .line 299
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 300
    .line 301
    if-eqz v0, :cond_13

    .line 302
    .line 303
    iget v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_13
    move v0, v10

    .line 307
    :goto_a
    iget-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 308
    .line 309
    if-nez v6, :cond_14

    .line 310
    .line 311
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 312
    .line 313
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 314
    .line 315
    .line 316
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 317
    .line 318
    iput-wide v7, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 319
    .line 320
    iput v10, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 321
    .line 322
    iput-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 323
    .line 324
    :cond_14
    iget-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 325
    .line 326
    iput-object v6, p2, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 327
    .line 328
    float-to-double v7, p1

    .line 329
    iput-wide v7, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    .line 330
    .line 331
    float-to-double v7, v4

    .line 332
    iput-wide v7, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    .line 333
    .line 334
    iput p3, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    .line 335
    .line 336
    float-to-double p2, v3

    .line 337
    iput-wide p2, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    .line 338
    .line 339
    iput v2, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    .line 340
    .line 341
    iput v5, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    .line 342
    .line 343
    iput v0, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    .line 344
    .line 345
    iput v1, v6, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    .line 346
    .line 347
    :goto_b
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 348
    .line 349
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 350
    .line 351
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 352
    .line 353
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 354
    .line 355
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 356
    .line 357
    :goto_c
    iput-boolean v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 358
    .line 359
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 360
    .line 361
    .line 362
    move-result-wide p1

    .line 363
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 364
    .line 365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public final transitionToState$1(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 12
    .line 13
    int-to-float v4, v1

    .line 14
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v3, p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    .line 27
    .line 28
    cmpl-float v5, v4, v5

    .line 29
    .line 30
    iget v6, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 31
    .line 32
    if-eqz v5, :cond_6

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v2

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 55
    .line 56
    invoke-virtual {v7, v4, v4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    iget v5, v7, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 63
    .line 64
    if-ne v3, v5, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v5, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    if-eqz v5, :cond_5

    .line 70
    .line 71
    iget v3, v5, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v3, v6

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    :goto_1
    if-ne v6, v3, :cond_7

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    iget-object v0, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 96
    .line 97
    iget v4, v4, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 98
    .line 99
    if-ne v3, v4, :cond_8

    .line 100
    .line 101
    :goto_2
    if-eq v3, v1, :cond_9

    .line 102
    .line 103
    move p1, v3

    .line 104
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 105
    .line 106
    if-ne v0, p1, :cond_a

    .line 107
    .line 108
    return-void

    .line 109
    :cond_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    if-ne v3, p1, :cond_b

    .line 113
    .line 114
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 119
    .line 120
    const/high16 v5, 0x3f800000    # 1.0f

    .line 121
    .line 122
    if-ne v3, p1, :cond_c

    .line 123
    .line 124
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 129
    .line 130
    if-eq v0, v1, :cond_d

    .line 131
    .line 132
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 136
    .line 137
    .line 138
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 139
    .line 140
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 141
    .line 142
    .line 143
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_d
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 148
    .line 149
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 150
    .line 151
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 152
    .line 153
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 156
    .line 157
    .line 158
    move-result-wide v6

    .line 159
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 162
    .line 163
    .line 164
    move-result-wide v6

    .line 165
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 166
    .line 167
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 168
    .line 169
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 170
    .line 171
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    int-to-float v3, v3

    .line 178
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 179
    .line 180
    div-float/2addr v3, v6

    .line 181
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 182
    .line 183
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 184
    .line 185
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 186
    .line 187
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 188
    .line 189
    invoke-virtual {v3, v1, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 204
    .line 205
    .line 206
    move v6, v0

    .line 207
    :goto_3
    if-ge v6, v3, :cond_e

    .line 208
    .line 209
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 214
    .line 215
    invoke-direct {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 234
    .line 235
    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    add-int/lit8 v6, v6, 0x1

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_e
    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 243
    .line 244
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 245
    .line 246
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 247
    .line 248
    invoke-virtual {v7, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {v6, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    move v2, v0

    .line 268
    :goto_4
    if-ge v2, p1, :cond_11

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 281
    .line 282
    if-nez v7, :cond_f

    .line 283
    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :cond_f
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 287
    .line 288
    iput v4, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 289
    .line 290
    iput v4, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    int-to-float v11, v11

    .line 305
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    int-to-float v12, v12

    .line 310
    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 311
    .line 312
    .line 313
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 335
    .line 336
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_10

    .line 341
    .line 342
    move v8, v4

    .line 343
    goto :goto_5

    .line 344
    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    :goto_5
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 349
    .line 350
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 355
    .line 356
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 361
    .line 362
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 373
    .line 374
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 379
    .line 380
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 385
    .line 386
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 391
    .line 392
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 403
    .line 404
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    iput v6, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 415
    .line 416
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 417
    .line 418
    goto/16 :goto_4

    .line 419
    .line 420
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 429
    .line 430
    if-eqz v6, :cond_16

    .line 431
    .line 432
    move v6, v0

    .line 433
    :goto_7
    if-ge v6, v3, :cond_13

    .line 434
    .line 435
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 436
    .line 437
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 446
    .line 447
    if-nez v7, :cond_12

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_12
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 451
    .line 452
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 453
    .line 454
    .line 455
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_13
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-eqz v7, :cond_14

    .line 469
    .line 470
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 475
    .line 476
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 477
    .line 478
    invoke-virtual {v7, p0, v8}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    .line 479
    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_14
    move v6, v0

    .line 483
    :goto_a
    if-ge v6, v3, :cond_18

    .line 484
    .line 485
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 486
    .line 487
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 496
    .line 497
    if-nez v7, :cond_15

    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_15
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 501
    .line 502
    .line 503
    move-result-wide v8

    .line 504
    invoke-virtual {v7, p1, v2, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 505
    .line 506
    .line 507
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_16
    move v6, v0

    .line 511
    :goto_c
    if-ge v6, v3, :cond_18

    .line 512
    .line 513
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 514
    .line 515
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 524
    .line 525
    if-nez v7, :cond_17

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_17
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 529
    .line 530
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 534
    .line 535
    .line 536
    move-result-wide v8

    .line 537
    invoke-virtual {v7, p1, v2, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 538
    .line 539
    .line 540
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_18
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 544
    .line 545
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 546
    .line 547
    if-eqz p1, :cond_19

    .line 548
    .line 549
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 550
    .line 551
    goto :goto_e

    .line 552
    :cond_19
    move p1, v4

    .line 553
    :goto_e
    cmpl-float v2, p1, v4

    .line 554
    .line 555
    if-eqz v2, :cond_1b

    .line 556
    .line 557
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 558
    .line 559
    .line 560
    const v6, -0x800001

    .line 561
    .line 562
    .line 563
    move v7, v0

    .line 564
    :goto_f
    if-ge v7, v3, :cond_1a

    .line 565
    .line 566
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 567
    .line 568
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 577
    .line 578
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 579
    .line 580
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 581
    .line 582
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 583
    .line 584
    add-float/2addr v8, v9

    .line 585
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    add-int/lit8 v7, v7, 0x1

    .line 594
    .line 595
    goto :goto_f

    .line 596
    :cond_1a
    :goto_10
    if-ge v0, v3, :cond_1b

    .line 597
    .line 598
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 599
    .line 600
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 609
    .line 610
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 611
    .line 612
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 613
    .line 614
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 615
    .line 616
    sub-float v10, v5, p1

    .line 617
    .line 618
    div-float v10, v5, v10

    .line 619
    .line 620
    iput v10, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 621
    .line 622
    add-float/2addr v9, v8

    .line 623
    sub-float/2addr v9, v2

    .line 624
    mul-float/2addr v9, p1

    .line 625
    sub-float v8, v6, v2

    .line 626
    .line 627
    div-float/2addr v9, v8

    .line 628
    sub-float v8, p1, v9

    .line 629
    .line 630
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 631
    .line 632
    add-int/lit8 v0, v0, 0x1

    .line 633
    .line 634
    goto :goto_10

    .line 635
    :cond_1b
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 636
    .line 637
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 638
    .line 639
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 640
    .line 641
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 642
    .line 643
    .line 644
    return-void
.end method

.method public final updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 13
    .line 14
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 21
    .line 22
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 35
    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final varargs viewTransition(I[Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v0, v8

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mTAG:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_8

    .line 30
    .line 31
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v9, v1

    .line 36
    check-cast v9, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 37
    .line 38
    iget v1, v9, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 39
    .line 40
    if-ne v1, p1, :cond_0

    .line 41
    .line 42
    array-length v0, p2

    .line 43
    const/4 v1, 0x0

    .line 44
    move v3, v1

    .line 45
    :goto_1
    if-ge v3, v0, :cond_2

    .line 46
    .line 47
    aget-object v4, p2, v3

    .line 48
    .line 49
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_7

    .line 66
    .line 67
    new-array v0, v1, [Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v5, v0

    .line 74
    check-cast v5, [Landroid/view/View;

    .line 75
    .line 76
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    iget v1, v9, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    if-eq v1, v4, :cond_6

    .line 86
    .line 87
    const/4 v1, -0x1

    .line 88
    if-ne v3, v1, :cond_3

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "No support for ViewTransition within transition yet. Currently: "

    .line 93
    .line 94
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    move-object v4, v8

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    move-object v4, v0

    .line 123
    :goto_2
    if-nez v4, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 127
    .line 128
    move-object v0, v9

    .line 129
    move-object v1, p0

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    move-object v0, v9

    .line 138
    move-object v1, p0

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    :cond_7
    move-object v0, v9

    .line 146
    goto :goto_0

    .line 147
    :cond_8
    if-nez v0, :cond_a

    .line 148
    .line 149
    const-string p0, " Could not find ViewTransition"

    .line 150
    .line 151
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_9
    const-string p0, "MotionLayout"

    .line 156
    .line 157
    const-string p1, " no motionScene"

    .line 158
    .line 159
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_a
    :goto_4
    return-void
.end method
