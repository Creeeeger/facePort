.class Landroidx/picker/widget/SeslCircularSeekBarView;
.super Landroid/view/View;
.source "SeslCircularSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;,
        Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;,
        Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;
    }
.end annotation


# static fields
.field private static final DEFAULT_CIRCLE_STYLE:I

.field private static final DEFAULT_FIRST_POINTER_COLOR:I

.field private static final DEFAULT_FIRST_POINTER_HALO_COLOR:I

.field private static final DEFAULT_MIDDLE_COLOR:I

.field private static final DEFAULT_SECOND_POINTER_COLOR:I

.field private static final DEFAULT_SECOND_POINTER_HALO_COLOR:I


# instance fields
.field private final DPTOPX_SCALE:F

.field private final EXPAND_COLLAPSE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBedTimeIconRectF:Landroid/graphics/RectF;

.field private mCircleColor:I

.field private mCircleFillColor:I

.field private mCircleFillPaint:Landroid/graphics/Paint;

.field private mCircleFirstPointerPath:Landroid/graphics/Path;

.field private mCircleGridMedium:I

.field private mCircleGridSmall:I

.field private mCircleHeight:F

.field private mCircleLineProgressPaint:Landroid/graphics/Paint;

.field private mCircleLineProgressPath:Landroid/graphics/Path;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePath:Landroid/graphics/Path;

.field private mCircleProgressPaint:Landroid/graphics/Paint;

.field private mCircleProgressPath:Landroid/graphics/Path;

.field private final mCircleRectF:Landroid/graphics/RectF;

.field private mCircleSecondPointerPath:Landroid/graphics/Path;

.field private mCircleStrokeWidth:F

.field private mCircleStyle:Landroid/graphics/Paint$Cap;

.field private mCircleWidth:F

.field private mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

.field private mDashLineStrokeWidth:F

.field private mDefStyle:I

.field private mEndAngle:F

.field private mFirstPointerAngle:F

.field private mFirstPointerColor:I

.field private mFirstPointerHaloColor:I

.field private mFirstPointerHaloPaint:Landroid/graphics/Paint;

.field private mFirstPointerPaint:Landroid/graphics/Paint;

.field private mFirstPointerPosition:F

.field private mGridPaintMedium:Landroid/graphics/Paint;

.field private mGridPaintSmall:Landroid/graphics/Paint;

.field private mHandlerTouchPosition:F

.field private mHideProgressWhenEmpty:Z

.field private mIconSize:F

.field private mIsExpandCollapseAnimation:Z

.field private mLastPointerTouched:I

.field private mLockAtEnd:Z

.field private mLockAtStart:Z

.field private mLockEnabled:Z

.field private mMaintainEqualCircle:Z

.field private mMax:F

.field private mMiddleGradientColor:I

.field private mMoveOutsideCircle:Z

.field private mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

.field private mPointerHaloWidth:F

.field private mPointerStrokeWidth:F

.field private mProgress:F

.field private mProgressDegrees:F

.field private mRadiusIn:F

.field private mRadiusOut:F

.field private mSecondPointerAngle:F

.field private mSecondPointerColor:I

.field private mSecondPointerHaloColor:I

.field private mSecondPointerHaloPaint:Landroid/graphics/Paint;

.field private mSecondPointerPaint:Landroid/graphics/Paint;

.field private mSecondPointerPosition:F

.field private mSleepGoalWheelEnable:Z

.field private mSleepGoalWheelExtendDegree:F

.field private mSleepGoalWheelExtendStart:F

.field private mSleepGoalWheelPaint:Landroid/graphics/Paint;

.field private mSleepGoalWheelPath:Landroid/graphics/Path;

.field private final mSleepGoalWheelRectF:Landroid/graphics/RectF;

.field private mSleepGoalWheelStrokeWidth:F

.field private mStartAngle:F

.field private mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

.field private mTotalCircleDegrees:F

.field private mTouchDistanceFromFirstPointer:F

.field private mTouchDistanceFromSecondPointer:F

.field private mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

.field private mUserIsMovingFirstPointer:Z

.field private mUserIsMovingMiddleHandler:Z

.field private mUserIsMovingSecondPointer:Z

.field private mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

.field private final mWakeUpTimeIconRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_CIRCLE_STYLE:I

    const/16 v0, 0xff

    const/16 v1, 0x85

    const/16 v2, 0x87

    const/16 v3, 0xfe

    .line 50
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_COLOR:I

    .line 51
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_MIDDLE_COLOR:I

    .line 52
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_HALO_COLOR:I

    const/16 v1, 0xa7

    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_COLOR:I

    .line 54
    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_HALO_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    .line 92
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    .line 93
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    .line 94
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    .line 95
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    .line 120
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 123
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 124
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 125
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    .line 142
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelEnable:Z

    .line 145
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    .line 146
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->EXPAND_COLLAPSE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    .line 151
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    .line 152
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    .line 92
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    .line 93
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    .line 94
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    .line 95
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    .line 120
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 123
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 124
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 125
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    .line 142
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelEnable:Z

    .line 145
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    .line 146
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->EXPAND_COLLAPSE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 157
    iput-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    .line 158
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    .line 159
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    .line 92
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    .line 93
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    .line 94
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    .line 95
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    .line 120
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 123
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 124
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 125
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    .line 142
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelEnable:Z

    .line 145
    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    .line 146
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->EXPAND_COLLAPSE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 164
    iput-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    .line 165
    iput p3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    .line 166
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method

.method static synthetic access$000(Landroidx/picker/widget/SeslCircularSeekBarView;)F
    .locals 0

    .line 30
    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    return p0
.end method

.method static synthetic access$100(Landroidx/picker/widget/SeslCircularSeekBarView;)F
    .locals 0

    .line 30
    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerHaloWidth:F

    return p0
.end method

.method static synthetic access$200(Landroidx/picker/widget/SeslCircularSeekBarView;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/picker/widget/SeslCircularSeekBarView;)Landroid/graphics/Paint;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private addPointerTouchListener()V
    .locals 4

    .line 781
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    if-eqz v0, :cond_2

    .line 782
    iget-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->getProgress()F

    move-result v1

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-interface {v0, p0, v1, v3, v2}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onProgressChangedWakeupTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V

    goto :goto_0

    .line 784
    :cond_0
    iget-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-eqz v1, :cond_1

    .line 785
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->getProgress()F

    move-result v1

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    invoke-interface {v0, p0, v1, v3, v2}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onProgressChangedBedTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V

    goto :goto_0

    .line 786
    :cond_1
    iget-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz v1, :cond_2

    .line 787
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->getProgress()F

    move-result v1

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-interface {v0, p0, v1, v3, v2}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onProgressChangedWakeupTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V

    .line 788
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->getProgress()F

    move-result v1

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    invoke-interface {v0, p0, v1, v3, v2}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onProgressChangedBedTime(Landroidx/picker/widget/SeslCircularSeekBarView;FFZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateHandlerPosition()V
    .locals 5

    .line 351
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHandlerTouchPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromFirstPointer:F

    sub-float v1, v0, v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v1, v4

    :cond_0
    rem-float/2addr v1, v4

    .line 352
    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    .line 353
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromSecondPointer:F

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    add-float/2addr v0, v4

    :cond_1
    rem-float/2addr v0, v4

    .line 354
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    return-void
.end method

.method private calculatePointerPosition(I)V
    .locals 4

    .line 338
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 342
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    sub-float/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    :cond_0
    rem-float/2addr p1, v1

    .line 343
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 345
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    add-float/2addr p1, v1

    :cond_2
    rem-float/2addr p1, v1

    .line 346
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    :cond_3
    :goto_0
    return-void
.end method

.method private calculateProgressDegrees()V
    .locals 2

    .line 333
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 334
    :cond_0
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    return-void
.end method

.method private calculateTotalDegrees()V
    .locals 3

    .line 326
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mEndAngle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    rem-float/2addr v0, v1

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 328
    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    :cond_0
    return-void
.end method

.method private drawFirstPointer(Landroid/graphics/Canvas;)V
    .locals 5

    .line 479
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 483
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    .line 484
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private drawSecondPointer(Landroid/graphics/Canvas;)V
    .locals 5

    .line 490
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 491
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 494
    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    .line 495
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 5

    .line 844
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v2, Landroidx/picker/R$styleable;->seslCircularSeekBar:[I

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initAttributes(Landroid/content/res/TypedArray;)V

    .line 847
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 849
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initDrawableIcons()V

    .line 850
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initPaints()V

    .line 851
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initPaths()V

    .line 852
    new-instance v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;-><init>(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    .line 853
    new-instance v0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;-><init>(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    return-void
.end method

.method private initAttributes(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 170
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csPointerStrokeWidth:I

    const/high16 v1, 0x42820000    # 65.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    .line 171
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csIconWidth:I

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    .line 172
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csPointerHaloWidth:I

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerHaloWidth:F

    .line 173
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csCircleStrokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$dimen;->sesl_sleep_goal_wheel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelStrokeWidth:F

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$dimen;->sesl_dot_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    .line 176
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_CircleStyle:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_CIRCLE_STYLE:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 177
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    .line 178
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csMiddleColor:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_MIDDLE_COLOR:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMiddleGradientColor:I

    .line 179
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csFirstPointerColor:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_COLOR:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    .line 180
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csFirstPointerHaloColor:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_HALO_COLOR:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloColor:I

    .line 181
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csSecondPointerColor:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_COLOR:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    .line 182
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csSecondPointerHaloColor:I

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_HALO_COLOR:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloColor:I

    .line 183
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csCircleColor:I

    const v1, -0x333334

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleColor:I

    .line 184
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csCircleFill:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillColor:I

    .line 185
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csCircleGridSmallColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridSmall:I

    .line 186
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csCircleGridMediumColor:I

    const v1, -0x777778

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridMedium:I

    .line 187
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csMax:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    .line 188
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csProgress:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    .line 189
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csMaintainEqualCircle:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    .line 190
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csMoveOutsideCircle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMoveOutsideCircle:Z

    .line 191
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csLockEnabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    .line 192
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csHideProgressWhenEmpty:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    const/high16 v0, 0x40f00000    # 7.5f

    .line 193
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const/high16 v0, 0x43610000    # 225.0f

    .line 194
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    .line 196
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csStartAngle:I

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    .line 197
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csEndAngle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    rem-float/2addr v0, v2

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mEndAngle:F

    .line 198
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    rem-float/2addr v1, v2

    rem-float v3, v0, v2

    cmpl-float v1, v1, v3

    const v3, 0x3dcccccd    # 0.1f

    if-nez v1, :cond_0

    sub-float/2addr v0, v3

    .line 199
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mEndAngle:F

    .line 201
    :cond_0
    sget v0, Landroidx/picker/R$styleable;->seslCircularSeekBar_csPointerAngle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    rem-float/2addr v4, v2

    add-float/2addr v4, v2

    rem-float/2addr v4, v2

    iput v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    .line 203
    iput v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    .line 205
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    rem-float/2addr p1, v2

    add-float/2addr p1, v2

    rem-float/2addr p1, v2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    .line 207
    iput v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    .line 210
    :cond_2
    new-instance p1, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-direct {p1, p0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    return-void
.end method

.method private initDrawableIcons()V
    .locals 3

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$drawable;->sesl_bedtime:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/picker/R$drawable;->sesl_wakeup:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$color;->sesl_picker_thumb_icon_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 217
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 219
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private initPaints()V
    .locals 0

    .line 224
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setCirclePaint()V

    .line 225
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setCircleFillPaint()V

    .line 226
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setCircleProgressPaint()V

    .line 227
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setSleepGoalWheelPaint()V

    .line 228
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setSecondPointerPaint()V

    .line 229
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setFirstPointerPaint()V

    .line 230
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setClockGridPaint()V

    .line 231
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setDotLinePaint()V

    return-void
.end method

.method private initPaths()V
    .locals 1

    .line 358
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    .line 359
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    .line 360
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    .line 361
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    .line 362
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    .line 363
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPath:Landroid/graphics/Path;

    return-void
.end method

.method private initTouchOnFirstPointer()V
    .locals 2

    .line 794
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 795
    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onSelectBedTimeIcon()V

    .line 796
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 797
    invoke-direct {p0, v1, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setPointerExpandCollapseAnimation(ZI)V

    .line 798
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 799
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 800
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onStartTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 802
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 803
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    .line 804
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 805
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    :cond_0
    return-void
.end method

.method private initTouchOnMiddleHandler()V
    .locals 2

    .line 826
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHandlerTouchPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float v1, v0, v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromFirstPointer:F

    .line 827
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    sub-float/2addr v1, v0

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromSecondPointer:F

    .line 829
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 830
    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onSelectMiddleHandler()V

    .line 831
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHandlerTouchPosition:F

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 832
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 833
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 834
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onStartTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    const/4 v0, 0x1

    .line 835
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 837
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 838
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 839
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    :cond_0
    return-void
.end method

.method private initTouchOnSecondPointer()V
    .locals 3

    .line 810
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 811
    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onSelectWakeUpTimeIcon()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 812
    invoke-direct {p0, v0, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setPointerExpandCollapseAnimation(ZI)V

    .line 813
    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-direct {p0, v2, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 814
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 815
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 816
    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v2, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onStartTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    .line 817
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 818
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 819
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    .line 820
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 821
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    :cond_0
    return-void
.end method

.method private onActionMove(FFF)Z
    .locals 12

    .line 712
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v1, v2

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->smallInCircle:F

    .line 713
    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float v5, v3, v4

    iput v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwPointerFromStart:F

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    const/high16 v8, 0x43b40000    # 360.0f

    if-gez v7, :cond_0

    add-float/2addr v5, v8

    .line 714
    :cond_0
    iput v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwPointerFromStart:F

    cmpg-float v7, v5, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gez v7, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v10

    .line 715
    :goto_0
    iput-boolean v7, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->pointerNearStart:Z

    sub-float/2addr v1, v2

    cmpl-float v1, v5, v1

    if-lez v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v10

    .line 716
    :goto_1
    iput-boolean v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->pointerNearEnd:Z

    .line 717
    iget-boolean v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    const/high16 v11, 0x40200000    # 2.5f

    if-eqz v5, :cond_7

    add-float v3, v4, v11

    rem-float/2addr v3, v8

    sub-float v3, p3, v3

    .line 718
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromStart:F

    cmpg-float v5, v3, v6

    if-gez v5, :cond_3

    add-float/2addr v3, v8

    .line 719
    :cond_3
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromStart:F

    sub-float v3, v8, v3

    .line 720
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->ccwDistanceFromStart:F

    sub-float/2addr v4, v11

    add-float/2addr v4, v8

    rem-float/2addr v4, v8

    sub-float v4, p3, v4

    .line 721
    iput v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromEnd:F

    cmpg-float v5, v4, v6

    if-gez v5, :cond_4

    add-float/2addr v4, v8

    .line 722
    :cond_4
    iput v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromEnd:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    move v3, v9

    goto :goto_2

    :cond_5
    move v3, v10

    .line 723
    :goto_2
    iput-boolean v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverStart:Z

    cmpg-float v2, v4, v2

    if-gez v2, :cond_6

    move v10, v9

    .line 724
    :cond_6
    iput-boolean v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverEnd:Z

    .line 725
    iput-boolean v9, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    goto :goto_4

    .line 726
    :cond_7
    iget-boolean v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-eqz v4, :cond_c

    sub-float v4, v3, v11

    add-float/2addr v4, v8

    rem-float/2addr v4, v8

    sub-float v4, p3, v4

    .line 727
    iput v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromStart:F

    cmpg-float v5, v4, v6

    if-gez v5, :cond_8

    add-float/2addr v4, v8

    .line 728
    :cond_8
    iput v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromStart:F

    add-float/2addr v3, v11

    rem-float/2addr v3, v8

    sub-float v3, p3, v3

    .line 729
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromEnd:F

    cmpg-float v5, v3, v6

    if-gez v5, :cond_9

    add-float/2addr v3, v8

    .line 730
    :cond_9
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->cwDistanceFromEnd:F

    sub-float/2addr v8, v3

    .line 731
    iput v8, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->ccwDistanceFromEnd:F

    cmpg-float v3, v4, v2

    if-gez v3, :cond_a

    move v3, v9

    goto :goto_3

    :cond_a
    move v3, v10

    .line 732
    :goto_3
    iput-boolean v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverStart:Z

    cmpg-float v2, v8, v2

    if-gez v2, :cond_b

    move v10, v9

    .line 733
    :cond_b
    iput-boolean v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverEnd:Z

    .line 734
    iput-boolean v9, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    goto :goto_4

    .line 735
    :cond_c
    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz v2, :cond_15

    .line 736
    iput-boolean v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 737
    iput-boolean v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    .line 738
    iput-boolean v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    :goto_4
    if-eqz v1, :cond_d

    .line 743
    iget-boolean v0, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverEnd:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    goto :goto_5

    :cond_d
    if-eqz v7, :cond_e

    .line 745
    iget-boolean v0, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchOverStart:Z

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    .line 747
    :cond_e
    :goto_5
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/16 v1, 0x31

    const v2, 0x3f31c71d

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    if-eqz v0, :cond_f

    .line 748
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_13

    .line 749
    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    .line 750
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 752
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->addPointerTouchListener()V

    .line 753
    invoke-static {p0, v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->performHapticFeedback(Landroid/view/View;I)V

    goto :goto_7

    .line 755
    :cond_f
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    if-eqz v0, :cond_10

    .line 756
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    sub-float p3, p2, v2

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_13

    sub-float/2addr p2, v2

    .line 757
    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    .line 758
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 759
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 760
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->addPointerTouchListener()V

    .line 761
    invoke-static {p0, v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->performHapticFeedback(Landroid/view/View;I)V

    goto :goto_7

    .line 763
    :cond_10
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMoveOutsideCircle:Z

    if-nez v0, :cond_11

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_13

    .line 764
    :cond_11
    iget-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 765
    iget-boolean p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz p2, :cond_12

    const/4 p1, 0x2

    .line 766
    invoke-direct {p0, p3, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    goto :goto_6

    .line 768
    :cond_12
    invoke-direct {p0, p3, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 770
    :goto_6
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 772
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->addPointerTouchListener()V

    .line 774
    :cond_13
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    return v9

    :cond_15
    return v10
.end method

.method private onActionUpCancel()Z
    .locals 3

    .line 690
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onUnselectWakeUpTimeIcon()V

    .line 693
    invoke-direct {p0, v1, v1}, Landroidx/picker/widget/SeslCircularSeekBarView;->setPointerExpandCollapseAnimation(ZI)V

    goto :goto_1

    .line 694
    :cond_2
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onUnselectBedTimeIcon()V

    .line 696
    invoke-direct {p0, v1, v2}, Landroidx/picker/widget/SeslCircularSeekBarView;->setPointerExpandCollapseAnimation(ZI)V

    goto :goto_1

    .line 697
    :cond_3
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz v0, :cond_4

    .line 698
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onUnselectMiddleHandler()V

    .line 700
    :cond_4
    :goto_1
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 701
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 702
    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    .line 703
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;->onStopTrackingTouch(Landroidx/picker/widget/SeslCircularSeekBarView;)V

    .line 704
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method private recalculateAll()V
    .locals 1

    .line 541
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculateTotalDegrees()V

    .line 542
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculatePointerPosition(I)V

    goto :goto_0

    .line 544
    :cond_0
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 545
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculatePointerPosition(I)V

    goto :goto_0

    .line 546
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    if-eqz v0, :cond_2

    .line 547
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculateHandlerPosition()V

    .line 549
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculateProgressDegrees()V

    .line 550
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->resetRects()V

    .line 551
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->resetPaths()V

    .line 552
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->findBedTimeIconLocation()V

    .line 553
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->findWakeUpTimeIconLocation()V

    return-void
.end method

.method private resetPaths()V
    .locals 9

    .line 367
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 368
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 369
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    sub-float/2addr v0, v3

    .line 370
    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 371
    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    add-float/2addr v4, v1

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_0

    const v4, 0x43b3f333    # 359.9f

    .line 376
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 377
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 379
    iget-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelEnable:Z

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 381
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelExtendStart:F

    iget v7, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelExtendDegree:F

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 384
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 385
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    float-to-double v5, v1

    const-wide/high16 v7, 0x401a000000000000L    # 6.5

    cmpl-double v1, v5, v7

    if-lez v1, :cond_3

    .line 386
    iget-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    if-eqz v1, :cond_2

    .line 387
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    neg-float v4, v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 389
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 393
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 394
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 395
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    invoke-virtual {v1, v3, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 396
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 397
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 398
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    invoke-virtual {v1, v2, v0, p0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private resetRects()V
    .locals 5

    .line 402
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    neg-float v2, v1

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    neg-float v4, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 404
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 405
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 406
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr p0, v3

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setCircleFillPaint()V
    .locals 2

    .line 246
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 249
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setCirclePaint()V
    .locals 2

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 238
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 242
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private setCircleProgressPaint()V
    .locals 2

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 257
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 258
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 260
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private setClockGridPaint()V
    .locals 4

    .line 302
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    .line 303
    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridSmall:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    .line 308
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridMedium:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setDotLinePaint()V
    .locals 6

    .line 314
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 315
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 316
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 317
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    .line 318
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroidx/picker/R$color;->sesl_dotted_line_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PathDashPathEffect;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Landroidx/picker/R$dimen;->sesl_dot_line_gap_width:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v4, p0

    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v2, v0, v4, v3, p0}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private setFirstPointerPaint()V
    .locals 2

    .line 275
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    .line 276
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    .line 280
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 281
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setPointerExpandCollapseAnimation(ZI)V
    .locals 2

    const/4 v0, 0x1

    .line 961
    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 964
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    .line 966
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 v0, 0x12c

    .line 968
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->EXPAND_COLLAPSE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    new-instance v0, Landroidx/picker/widget/SeslCircularSeekBarView$1;

    invoke-direct {v0, p0, p2}, Landroidx/picker/widget/SeslCircularSeekBarView$1;-><init>(Landroidx/picker/widget/SeslCircularSeekBarView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 982
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setProgressBasedOnAngle(FI)V
    .locals 3

    if-nez p2, :cond_0

    .line 558
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 560
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 562
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHandlerTouchPosition:F

    .line 563
    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromFirstPointer:F

    sub-float p2, p1, p2

    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_2

    add-float/2addr p2, v2

    :cond_2
    rem-float/2addr p2, v2

    .line 564
    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    .line 565
    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchDistanceFromSecondPointer:F

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    cmpg-float p2, p1, v0

    if-gez p2, :cond_3

    add-float/2addr p1, v2

    :cond_3
    rem-float/2addr p1, v2

    .line 566
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    .line 568
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculateProgressDegrees()V

    .line 569
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    mul-float/2addr p1, p2

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    div-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    return-void
.end method

.method private setSecondPointerPaint()V
    .locals 2

    .line 286
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 287
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 288
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 289
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 291
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 293
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 295
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 297
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setSleepGoalWheelPaint()V
    .locals 2

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 267
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 268
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 270
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 271
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Landroidx/picker/R$color;->sesl_sleep_goal_wheel_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public drawClockGrid(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    const-wide v5, 0x4076800000000000L    # 360.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_3

    .line 520
    iget v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    float-to-double v5, v5

    add-double/2addr v5, v3

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    .line 521
    iget-object v7, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    const/high16 v11, 0x40200000    # 2.5f

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    double-to-float v13, v7

    .line 522
    iget-object v7, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v9, v14

    add-double/2addr v7, v9

    double-to-float v14, v7

    .line 523
    iget-object v7, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v9, v15

    add-double/2addr v7, v9

    double-to-float v15, v7

    .line 524
    iget-object v7, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v10, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    double-to-float v5, v7

    const-wide v6, 0x4056800000000000L    # 90.0

    rem-double v6, v3, v6

    cmpl-double v8, v6, v1

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    if-eqz v8, :cond_2

    cmpl-double v8, v6, v9

    if-eqz v8, :cond_2

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    cmpl-double v8, v6, v11

    if-eqz v8, :cond_2

    const-wide v11, 0x4055c00000000000L    # 87.0

    cmpl-double v8, v6, v11

    if-eqz v8, :cond_2

    const-wide v11, 0x4055e00000000000L    # 87.5

    cmpl-double v6, v6, v11

    if-eqz v6, :cond_2

    const-wide v6, 0x4065e00000000000L    # 175.0

    cmpl-double v6, v3, v6

    if-eqz v6, :cond_2

    const-wide v6, 0x4067200000000000L    # 185.0

    cmpl-double v6, v3, v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    rem-double v6, v3, v6

    cmpl-double v6, v6, v1

    if-nez v6, :cond_1

    .line 528
    iget-object v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 530
    :cond_1
    iget-object v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-double/2addr v3, v9

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public findBedTimeIconLocation()V
    .locals 9

    .line 502
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 503
    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v3, v3

    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 504
    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-double v3, v3

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v3, v6

    double-to-float v0, v3

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float v3, v1, v5

    sub-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 505
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 506
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public findWakeUpTimeIconLocation()V
    .locals 9

    .line 510
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 511
    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v3, v3

    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 512
    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-double v3, v3

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v3, v6

    double-to-float v0, v3

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float v3, v1, v5

    sub-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 513
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 514
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getProgress()F
    .locals 2

    .line 536
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    mul-float/2addr v0, v1

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    div-float/2addr v0, p0

    return v0
.end method

.method public onActionDown(FFFF)Z
    .locals 9

    .line 613
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 614
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 615
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    sub-float v1, p1, v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v3, :cond_0

    add-float/2addr v1, v4

    :cond_0
    sub-float v3, v4, v1

    .line 618
    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float v6, p1, v5

    cmpg-float v7, v6, v2

    if-gez v7, :cond_1

    add-float/2addr v6, v4

    :cond_1
    sub-float/2addr v4, v6

    cmpl-float p3, p2, p3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz p3, :cond_2

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_2

    move p2, v7

    goto :goto_0

    :cond_2
    move p2, v8

    :goto_0
    cmpg-float p3, v1, v0

    if-lez p3, :cond_4

    cmpg-float p3, v3, v0

    if-gtz p3, :cond_3

    goto :goto_1

    :cond_3
    move p3, v8

    goto :goto_2

    :cond_4
    :goto_1
    move p3, v7

    :goto_2
    cmpg-float p4, v6, v0

    if-lez p4, :cond_6

    cmpg-float p4, v4, v0

    if-gtz p4, :cond_5

    goto :goto_3

    :cond_5
    move p4, v8

    goto :goto_4

    :cond_6
    :goto_3
    move p4, v7

    .line 627
    :goto_4
    invoke-static {v5}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result v0

    .line 628
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-static {v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result v1

    .line 629
    invoke-static {p1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result v3

    cmpg-float v4, v0, v1

    if-gez v4, :cond_8

    cmpl-float v0, v3, v0

    if-lez v0, :cond_a

    cmpg-float v0, v3, v1

    if-gez v0, :cond_a

    :cond_7
    :goto_5
    move v0, v7

    goto :goto_6

    :cond_8
    cmpl-float v4, v0, v1

    if-lez v4, :cond_a

    cmpl-float v0, v3, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x44b40000    # 1440.0f

    cmpg-float v0, v3, v0

    if-lez v0, :cond_7

    :cond_9
    cmpg-float v0, v3, v1

    if-gez v0, :cond_a

    cmpl-float v0, v3, v2

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v8

    :goto_6
    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    .line 638
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    if-nez p1, :cond_b

    .line 639
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initTouchOnFirstPointer()V

    goto :goto_7

    .line 641
    :cond_b
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initTouchOnSecondPointer()V

    goto :goto_7

    :cond_c
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    .line 644
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initTouchOnSecondPointer()V

    goto :goto_7

    :cond_d
    if-eqz p2, :cond_e

    if-eqz p4, :cond_e

    .line 646
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initTouchOnFirstPointer()V

    goto :goto_7

    :cond_e
    if-eqz p2, :cond_f

    if-eqz v0, :cond_f

    .line 648
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHandlerTouchPosition:F

    .line 649
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initTouchOnMiddleHandler()V

    :goto_7
    return v7

    .line 651
    :cond_f
    iput-boolean v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingSecondPointer:Z

    .line 652
    iput-boolean v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingFirstPointer:Z

    .line 653
    iput-boolean v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mUserIsMovingMiddleHandler:Z

    return v8
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 864
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 443
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 445
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelEnable:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 448
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 449
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 450
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawClockGrid(Landroid/graphics/Canvas;)V

    .line 451
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->color:[I

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    .line 452
    aput v2, v1, v4

    .line 453
    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMiddleGradientColor:I

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 454
    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    const/4 v6, 0x3

    aput v2, v1, v6

    const/4 v7, 0x4

    .line 455
    aput v2, v1, v7

    .line 456
    iget-object v0, v0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->pos:[F

    const/4 v1, 0x0

    aput v1, v0, v3

    .line 457
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    div-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v1

    .line 458
    aput v2, v0, v4

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    .line 459
    aput v2, v0, v5

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v2, v1

    .line 460
    aput v2, v0, v6

    .line 461
    aput v1, v0, v7

    .line 462
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    iget-object v4, v3, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->color:[I

    iget-object v3, v3, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->pos:[F

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 463
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 464
    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 466
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 467
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 468
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 469
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    if-nez v0, :cond_1

    .line 470
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawSecondPointer(Landroid/graphics/Canvas;)V

    .line 471
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawFirstPointer(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawFirstPointer(Landroid/graphics/Canvas;)V

    .line 474
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawSecondPointer(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 580
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    if-nez p2, :cond_0

    move p2, p1

    :cond_0
    if-nez p1, :cond_1

    move p1, p2

    .line 583
    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    if-eqz v0, :cond_2

    .line 584
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 585
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 589
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/picker/R$dimen;->sesl_sleep_time_pointer_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/picker/R$dimen;->sesl_sleep_time_icon_touch_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerHaloWidth:F

    .line 591
    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    .line 592
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v1

    .line 593
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 595
    invoke-static {v1}, Landroidx/picker/util/SeslSleepTimePickerUtil;->needBedTimePickerAdjustment(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 596
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/picker/R$dimen;->sesl_sleep_visual_edit_outer_circle_min_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    :cond_3
    div-float/2addr p1, v0

    sub-float/2addr p1, p2

    .line 598
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    div-float/2addr v2, v0

    sub-float/2addr v2, p2

    .line 599
    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    .line 600
    iget-boolean p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    if-eqz p2, :cond_4

    .line 601
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 602
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    .line 603
    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    .line 605
    :cond_4
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/picker/R$dimen;->sesl_time_picker_inner_circle_container_ratio:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 607
    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    .line 608
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float/2addr p2, p1

    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    .line 609
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 891
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    .line 892
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 893
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    .line 894
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    const-string v0, "PROGRESS"

    .line 895
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    const-string v0, "mProgressDegrees"

    .line 896
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    const-string v0, "mSecondPointerPosition"

    .line 897
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const-string v0, "mFirstPointerPosition"

    .line 898
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const-string v0, "mSecondPointerAngle"

    .line 899
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const-string v0, "mLockEnabled"

    .line 900
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    const-string v0, "mLockAtStart"

    .line 901
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const-string v0, "mLockAtEnd"

    .line 902
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    .line 903
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    const-string v1, "mCircleStyle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    const-string v0, "mLastPointerTouched"

    .line 904
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    const-string v0, "mHideProgressWhenEmpty"

    .line 905
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    .line 906
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initPaints()V

    .line 907
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 871
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 872
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARENT"

    .line 873
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 874
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    const-string v2, "MAX"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 875
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    const-string v2, "PROGRESS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 876
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    const-string v2, "mProgressDegrees"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 877
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const-string v2, "mSecondPointerPosition"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 878
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const-string v2, "mFirstPointerPosition"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 879
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const-string v2, "mSecondPointerAngle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 880
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    const-string v2, "mLockEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 881
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const-string v2, "mLockAtStart"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 882
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    const-string v2, "mLockAtEnd"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v0

    const-string v2, "mCircleStyle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    const-string v2, "mLastPointerTouched"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    iget-boolean p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    const-string v0, "mHideProgressWhenEmpty"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 574
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->isRevealAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 664
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    .line 665
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    .line 666
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v4, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    sub-float/2addr v1, v4

    iput v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceX:F

    .line 667
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v4, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    sub-float/2addr v0, v4

    iput v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceY:F

    .line 668
    iget v0, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceX:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v0, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceY:F

    float-to-double v8, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchEventRadius:F

    .line 669
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    const/high16 v1, 0x42400000    # 48.0f

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v2, v1

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->minimumTouchTarget:F

    .line 670
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    cmpg-float v4, v1, v2

    if-gez v4, :cond_1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    div-float v2, v1, v3

    :goto_0
    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    .line 671
    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v3, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    add-float/2addr v1, v3

    iput v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    .line 672
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v3, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    sub-float/2addr v0, v3

    iput v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->innerRadius:F

    .line 673
    iget v0, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    float-to-double v2, v0

    iget v0, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, v1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    .line 674
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v1, v2

    :cond_2
    iput v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    return v0

    :cond_3
    const-string p1, "CircularSeekBar"

    const-string v0, "MotionEvent.ACTION_CANCEL"

    .line 683
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->onActionUpCancel()Z

    move-result p0

    return p0

    .line 679
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v0, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    iget v1, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchEventRadius:F

    iget p1, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    invoke-direct {p0, v0, v1, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->onActionMove(FFF)Z

    move-result p0

    return p0

    .line 681
    :cond_5
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->onActionUpCancel()Z

    move-result p0

    return p0

    .line 677
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v0, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    iget v1, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchEventRadius:F

    iget v2, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->innerRadius:F

    iget p1, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->onActionDown(FFFF)Z

    move-result p0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public setBedTimePosition(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    const/4 v0, 0x1

    .line 942
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 943
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 944
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;)V
    .locals 0

    .line 911
    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mOnCircularSeekBarChangeListener:Landroidx/picker/widget/SeslCircularSeekBarView$OnCircularSeekBarChangeListener;

    return-void
.end method

.method public setRevealAnimationValue(F)V
    .locals 2

    .line 928
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->getmSweepProgress()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    mul-float/2addr v0, p1

    .line 929
    iget p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    add-float/2addr p1, v0

    rem-float/2addr p1, v1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 930
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    return-void
.end method

.method public setWakeUpTimePosition(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    .line 935
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslCircularSeekBarView;->setProgressBasedOnAngle(FI)V

    .line 936
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    .line 937
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startRevealAnimation()V
    .locals 2

    .line 857
    invoke-direct {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->calculateProgressDegrees()V

    .line 858
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->setmSweepProgress(F)V

    .line 859
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;->startAnimators()V

    return-void
.end method
