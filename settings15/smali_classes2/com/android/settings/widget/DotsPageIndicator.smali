.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animDuration:J

.field public final animHalfDuration:J

.field public attachedState:Z

.field public final combinedUnselectedPath:Landroid/graphics/Path;

.field public currentPage:I

.field public dotBottomY:F

.field public dotCenterX:[F

.field public dotCenterY:F

.field public final dotDiameter:I

.field public final dotRadius:F

.field public dotRevealFractions:[F

.field public dotTopY:F

.field public endX1:F

.field public endY1:F

.field public final gap:I

.field public final halfDotRadius:F

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public joiningAnimationSet:Landroid/animation/AnimatorSet;

.field public joiningAnimations:[Landroid/animation/ValueAnimator;

.field public joiningFractions:[F

.field public moveAnimation:Landroid/animation/ValueAnimator;

.field public pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public pageCount:I

.field public final rectF:Landroid/graphics/RectF;

.field public retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field public retreatingJoinX1:F

.field public retreatingJoinX2:F

.field public revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field public final selectedColour:I

.field public selectedDotInPosition:Z

.field public selectedDotX:F

.field public final selectedPaint:Landroid/graphics/Paint;

.field public final unselectedColour:I

.field public final unselectedDotLeftPath:Landroid/graphics/Path;

.field public final unselectedDotPath:Landroid/graphics/Path;

.field public final unselectedDotRightPath:Landroid/graphics/Path;

.field public final unselectedPaint:Landroid/graphics/Paint;

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static bridge synthetic -$$Nest$msetPageCount(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/widget/DotsPageIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->DotsPageIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, v0, 0x8

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    div-int/2addr p3, v1

    int-to-float p3, p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    mul-int/lit8 v0, v0, 0xc

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    const/16 p3, 0x190

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    const/4 p3, 0x4

    const v0, -0x7f000001

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getRequiredWidth()I
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v9, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-eq p1, v9, :cond_5

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    sub-int v3, p1, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v3, p1

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    new-array v5, v0, [F

    aput v4, v5, v2

    aput v3, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    const/high16 v4, 0x3e800000    # 0.25f

    if-le p1, v9, :cond_1

    new-instance v5, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float v6, v3, v6

    mul-float/2addr v6, v4

    sub-float/2addr v3, v6

    invoke-direct {v5, v3, v1}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(FI)V

    :goto_0
    move-object v8, v5

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    invoke-static {v6, v3, v4, v3}, Landroidx/compose/animation/AndroidFlingSpline$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    invoke-direct {v5, v3, v2}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(FI)V

    goto :goto_0

    :goto_1
    move-object v3, v12

    move-object v4, p0

    move v5, v9

    move v6, p1

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;)V

    iput-object v12, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    new-instance v3, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {v3, v2, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {v3, v2, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    const-wide/16 v4, 0x4

    if-eqz v3, :cond_2

    iget-wide v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    div-long/2addr v6, v4

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    :goto_2
    invoke-virtual {v11, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v12, 0x3

    mul-long/2addr v6, v12

    div-long/2addr v6, v4

    invoke-virtual {v11, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v11, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    new-array v3, v10, [Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    :goto_3
    if-ge v2, v10, :cond_4

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    if-le p1, v9, :cond_3

    add-int v4, v9, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v9, -0x1

    sub-int/2addr v4, v2

    :goto_4
    int-to-long v5, v2

    iget-wide v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v11, 0x8

    div-long/2addr v7, v11

    mul-long/2addr v7, v5

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v11, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v5, v3, v2

    add-int/2addr v2, v1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final calculateDotPositions()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method public final cancelRunningAnimations()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method public final clearAnimation()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    return-void
.end method

.method public getCurrentPage()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    return p0
.end method

.method public getDotCenterY()F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    return p0
.end method

.method public getSelectedColour()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    return p0
.end method

.method public getSelectedDotX()F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p0
.end method

.method public getUnselectedColour()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_a

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    :goto_1
    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v14, v6, v2

    aget v5, v6, v5

    if-ne v2, v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aget v3, v3, v2

    :goto_2
    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aget v6, v6, v2

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    const/4 v7, 0x0

    cmpl-float v8, v3, v7

    const/4 v15, 0x1

    if-eqz v8, :cond_3

    cmpl-float v9, v3, v4

    if-nez v9, :cond_5

    :cond_3
    cmpl-float v7, v6, v7

    if-nez v7, :cond_5

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-ne v2, v7, :cond_4

    iget-boolean v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-eq v7, v15, :cond_5

    :cond_4
    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v9, v9, v2

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_5
    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v12, 0x42b40000    # 90.0f

    if-lez v8, :cond_6

    cmpg-float v7, v3, v16

    if-gez v7, :cond_6

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v9, v14, v8

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v8, v14

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v8, v12, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v7, v14

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float v18, v14, v9

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    sub-float v21, v8, v9

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    move-object/from16 v17, v9

    move/from16 v19, v10

    move/from16 v20, v7

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float v10, v7, v9

    add-float v17, v14, v9

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    move v9, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move v4, v12

    move v12, v14

    move/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v9, v5, v8

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v8, v5

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-virtual {v7, v8, v4, v9, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v7, v5, v7

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float v26, v5, v9

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    sub-float v29, v8, v9

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    move-object/from16 v25, v9

    move/from16 v27, v10

    move/from16 v28, v7

    move/from16 v30, v7

    move/from16 v31, v8

    invoke-virtual/range {v25 .. v31}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float v10, v7, v9

    sub-float v11, v5, v9

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v17, v12

    move v12, v5

    move-object v4, v13

    move/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_6
    cmpl-float v4, v3, v16

    const/high16 v16, 0x3f800000    # 1.0f

    if-lez v4, :cond_7

    cmpg-float v4, v3, v16

    if-gez v4, :cond_7

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v14, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v8, v14, v7

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v7, v14

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v4, v7, v8, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float v7, v14, v4

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    mul-float v9, v3, v4

    sub-float/2addr v8, v9

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    sub-float v20, v7, v9

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    sub-float v17, v16, v3

    mul-float v4, v4, v17

    sub-float v22, v7, v4

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move-object/from16 v19, v4

    move/from16 v21, v9

    move/from16 v23, v8

    move/from16 v24, v7

    move/from16 v25, v8

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v9, v17, v8

    add-float/2addr v9, v7

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    mul-float/2addr v8, v3

    add-float v11, v8, v7

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v4

    move v12, v5

    move v1, v13

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v8, v5, v7

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v7, v5

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v4, v7, v8, v1, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v7, v3, v4

    add-float/2addr v1, v7

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    add-float v20, v7, v8

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    mul-float v4, v4, v17

    add-float v22, v4, v8

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move-object/from16 v19, v4

    move/from16 v21, v7

    move/from16 v23, v1

    move/from16 v24, v8

    move/from16 v25, v1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v17, v17, v4

    sub-float v8, v1, v17

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    mul-float/2addr v4, v3

    sub-float v10, v1, v4

    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move v11, v13

    move v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_7
    cmpl-float v1, v3, v16

    if-nez v1, :cond_8

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v4, v14, v3

    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v5, v3

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v4, v7, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_8
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, v6, v1

    if-lez v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v6, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v14, v3, v6, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_9
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_a
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_b
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IIF)V

    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public final resetState()V
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iput-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    :cond_0
    return-void
.end method

.method public final setCurrentPageImmediate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    iget-object p1, p1, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {p1, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
