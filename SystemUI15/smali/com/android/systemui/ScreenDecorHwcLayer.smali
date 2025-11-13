.class public final Lcom/android/systemui/ScreenDecorHwcLayer;
.super Lcom/android/systemui/DisplayCutoutBaseView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgColor:I

.field public final clearPaint:Landroid/graphics/Paint;

.field public color:I

.field public final cornerBgFilter:Landroid/graphics/ColorFilter;

.field public cornerFilter:Landroid/graphics/ColorFilter;

.field public final debug:Z

.field public debugTransparentRegion:Z

.field public final debugTransparentRegionPaint:Landroid/graphics/Paint;

.field public hasBottomRoundedCorner:Z

.field public hasTopRoundedCorner:Z

.field public roundedCornerBottomSize:I

.field public roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

.field public roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

.field public roundedCornerTopSize:I

.field public final tempRect:Landroid/graphics/Rect;

.field public final transparentRect:Landroid/graphics/Rect;

.field public final useInvertedAlphaColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/graphics/common/DisplayDecorationSupport;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debug:Z

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegion:Z

    iget v1, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const p1, -0xff0100

    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    iget-object p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const p2, 0x2f00ff00

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_0
    iget p2, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    iget-object p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    iget-object p2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    :goto_2
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerFilter:Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerBgFilter:Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget p1, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Attempting to use unsupported mode "

    invoke-static {p2, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final calculateTransparentRect()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    move v2, v4

    :cond_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_2

    move v2, v4

    :cond_2
    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_4

    move v2, v4

    :cond_4
    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_6

    move v0, v2

    :cond_6
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_8

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    mul-float/2addr v5, v6

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v2, v4

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    sub-float v7, v0, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    sub-float v8, v2, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    add-float/2addr v0, v5

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v0, v9

    float-to-int v0, v0

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-int v2, v2

    invoke-virtual {v6, v7, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    filled-new-array {v0, v4, v5}, [I

    move-result-object v6

    move v8, v2

    move v7, v3

    :goto_0
    if-ge v7, v1, :cond_9

    aget v9, v6, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_9
    if-ne v8, v2, :cond_b

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_a

    move v2, v4

    :cond_a
    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_b
    if-ne v8, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_c

    move v2, v4

    :cond_c
    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_d
    if-ne v8, v4, :cond_f

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_e

    move v2, v4

    :cond_e
    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_f
    if-ne v8, v5, :cond_11

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v4, :cond_10

    move v2, v4

    :cond_10
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_2

    :cond_12
    move v4, v3

    goto :goto_3

    :cond_13
    :goto_2
    move v4, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    move v0, v3

    goto :goto_5

    :cond_15
    :goto_4
    move v0, v2

    goto :goto_5

    :cond_16
    move v0, v3

    move v4, v0

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x2

    if-ge v5, v6, :cond_1c

    if-nez v4, :cond_19

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_17

    move v1, v3

    :cond_17
    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v7}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-le v0, p0, :cond_18

    move v0, p0

    :cond_18
    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_1a

    move v2, v4

    :cond_1a
    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, p0, :cond_1b

    move v0, p0

    :cond_1b
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_1c
    if-eqz v4, :cond_1f

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_1d

    move v2, v4

    :cond_1d
    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, p0, :cond_1e

    move v0, p0

    :cond_1e
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_20

    move v1, v3

    :cond_20
    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v7}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-le v0, p0, :cond_21

    move v0, p0

    :cond_21
    iput v0, v2, Landroid/graphics/Rect;->right:I

    :goto_6
    return-void
.end method

.method public final drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    if-eqz v0, :cond_1

    int-to-float v5, p3

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerBgFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "ScreenDecorHwcLayer:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->dump(Ljava/io/PrintWriter;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transparentRect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasTopRoundedCorner="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasBottomRoundedCorner="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "roundedCornerTopSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "roundedCornerBottomSize="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorHwcLayer;->calculateTransparentRect()V

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getRoundedCornerSizeByPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect position: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    if-ge p1, p0, :cond_2

    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorHwcLayer;->updateColors()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegion:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v2, v1, 0x5a

    iget v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    const/16 v4, 0x5a

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    int-to-float v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    const-string v3, "Incorrect degree: "

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_6

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    :goto_2
    neg-int v7, v7

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_6
    move v7, v0

    :goto_3
    int-to-float v7, v7

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_9

    if-eq v2, v6, :cond_8

    if-ne v2, v5, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_4
    neg-int v2, v2

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_4

    :cond_a
    :goto_5
    move v2, v0

    :goto_6
    int-to-float v2, v2

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    if-eqz v2, :cond_c

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_7

    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    :cond_e
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public final onUpdate()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public final updateColors()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debug:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDisplayDecoration(Z)V

    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerFilter:Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    return-void
.end method

.method public final updateRoundedCornerExistenceAndSize(IIZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    iput-boolean p4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    iput p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    iget-object p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    invoke-virtual {p1, p3, p3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
