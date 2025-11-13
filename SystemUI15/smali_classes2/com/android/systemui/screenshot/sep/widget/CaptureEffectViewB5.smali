.class public final Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;
.super Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final MODE_ADD:Landroid/graphics/PorterDuffXfermode;

.field public final MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public mCoverShape:Landroid/graphics/Bitmap;

.field public mCoverShapeBackground:Landroid/graphics/Bitmap;

.field public mEffectSize:I

.field public mMaskBgBitmap:Landroid/graphics/Bitmap;

.field public mMaskBitmap:Landroid/graphics/Bitmap;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRoundRectX:F

.field public mRoundRectY:F

.field public final mScreenMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f080692

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    const p1, 0x7f080693

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_ADD:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->updatePath(II)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_DST_IN:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->MODE_ADD:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBgBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setDegree(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mScreenMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setEffectParams(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    int-to-float p2, p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectX:F

    int-to-float p2, p3

    iget p3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectY:F

    return-void
.end method

.method public final updatePath(II)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    sub-int v1, p1, v0

    sub-int v2, p2, v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    int-to-float v4, v0

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectX:F

    iget v2, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mRoundRectY:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mEffectSize:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShape:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mCoverShapeBackground:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;->mMaskBgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
