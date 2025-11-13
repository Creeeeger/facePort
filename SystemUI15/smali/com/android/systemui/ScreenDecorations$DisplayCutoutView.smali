.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Lcom/android/systemui/DisplayCutoutBaseView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBoundingRect:Landroid/graphics/Rect;

.field public final mBounds:Ljava/util/List;

.field public mColor:I

.field public final mInitialPosition:I

.field public mPosition:I

.field public mRotation:I

.field public final mTotalBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    iget-object p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    iget p2, p2, Landroid/graphics/Point;->x:I

    iput p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->getInitialDensity()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayDensity:I

    return-void
.end method

.method public static boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getGravity(Landroid/view/DisplayCutout;)I
    .locals 2

    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x30

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x50

    return p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->showProtection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setColor$1(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateCutout()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    if-eqz v0, :cond_e

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v4, 0x2

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    if-nez v5, :cond_4

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_5
    if-ne v5, v3, :cond_6

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_6
    if-ne v5, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    iget-object v5, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v6

    invoke-static {v6, v0, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    int-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    iget v5, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_c

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v3, :cond_c

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_a

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isFillUDCDisplayCutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v1

    :goto_4
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayWidth:I

    iget v7, p0, Lcom/android/systemui/DisplayCutoutBaseView;->initialDisplayDensity:I

    iget v8, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v10, v5, Landroid/view/DisplayInfo;->rotation:I

    if-eq v10, v2, :cond_11

    if-ne v10, v3, :cond_10

    goto :goto_5

    :cond_10
    move v3, v1

    goto :goto_6

    :cond_11
    :goto_5
    move v3, v2

    :goto_6
    if-eqz v3, :cond_12

    move v10, v9

    goto :goto_7

    :cond_12
    move v10, v8

    :goto_7
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    move v8, v9

    :goto_8
    if-gtz v6, :cond_14

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    goto :goto_9

    :cond_14
    mul-int/2addr v7, v10

    div-int/2addr v7, v6

    move v3, v7

    :goto_9
    iget-object v5, v5, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    const/4 v9, 0x0

    move v6, v10

    move v7, v8

    move v8, v3

    invoke-static/range {v4 .. v9}, Landroid/view/DisplayCutout;->pathFromResourcesForUDC(Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v3, Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_a

    :cond_15
    const/16 v1, 0x8

    :goto_a
    instance-of v0, p0, Lcom/android/systemui/FaceScanningOverlay;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_16

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_b
    return-void
.end method
