.class public final Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;
.super Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScreenshotEffectRect()Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5ScreenEffect()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    add-int/2addr v2, p0

    sub-int/2addr v1, v2

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public final getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5ScreenEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    iget v3, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->rectToCapture:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5CoverScreenInReverseMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    iget v2, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    float-to-int v2, v2

    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    float-to-int p0, p0

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeWidth:F

    float-to-int v0, v0

    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenNativeHeight:F

    float-to-int p0, p0

    invoke-virtual {v1, v3, v3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-object v1
.end method

.method public final isB5CoverScreenInReverseMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getNavBarPosition(Landroid/content/Context;IZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {p0, v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getDegreesForRotation(Landroid/view/Display;)F

    move-result p0

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isB5ScreenEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isLetterBoxHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;->isB5CoverScreenInReverseMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLetterBoxHide()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
