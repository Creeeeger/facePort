.class public Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;
.super Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;
.source "StackProgressbar.java"


# instance fields
.field private mColorsDisabled:Z

.field private final mDisabledStackedProgressColors:[I

.field private mGraphWidths:[F

.field private final mStackedProgressColors:[I

.field private mTotalScreenTime:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    new-array p2, p1, [I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->dw_data_type_1:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->dw_data_type_2:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v2, 0x1

    aput v0, p2, v2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$color;->dw_data_type_3:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v3, 0x2

    aput v0, p2, v3

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/settings/R$color;->dw_data_type_4:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v4, 0x3

    aput v0, p2, v4

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mStackedProgressColors:[I

    new-array p1, p1, [I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->dw_data_type_1_disabled:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    aput p2, p1, v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->dw_data_type_2_disabled:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    aput p2, p1, v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->dw_data_type_3_disabled:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    aput p2, p1, v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->dw_data_type_4_disabled:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    aput p2, p1, v4

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mDisabledStackedProgressColors:[I

    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mColorsDisabled:Z

    return-void
.end method

.method private getBarColor(I)I
    .locals 3

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mColorsDisabled:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 147
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mDisabledStackedProgressColors:[I

    aget v1, p0, p1

    :goto_0
    return v1

    .line 149
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mStackedProgressColors:[I

    aget v1, p0, p1

    :goto_1
    return v1
.end method

.method private getBarWidth(I)F
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mGraphWidths:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    aget p1, v0, p1

    div-float/2addr p1, v2

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    mul-float/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private getEndPoint(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 185
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getBarWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private getStartPoint(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getBarWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method protected initProgressBar()V
    .locals 4

    .line 39
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->initProgressBar()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mGraphWidths:[F

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->dw_data_outline_light_color_no_theme:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->dw_data_type_5:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 83
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 85
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v13, v1

    iget v14, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    sget-object v17, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v15, v1

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 87
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    move v7, v1

    .line 94
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mGraphWidths:[F

    array-length v1, v1

    if-ge v7, v1, :cond_2

    .line 96
    invoke-direct {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getBarColor(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 100
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getStartPoint(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getEndPoint(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-direct {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getStartPoint(I)I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->getEndPoint(I)I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 119
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    iget v14, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    sget-object v17, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v15, v1

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 126
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onProgress()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public setProgressbar([FFZ)V
    .locals 3

    .line 53
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mGraphWidths:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 57
    aget v1, p1, v0

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mTotalScreenTime:F

    div-float/2addr p2, p3

    const/high16 p3, 0x44fa0000    # 2000.0f

    mul-float/2addr p2, p3

    float-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public setProgressbar([FFZZ)V
    .locals 0

    .line 47
    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->mColorsDisabled:Z

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;->setProgressbar([FFZ)V

    return-void
.end method
