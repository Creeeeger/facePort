.class public Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;
.super Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;
.source "SingleProgressbar.java"


# instance fields
.field private mPercentage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getDuration()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;->getPercentage()F

    move-result p0

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method protected getPercentage()F
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;->mPercentage:F

    return p0
.end method

.method protected initProgressBar()V
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->initProgressBar()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;->mPercentage:F

    .line 30
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->dw_graph_line_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->dw_data_type_empty_color:I

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
    .locals 13

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 69
    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    iget v11, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method protected onProgress()I
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;->mPercentage:F

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public setHeight(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    return-void
.end method
