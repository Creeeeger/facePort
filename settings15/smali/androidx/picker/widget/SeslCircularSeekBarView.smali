.class Landroidx/picker/widget/SeslCircularSeekBarView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_CIRCLE_STYLE:I

.field public static final DEFAULT_FIRST_POINTER_COLOR:I

.field public static final DEFAULT_FIRST_POINTER_HALO_COLOR:I

.field public static final DEFAULT_MIDDLE_COLOR:I

.field public static final DEFAULT_SECOND_POINTER_COLOR:I

.field public static final DEFAULT_SECOND_POINTER_HALO_COLOR:I


# instance fields
.field public final DPTOPX_SCALE:F

.field public final mAttributeSet:Landroid/util/AttributeSet;

.field public mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

.field public final mBedTimeIconRectF:Landroid/graphics/RectF;

.field public mCircleColor:I

.field public mCircleFillColor:I

.field public mCircleFillPaint:Landroid/graphics/Paint;

.field public mCircleFirstPointerPath:Landroid/graphics/Path;

.field public mCircleGridMedium:I

.field public mCircleGridSmall:I

.field public mCircleHeight:F

.field public mCircleLineProgressPaint:Landroid/graphics/Paint;

.field public mCircleLineProgressPath:Landroid/graphics/Path;

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCirclePath:Landroid/graphics/Path;

.field public mCircleProgressPaint:Landroid/graphics/Paint;

.field public mCircleProgressPath:Landroid/graphics/Path;

.field public final mCircleRectF:Landroid/graphics/RectF;

.field public mCircleSecondPointerPath:Landroid/graphics/Path;

.field public mCircleStrokeWidth:F

.field public mCircleStyle:Landroid/graphics/Paint$Cap;

.field public mCircleWidth:F

.field public mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

.field public mDashLineStrokeWidth:F

.field public final mDefStyle:I

.field public mEndAngle:F

.field public mFirstPointerAngle:F

.field public mFirstPointerColor:I

.field public mFirstPointerHaloColor:I

.field public mFirstPointerHaloPaint:Landroid/graphics/Paint;

.field public mFirstPointerPaint:Landroid/graphics/Paint;

.field public mFirstPointerPosition:F

.field public mGridPaintMedium:Landroid/graphics/Paint;

.field public mGridPaintSmall:Landroid/graphics/Paint;

.field public mHandlerTouchPosition:F

.field public mHideProgressWhenEmpty:Z

.field public mIconSize:F

.field public final mIsExpandCollapseAnimation:Z

.field public mLastPointerTouched:I

.field public mLockAtEnd:Z

.field public mLockAtStart:Z

.field public mLockEnabled:Z

.field public mMaintainEqualCircle:Z

.field public mMax:F

.field public mMiddleGradientColor:I

.field public mPointerStrokeWidth:F

.field public mProgress:F

.field public mProgressDegrees:F

.field public mRadiusIn:F

.field public mRadiusOut:F

.field public mSecondPointerAngle:F

.field public mSecondPointerColor:I

.field public mSecondPointerHaloColor:I

.field public mSecondPointerHaloPaint:Landroid/graphics/Paint;

.field public mSecondPointerPaint:Landroid/graphics/Paint;

.field public mSecondPointerPosition:F

.field public mSleepGoalWheelPaint:Landroid/graphics/Paint;

.field public mSleepGoalWheelPath:Landroid/graphics/Path;

.field public final mSleepGoalWheelRectF:Landroid/graphics/RectF;

.field public mSleepGoalWheelStrokeWidth:F

.field public mStartAngle:F

.field public mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

.field public mTotalCircleDegrees:F

.field public mTouchDistanceFromFirstPointer:F

.field public mTouchDistanceFromSecondPointer:F

.field public mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

.field public mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

.field public final mWakeUpTimeIconRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_CIRCLE_STYLE:I

    const/16 v0, 0xff

    const/16 v1, 0x85

    const/16 v2, 0x87

    const/16 v3, 0xfe

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_COLOR:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_MIDDLE_COLOR:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_HALO_COLOR:I

    const/16 v1, 0xa7

    const/4 v2, 0x0

    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_COLOR:I

    invoke-static {v0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_HALO_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    iput p3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->init()V

    return-void
.end method


# virtual methods
.method public final drawFirstPointer(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final drawSecondPointer(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIsExpandCollapseAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final init()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v2, Landroidx/picker/R$styleable;->seslCircularSeekBar:[I

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDefStyle:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x17

    const/high16 v2, 0x42820000    # 65.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    const/16 v1, 0xd

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    const/16 v1, 0x16

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07115e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    sget v1, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_CIRCLE_STYLE:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    const/16 v1, 0x11

    sget v2, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_MIDDLE_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMiddleGradientColor:I

    const/16 v1, 0xa

    sget v2, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    const/16 v1, 0xb

    sget v2, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_FIRST_POINTER_HALO_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloColor:I

    const/16 v1, 0x19

    sget v2, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    const/16 v1, 0x1a

    sget v2, Landroidx/picker/widget/SeslCircularSeekBarView;->DEFAULT_SECOND_POINTER_HALO_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloColor:I

    const/4 v1, 0x1

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleColor:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillColor:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridSmall:I

    const/4 v2, 0x3

    const v3, -0x777778

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridMedium:I

    const/16 v2, 0x10

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    const/16 v2, 0x18

    const/16 v3, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    const/high16 v1, 0x40f00000    # 7.5f

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const/high16 v1, 0x43610000    # 225.0f

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/16 v1, 0x1b

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v1, v3

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    rem-float/2addr v1, v3

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mEndAngle:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    rem-float/2addr v2, v3

    rem-float v4, v1, v3

    cmpl-float v2, v2, v4

    const v4, 0x3dcccccd    # 0.1f

    if-nez v2, :cond_0

    sub-float/2addr v1, v4

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mEndAngle:F

    :cond_0
    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    rem-float/2addr v5, v3

    add-float/2addr v5, v3

    rem-float/2addr v5, v3

    iput v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_1

    iput v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    rem-float/2addr v1, v3

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iput v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    :cond_2
    new-instance v1, Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e6147ae    # 0.22f

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {v3, v5, v6, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b59

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080caf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0608d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initPaints()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    new-instance v0, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    invoke-direct {v0}, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    return-void
.end method

.method public final initPaints()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelStrokeWidth:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060928

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridSmall:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleGridMedium:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060853

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PathDashPathEffect;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mDashLineStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f071001

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, v3

    sget-object v3, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v2, v0, p0, v4, v3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-wide/16 v10, 0x0

    :goto_0
    const-wide v1, 0x4076800000000000L    # 360.0

    cmpg-double v1, v10, v1

    if-gtz v1, :cond_3

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    float-to-double v1, v1

    add-double/2addr v1, v10

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    iget-object v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v3, v3

    iget v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    const/high16 v12, 0x40200000    # 2.5f

    mul-float/2addr v6, v12

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v5

    add-double/2addr v13, v3

    double-to-float v3, v13

    iget-object v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-double v4, v4

    iget v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v13, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v13, v12

    sub-float/2addr v6, v13

    float-to-double v13, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v4, v15

    double-to-float v4, v4

    iget-object v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-double v5, v5

    iget v13, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v14, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    float-to-double v13, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    double-to-float v5, v5

    iget-object v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-double v13, v6

    iget v6, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    iget v15, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v15, v12

    add-float/2addr v15, v6

    float-to-double v8, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v8

    add-double/2addr v1, v13

    double-to-float v6, v1

    const-wide v1, 0x4056800000000000L    # 90.0

    rem-double v1, v10, v1

    const-wide/16 v8, 0x0

    cmpl-double v12, v1, v8

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    if-eqz v12, :cond_0

    cmpl-double v12, v1, v8

    if-eqz v12, :cond_0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpl-double v12, v1, v12

    if-eqz v12, :cond_0

    const-wide v12, 0x4055c00000000000L    # 87.0

    cmpl-double v12, v1, v12

    if-eqz v12, :cond_0

    const-wide v12, 0x4055e00000000000L    # 87.5

    cmpl-double v1, v1, v12

    if-eqz v1, :cond_0

    const-wide v1, 0x4065e00000000000L    # 175.0

    cmpl-double v1, v10, v1

    if-eqz v1, :cond_0

    const-wide v1, 0x4067200000000000L    # 185.0

    cmpl-double v1, v10, v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_1
    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    rem-double v1, v10, v1

    const-wide/16 v12, 0x0

    cmpl-double v1, v1, v12

    if-nez v1, :cond_2

    iget-object v14, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintMedium:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v14, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mGridPaintSmall:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-double/2addr v10, v8

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    iget-object v2, v1, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->color:[I

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMiddleGradientColor:I

    const/4 v6, 0x2

    aput v3, v2, v6

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerColor:I

    const/4 v8, 0x3

    aput v3, v2, v8

    const/4 v9, 0x4

    aput v3, v2, v9

    iget-object v1, v1, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->pos:[F

    const/4 v2, 0x0

    aput v2, v1, v4

    iget v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v2

    aput v3, v1, v5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    aput v3, v1, v6

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, v2

    aput v3, v1, v8

    aput v2, v1, v9

    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSweepGradientVariable:Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;

    iget-object v5, v4, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->color:[I

    iget-object v4, v4, Landroidx/picker/widget/SeslCircularSeekBarView$SweepGradientVariable;->pos:[F

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget-object v4, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawSecondPointer(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawFirstPointer(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawFirstPointer(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/picker/widget/SeslCircularSeekBarView;->drawSecondPointer(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    if-nez p2, :cond_0

    move p2, p1

    :cond_0
    if-nez p1, :cond_1

    move p1, p2

    :cond_1
    iget-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071166

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071165

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p2, p1

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

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07116b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x43d20000    # 420.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07116a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    :cond_3
    div-float/2addr p1, v0

    sub-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    div-float/2addr v2, v0

    sub-float/2addr v2, p2

    iput v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget-boolean p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMaintainEqualCircle:Z

    if-eqz p2, :cond_4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    :cond_4
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0711bb

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iput p2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float/2addr p1, p2

    iput p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    const-string v0, "PROGRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    const-string v0, "mProgressDegrees"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    const-string v0, "mSecondPointerPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    const-string v0, "mFirstPointerPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const-string v0, "mSecondPointerAngle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const-string v0, "mLockEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    const-string v0, "mLockAtStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    const-string v0, "mLockAtEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    const-string v1, "mCircleStyle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    const-string v0, "mLastPointerTouched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    const-string v0, "mHideProgressWhenEmpty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->initPaints()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslCircularSeekBarView;->recalculateAll()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARENT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mMax:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "PROGRESS"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mProgressDegrees"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mSecondPointerPosition"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mFirstPointerPosition"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mSecondPointerAngle"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "mLockEnabled"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockEnabled:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mLockAtStart"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtStart:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mLockAtEnd"

    iget-boolean v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLockAtEnd:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStyle:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v0

    const-string v2, "mCircleStyle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mLastPointerTouched"

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mLastPointerTouched:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mHideProgressWhenEmpty"

    iget-boolean p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mHideProgressWhenEmpty:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircularSeekBarRevealAnimation:Landroidx/picker/widget/SeslCircularSeekBarRevealAnimation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v5, v3, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    sub-float/2addr v2, v5

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceX:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v5, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    sub-float/2addr v0, v5

    iput v0, v3, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceY:F

    iget v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceX:F

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v0, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->distanceY:F

    float-to-double v9, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchEventRadius:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    const/high16 v2, 0x42400000    # 48.0f

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->DPTOPX_SCALE:F

    mul-float/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleStrokeWidth:F

    cmpg-float v5, v2, v3

    if-gez v5, :cond_0

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    div-float v3, v2, v4

    :goto_0
    iput v3, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v5, v3, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    add-float/2addr v2, v5

    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v5, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->additionalRadius:F

    sub-float/2addr v0, v5

    iput v0, v3, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->innerRadius:F

    iget v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->y:F

    float-to-double v5, v0

    iget v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->x:F

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v9

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v5, v9

    double-to-float v0, v5

    iput v0, v2, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    const/4 v3, 0x0

    cmpg-float v5, v2, v3

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v2, v6

    :cond_1
    iput v2, v0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    return v0

    :cond_2
    const-string p0, "CircularSeekBar"

    const-string p1, "MotionEvent.ACTION_CANCEL"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTouchEventVariable:Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;

    iget v2, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchAngle:F

    iget v5, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->touchEventRadius:F

    iget v9, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->innerRadius:F

    iget p1, p1, Landroidx/picker/widget/SeslCircularSeekBarView$TouchEventVariable;->outerRadius:F

    iget v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mPointerStrokeWidth:F

    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    iget v13, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v12, v7

    div-double/2addr v10, v12

    double-to-float v7, v10

    iget v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    div-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v7, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    sub-float v7, v2, v7

    cmpg-float v8, v7, v3

    if-gez v8, :cond_6

    add-float/2addr v7, v6

    :cond_6
    sub-float v8, v6, v7

    iget v10, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float v11, v2, v10

    cmpg-float v12, v11, v3

    if-gez v12, :cond_7

    add-float/2addr v11, v6

    :cond_7
    sub-float/2addr v6, v11

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_8

    cmpg-float p1, v5, p1

    if-gtz p1, :cond_8

    move p1, v0

    goto :goto_1

    :cond_8
    move p1, v1

    :goto_1
    cmpg-float v5, v7, v4

    if-lez v5, :cond_a

    cmpg-float v5, v8, v4

    if-gtz v5, :cond_9

    goto :goto_2

    :cond_9
    move v5, v1

    goto :goto_3

    :cond_a
    :goto_2
    move v5, v0

    :goto_3
    cmpg-float v7, v11, v4

    if-lez v7, :cond_c

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_b

    goto :goto_4

    :cond_b
    move v4, v1

    goto :goto_5

    :cond_c
    :goto_4
    move v4, v0

    :goto_5
    invoke-static {v10}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result v6

    iget p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    invoke-static {p0}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result p0

    invoke-static {v2}, Landroidx/picker/util/SeslSleepTimePickerUtil;->convertToTime(F)F

    move-result v2

    cmpg-float v7, v6, p0

    if-gez v7, :cond_e

    cmpl-float v3, v2, v6

    if-lez v3, :cond_10

    cmpg-float p0, v2, p0

    if-gez p0, :cond_10

    :cond_d
    :goto_6
    move p0, v0

    goto :goto_7

    :cond_e
    cmpl-float v7, v6, p0

    if-lez v7, :cond_10

    cmpl-float v6, v2, v6

    if-lez v6, :cond_f

    const/high16 v6, 0x44b40000    # 1440.0f

    cmpg-float v6, v2, v6

    if-lez v6, :cond_d

    :cond_f
    cmpg-float p0, v2, p0

    if-gez p0, :cond_10

    cmpl-float p0, v2, v3

    if-lez p0, :cond_10

    goto :goto_6

    :cond_10
    move p0, v1

    :goto_7
    if-eqz p1, :cond_11

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    goto :goto_8

    :cond_11
    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    goto :goto_8

    :cond_12
    if-eqz p1, :cond_13

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    if-eqz p1, :cond_14

    if-eqz p0, :cond_14

    :goto_8
    move v1, v0

    :cond_14
    return v1
.end method

.method public final recalculateAll()V
    .locals 14

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

    iput v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    :cond_0
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    sub-float/2addr v0, v3

    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    add-float/2addr v0, v1

    :cond_1
    iput v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleWidth:F

    neg-float v3, v2

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleHeight:F

    neg-float v5, v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSleepGoalWheelRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusIn:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCirclePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v3, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mStartAngle:F

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mTotalCircleDegrees:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v0, v4

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgressDegrees:F

    add-float/2addr v4, v2

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_2

    const v4, 0x43b3f333    # 359.9f

    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mProgress:F

    float-to-double v1, v1

    const-wide/high16 v5, 0x401a000000000000L    # 6.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleLineProgressPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    :cond_3
    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleSecondPointerPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerAngle:F

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleFirstPointerPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerAngle:F

    invoke-virtual {v1, v2, v0, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mFirstPointerPosition:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    float-to-double v8, v2

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v12, v8

    double-to-float v2, v12

    iget v8, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float/2addr v8, v3

    sub-float/2addr v2, v8

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-double v8, v2

    iget v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    double-to-float v2, v4

    iget v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float v5, v4, v3

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mBedTimeIconRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mSecondPointerPosition:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v6

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    float-to-double v4, v4

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    double-to-float v4, v8

    iget v5, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-double v4, v4

    iget v6, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mRadiusOut:F

    float-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mIconSize:F

    div-float v3, v1, v3

    sub-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Landroidx/picker/widget/SeslCircularSeekBarView;->mWakeUpTimeIconRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
