.class public Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBarBgPaint:Landroid/graphics/Paint;

.field public final mBarPaint:Landroid/graphics/Paint;

.field public final mGraphHeight:F

.field public final mGraphOutlinePath:Landroid/graphics/Path;

.field public final mGraphOutlineStrokePaint:Landroid/graphics/Paint;

.field public final mGraphRadius:F

.field public final mGraphWidths:[F

.field public mIsBandColor:Z

.field public mMaxGraphWidth:F

.field public mProgress:F

.field public final mProgressAnimator:Landroid/animation/ValueAnimator;

.field public mTotalScreenTime:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0714ac

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0714ad

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphRadius:F

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mTotalScreenTime:F

    const/4 p2, 0x4

    new-array v1, p2, [F

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    aput p1, v2, v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f06076e

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f06076f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/SineInOut90;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v4, p1, v5, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/SineInOut90;->mCubic:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$1;-><init>(Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mIsBandColor:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphRadius:F

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mIsBandColor:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0301fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    aget v2, v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0301fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    aget v2, v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move v3, v0

    move v4, v2

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mTotalScreenTime:F

    cmpl-float v7, v6, v2

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    aget v5, v5, v3

    div-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mMaxGraphWidth:F

    mul-float/2addr v5, v6

    goto :goto_4

    :cond_2
    :goto_3
    move v5, v2

    :goto_4
    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_5

    :cond_4
    move v3, v0

    :goto_5
    int-to-float v5, v3

    const/4 v3, 0x4

    if-ge v1, v3, :cond_8

    move v3, v0

    move v4, v2

    :goto_6
    if-gt v3, v1, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    if-eqz v6, :cond_6

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mTotalScreenTime:F

    cmpl-float v8, v7, v2

    if-nez v8, :cond_5

    goto :goto_7

    :cond_5
    aget v6, v6, v3

    div-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mMaxGraphWidth:F

    mul-float/2addr v6, v7

    goto :goto_8

    :cond_6
    :goto_7
    move v6, v2

    :goto_8
    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    int-to-float v7, v2

    iget v8, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mBarPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mMaxGraphWidth:F

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphRadius:F

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->onDraw$com$samsung$android$settings$wifi$develop$weeklyreport$progressbar$WeeklyReportAbsProgressbar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onDraw$com$samsung$android$settings$wifi$develop$weeklyreport$progressbar$WeeklyReportAbsProgressbar(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgress:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mMaxGraphWidth:F

    return-void
.end method

.method public final setProgressbar([FFZ)V
    .locals 3

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mTotalScreenTime:F

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mGraphWidths:[F

    aget v2, p1, v0

    aput v2, v1, v0

    aget v1, p1, v0

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget p3, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mTotalScreenTime:F

    div-float/2addr p2, p3

    const/high16 p3, 0x44fa0000    # 2000.0f

    mul-float/2addr p2, p3

    float-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method
