.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$Cell;,
        Lcom/android/internal/widget/LockPatternView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_MAX_VALUE:I = 0xff

.field private static final blacklist ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final blacklist ASPECT_LOCK_WIDTH:I = 0x1

.field private static final blacklist ASPECT_SQUARE:I = 0x0

.field private static final blacklist CELL_ACTIVATE:I = 0x0

.field private static final blacklist CELL_DEACTIVATE:I = 0x1

.field public static final blacklist DEBUG_A11Y:Z = false

.field private static final blacklist DOT_ACTIVATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist DOT_RADIUS_DECREASE_DURATION_MILLIS:I = 0xc0

.field private static final blacklist DOT_RADIUS_INCREASE_DURATION_MILLIS:I = 0x60

.field protected static final blacklist DRAG_THRESHHOLD:F = 0.0f

.field private static final blacklist LINE_END_ANIMATION_DURATION_MILLIS:I = 0x32

.field protected static final blacklist MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final blacklist MIN_DOT_HIT_FACTOR:F = 0.2f

.field private static final blacklist PROFILE_DRAWING:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternView"

.field public static final blacklist VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field protected blacklist mAnimatingPeriodStart:J

.field private blacklist mAspect:I

.field protected final blacklist mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field protected final blacklist mCurrentPath:Landroid/graphics/Path;

.field private blacklist mDotActivatedColor:I

.field private blacklist mDotColor:I

.field private final blacklist mDotHitFactor:F

.field private blacklist mDotHitMaxRadius:F

.field private blacklist mDotHitRadius:F

.field private final blacklist mDotSize:I

.field private final blacklist mDotSizeActivated:I

.field private blacklist mDrawingProfilingStarted:Z

.field private blacklist mEnlargeVertex:Z

.field private blacklist mErrorColor:I

.field private final blacklist mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private blacklist mFadeAnimationAlpha:I

.field private blacklist mFadeClear:Z

.field private blacklist mFadeOutGradientShader:Landroid/graphics/LinearGradient;

.field private blacklist mFadePattern:Z

.field private final blacklist mFadePatternAnimationDelayMs:I

.field private final blacklist mFadePatternAnimationDurationMs:I

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected blacklist mInProgressX:F

.field protected blacklist mInProgressY:F

.field protected greylist mInStealthMode:Z

.field private blacklist mInputEnabled:Z

.field protected final blacklist mInvalidate:Landroid/graphics/Rect;

.field private blacklist mKeepDotActivated:Z

.field private final blacklist mLineFadeOutAnimationDelayMs:I

.field private final blacklist mLineFadeOutAnimationDurationMs:I

.field private blacklist mLineFadeStart:[J

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private blacklist mOriginPathColor:I

.field private blacklist mOriginRegularColor:I

.field private blacklist mOriginSuccessColor:I

.field protected final greylist mPaint:Landroid/graphics/Paint;

.field protected final greylist mPathPaint:Landroid/graphics/Paint;

.field private final blacklist mPathWidth:I

.field protected final greylist mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field protected final blacklist mPatternDrawLookup:[[Z

.field protected greylist mPatternInProgress:Z

.field private final blacklist mPatternPath:Landroid/graphics/Path;

.field private blacklist mRegularColor:I

.field private blacklist mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field protected greylist mSquareHeight:F

.field protected greylist mSquareWidth:F

.field private final blacklist mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mSuccessColor:I

.field protected final blacklist mTmpInvalidateRect:Landroid/graphics/Rect;

.field private blacklist mUseLockPatternDrawable:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1p7c1z0e6_J5Y9SXs1wkVl8Hzig(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JZpXCsCkFuuVqh7jRi9sEhjBiQU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MFqzMAhlEv8Tvsad0E1aJPdwdrM(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RPYxufAqLTe9AmQCY_DGPjKv9sU(Lcom/android/internal/widget/LockPatternView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t5G2IjsRpY6s0HgwZGOaUwLZ-fY(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotSize(Lcom/android/internal/widget/LockPatternView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnimationAlpha(Lcom/android/internal/widget/LockPatternView;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeClear(Lcom/android/internal/widget/LockPatternView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetPattern(Lcom/android/internal/widget/LockPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v5, v3, [I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    aput v7, v5, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    iput-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    const/16 v4, 0xff

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v5, 0x112009e

    const v8, 0x1030541

    move-object/from16 v9, p2

    invoke-virtual {v1, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "square"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_0
    const-string/jumbo v8, "lock_width"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput v6, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "lock_height"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput v3, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    iget-object v8, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v8, 0x7

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    const/4 v8, 0x4

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    const/16 v8, 0x8

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    const/4 v8, 0x5

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    const/4 v8, 0x6

    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mOriginRegularColor:I

    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mOriginSuccessColor:I

    iput v8, v0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105026e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01c6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01c5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01c4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e01c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050270

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105026d

    invoke-virtual {v11, v12, v10, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v10}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11102c0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    iget-boolean v11, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10806f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10806ee

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-array v11, v3, [I

    aput v7, v11, v6

    aput v7, v11, v2

    const-class v2, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_4

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    new-instance v12, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v12}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v12, v11, v6

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iget v12, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v12, v3

    int-to-float v12, v12

    iput v12, v11, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iput v2, v11, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v2

    aget-object v11, v11, v6

    iput v6, v11, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    nop

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    nop

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    nop

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v2, v0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050271

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/graphics/LinearGradient;

    neg-int v6, v2

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v12, v6, v7

    int-to-float v6, v2

    div-float v14, v6, v7

    const/16 v16, 0x0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    move/from16 v17, v8

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist calculateLastSegmentAlpha(FFFF)F
    .locals 6

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v3, v2, v3

    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private blacklist cancelLineAnimations()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;I)Landroid/animation/Animator;
    .locals 7

    new-instance v0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_1

    if-nez p2, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x64

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    return-object v3

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

.method private blacklist createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;
    .locals 10

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x60

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v7, v3, [F

    aput v2, v7, v5

    aput v0, v7, v6

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xc0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v8
.end method

.method private blacklist createFadePatternAnimation()Landroid/animation/Animator;
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mStandardAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePatternAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private blacklist createLineDisappearingAnimation()Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v8, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist deactivateLastCell()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    return-void
.end method

.method private blacklist detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mEnlargeVertex:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LockPatternView;->isVertex(II)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    mul-float/2addr v5, v6

    goto :goto_2

    :cond_0
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    :goto_2
    nop

    goto :goto_3

    :cond_1
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v5, v6

    :goto_3
    sub-float v6, p1, v4

    sub-float v7, p1, v4

    mul-float/2addr v6, v7

    sub-float v7, p2, v3

    sub-float v8, p2, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, v6, v5

    if-gez v6, :cond_2

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v4, v4

    add-int/lit8 v5, p2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz p5, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private blacklist drawCircle(Landroid/graphics/Canvas;FFFZFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p6

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v1, p4, p6

    sub-float v3, v2, p6

    mul-float v3, v3, p2

    add-float v8, v1, v3

    mul-float v1, p5, p6

    sub-float v3, v2, p6

    mul-float v3, v3, p3

    add-float v9, v1, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v1, p5, p3

    sub-float v3, p4, p2

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    sub-float v3, p4, p2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v1

    :goto_0
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->rotate(F)V

    sub-float v1, p4, p2

    float-to-double v3, v1

    sub-float v1, p5, p3

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v13, v3

    neg-float v1, v13

    mul-float v3, v1, p6

    sub-float v2, v2, p6

    mul-float v4, v13, v2

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private blacklist drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V
    .locals 14

    move-object v7, p0

    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_1

    sub-long v0, p8, p6

    iget v2, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v3, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    sub-long v0, p8, p6

    iget v2, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v13, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private blacklist getCurrentColor(Z)I
    .locals 3

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return v0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return v0
.end method

.method private blacklist getDotColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0
.end method

.method private blacklist handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    return-void
.end method

.method private blacklist handleActionUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->deactivateLastCell()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    :cond_2
    return-void
.end method

.method private blacklist isVertex(II)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$createDotActivationColorAnimation$1(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 1

    nop

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createDotRadiusAnimation$4(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createFadePatternAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createLineDisappearingAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private synthetic blacklist lambda$createLineEndAnimation$2(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    mul-float/2addr v2, p2

    mul-float v3, v0, p3

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p4

    mul-float v2, v0, p5

    add-float/2addr v1, v2

    iput v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private blacklist notifyCellAdded()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private blacklist notifyPatternCleared()V
    .locals 1

    const v0, 0x104073d

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private greylist notifyPatternDetected()V
    .locals 2

    const v0, 0x104073e

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private blacklist resetLastActivatedCellProgress()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v3, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v2, v3

    iget v3, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v2, v2, v3

    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    return-void
.end method

.method private blacklist resetPattern()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetLastActivatedCellProgress()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private blacklist resolveMeasured(II)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, p2

    goto :goto_0

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist sendAccessEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist setPatternInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private blacklist startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;I)V

    return-void
.end method

.method private blacklist startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    :goto_0
    move v4, v2

    if-nez p2, :cond_2

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    :goto_1
    move v5, v2

    nop

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createLineDisappearingAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    if-eq v3, v6, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    if-eq v3, v6, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternView;->createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    new-instance v3, Lcom/android/internal/widget/LockPatternView$5;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->startCellActivationAnimation(Lcom/android/internal/widget/LockPatternView$Cell;I)V

    return-void
.end method

.method private blacklist startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14

    move-object v9, p0

    move-object v10, p1

    move/from16 v11, p5

    move/from16 v12, p3

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p7

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v0, v0, p4

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p6

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v2, v0, v11

    move-object v0, p0

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v0, p7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    new-instance v8, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v13, p13

    invoke-direct {v8, p0, p1, v13}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v1, p1

    move/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private blacklist startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move/from16 v12, p4

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p6

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    move-wide/from16 v14, p10

    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v7, p8

    invoke-virtual {v13, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object/from16 v6, p12

    invoke-virtual {v13, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/internal/widget/LockPatternView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v10, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v13, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v1, p13

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startFadePatternAnimation()V
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createFadePatternAnimation()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method

.method private blacklist startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method

.method private blacklist updateGradientPathColor(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v9, Landroid/graphics/LinearGradient;

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    int-to-float v1, v0

    div-float v4, v1, v2

    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move v2, v3

    move v3, v5

    move v5, v7

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    return-void
.end method


# virtual methods
.method protected blacklist addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method public greylist clearPattern()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method protected blacklist clearPatternDrawLookup()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    const v4, 0x3f333333    # 0.7f

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected blacklist detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v4, v6

    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v5, :cond_1

    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v4, :cond_0

    move v12, v5

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    add-int v7, v9, v12

    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v5, :cond_3

    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_2

    move v10, v5

    :cond_2
    add-int v8, v9, v10

    :cond_3
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v6, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v6

    iget v6, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mKeepDotActivated:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->startCellDeactivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    return-object v0

    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist disableInput()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public greylist enableInput()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public greylist fadeClearPattern()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->startFadePatternAnimation()V

    return-void
.end method

.method public greylist getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method protected blacklist getCenterXForColumn(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected blacklist getCenterYForRow(I)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected blacklist handleActionMove(Landroid/view/MotionEvent;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_7

    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_2
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v8, :cond_2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    :cond_2
    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_3

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    iget-boolean v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_6

    if-lez v9, :cond_6

    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v1, v16, v2

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v17, v3

    add-float v3, v16, v2

    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v18, v4

    sub-float v4, v16, v2

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v19, v6

    add-float v6, v16, v2

    if-eqz v8, :cond_5

    move/from16 v16, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v2, v2, v20

    move/from16 v21, v7

    iget v7, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float v7, v7, v20

    move/from16 v20, v9

    iget v9, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    move/from16 v22, v10

    iget v10, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    move-object/from16 v23, v8

    sub-float v8, v9, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v8, v9, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v8, v10, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v8, v10, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    move/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v22, v10

    :goto_3
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_4

    :cond_6
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v22, v10

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_7
    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    if-eqz v4, :cond_8

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method protected blacklist notifyPatternStarted()V
    .locals 1

    const v0, 0x104073f

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v12, v10, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget-object v14, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v13, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v10, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    rem-int/2addr v1, v0

    div-int/lit16 v3, v1, 0x2bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    aget-object v6, v14, v6

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    aput-boolean v2, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v13, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    rem-int/lit16 v5, v1, 0x2bc

    int-to-float v5, v5

    const/high16 v6, 0x442f0000    # 700.0f

    div-float/2addr v5, v6

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v7, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v10, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v7

    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v8

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v15, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v10, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v15

    sub-float/2addr v15, v7

    mul-float/2addr v15, v5

    iget v2, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v10, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v8

    mul-float/2addr v2, v5

    move/from16 v17, v0

    add-float v0, v7, v15

    iput v0, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    add-float v0, v8, v2

    iput v0, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_2

    :cond_2
    move/from16 v17, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    :cond_3
    iget-object v15, v10, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v16, v0

    if-eqz v16, :cond_c

    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-nez v0, :cond_c

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v10, v1}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const/4 v3, 0x0

    move v8, v1

    move v9, v2

    move v6, v3

    :goto_3
    if-ge v6, v13, :cond_8

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v14, v1

    iget v2, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4

    move v11, v9

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v22, v14

    move v14, v8

    goto/16 :goto_6

    :cond_4
    const/16 v19, 0x1

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v0, v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    aput-wide v1, v0, v6

    :cond_5
    iget v0, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v10, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    iget v0, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v10, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    if-eqz v6, :cond_7

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v3, v0, v1

    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    iget v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v1, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move/from16 v20, v0

    move/from16 v21, v1

    goto :goto_4

    :cond_6
    move v0, v5

    move v1, v4

    move/from16 v20, v0

    move/from16 v21, v1

    :goto_4
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v22, v0, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move-object/from16 v24, v3

    move v3, v9

    move-object/from16 v25, v12

    move v12, v4

    move/from16 v4, v20

    move/from16 v26, v13

    move v13, v5

    move/from16 v5, v21

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-wide/from16 v6, v22

    move v11, v9

    move-object/from16 v22, v14

    move v14, v8

    move-wide/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/LockPatternView;->drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v14, v11}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_5

    :cond_7
    move/from16 v27, v6

    move-object/from16 v28, v7

    move v11, v9

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v22, v14

    move v12, v4

    move v13, v5

    move v14, v8

    :goto_5
    move v8, v13

    move v9, v12

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v11, p1

    move/from16 v0, v19

    move-object/from16 v14, v22

    move-object/from16 v12, v25

    move/from16 v13, v26

    goto/16 :goto_3

    :cond_8
    move/from16 v27, v6

    move v11, v9

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v22, v14

    move v14, v8

    :goto_6
    iget-boolean v1, v10, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_a

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v8, p1

    goto :goto_8

    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v15, v14, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v2, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v2, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-direct {v10, v2, v3, v14, v11}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v2, v11

    invoke-virtual {v8, v15, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    move-object/from16 v8, p1

    move v2, v11

    goto :goto_8

    :cond_c
    move-object v8, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v22, v14

    :goto_8
    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mFadeClear:Z

    if-eqz v0, :cond_d

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, v10, Lcom/android/internal/widget/LockPatternView;->mFadeAnimationAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPatternPath:Landroid/graphics/Path;

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    const/4 v0, 0x0

    move v9, v0

    :goto_9
    const/4 v11, 0x3

    if-ge v9, v11, :cond_11

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_a
    if-ge v13, v11, :cond_10

    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v0, v0, v9

    aget-object v14, v0, v13

    invoke-virtual {v10, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v7

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v0, :cond_e

    iget v4, v14, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v22, v9

    aget-boolean v5, v0, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    goto :goto_b

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v14, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v0, :cond_f

    move-object v0, v8

    check-cast v0, Landroid/graphics/RecordingCanvas;

    iget-object v1, v14, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, v14, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, v14, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, v14, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_b

    :cond_f
    float-to-int v0, v7

    int-to-float v2, v0

    float-to-int v0, v12

    int-to-float v0, v0

    add-float v3, v0, v6

    iget v4, v14, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v22, v9

    aget-boolean v5, v0, v13

    iget v1, v14, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iget v0, v14, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZFF)V

    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    nop

    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    new-instance v9, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/LockPatternView$SavedState-IA;)V

    return-object v9
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitMaxRadius:F

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    :cond_1
    return v2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    return v2

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setColors(III)V
    .locals 1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->updateGradientPathColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public greylist setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public blacklist setFadePattern(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    return-void
.end method

.method public greylist setInStealthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public greylist setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public blacklist setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public blacklist startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected blacklist updateViewStyle(Z)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mOriginPathColor:I

    if-eqz p1, :cond_0

    const v1, -0xdadadb

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    move v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginRegularColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mOriginSuccessColor:I

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->updateGradientPathColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method
