.class public Lcom/android/settingslib/qrcode/QrDecorateView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackgroundColor:I

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public final mCornerColor:I

.field public mFocused:Z

.field public final mFocusedCornerColor:I

.field public mInnerFrame:Landroid/graphics/RectF;

.field public final mInnerRadius:F

.field public mMaskBitmap:Landroid/graphics/Bitmap;

.field public mMaskCanvas:Landroid/graphics/Canvas;

.field public mOuterFrame:Landroid/graphics/RectF;

.field public final mRadius:F

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mTransparentPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/qrcode/QrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mFocused:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x41400000    # 12.0f

    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mInnerRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0604e4

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mCornerColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0604e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mFocusedCornerColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0604e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mBackgroundColor:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x106000d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mFocused:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mFocusedCornerColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mCornerColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mRadius:F

    iget-object v3, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mInnerRadius:F

    iget-object v3, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x43840000    # 264.0f

    const/4 p5, 0x1

    invoke-static {p5, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p5, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    new-instance p5, Landroid/graphics/RectF;

    int-to-float p1, p1

    sub-float v0, p1, p3

    int-to-float p2, p2

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-direct {p5, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p5, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, p4

    iget p5, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p4

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p4

    invoke-direct {p1, p3, p5, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    return-void

    :cond_2
    :goto_0
    const-string p0, "QrDecorateView"

    const-string p1, "width and height must be > 0"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/qrcode/QrDecorateView;->mFocused:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
