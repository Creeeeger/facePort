.class public Landroidx/picker/eyeDropper/SeslMagnifyingView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public final mCenterSquarePaint:Landroid/graphics/Paint;

.field public mColorBorderColor:I

.field public final mColorBorderPaint:Landroid/graphics/Paint;

.field public final mColorBorderStrokeWidth:I

.field public final mDividersPaint:Landroid/graphics/Paint;

.field public final mInnerBorderPaint:Landroid/graphics/Paint;

.field public final mInnerBorderStrokeWidth:I

.field public mScreenShotBitmap:Landroid/graphics/Bitmap;

.field public mTouchPosX:F

.field public mTouchPosY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/eyeDropper/SeslMagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/eyeDropper/SeslMagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mInnerBorderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mDividersPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mCenterSquarePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07100a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07100c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mInnerBorderStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07100b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f06080f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p2, v3

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06081a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p2, v4

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p0, v5

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v1, v10

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosX:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v4, v7, v3

    div-float/2addr v4, v10

    sub-float v5, v2, v4

    iget v6, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mTouchPosY:F

    div-float v3, v8, v3

    div-float/2addr v3, v10

    sub-float v12, v6, v3

    add-float/2addr v2, v4

    add-float/2addr v6, v3

    invoke-direct {v1, v5, v12, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    div-float v12, v7, v10

    div-float v13, v8, v10

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v12, v13, v11, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v14, 0xf

    int-to-float v1, v14

    div-float v15, v7, v1

    div-float v16, v8, v1

    const/16 v17, 0x0

    move/from16 v6, v17

    :goto_0
    if-ge v6, v14, :cond_1

    int-to-float v1, v6

    mul-float v4, v1, v15

    iget-object v5, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mDividersPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v18, v5

    move v5, v8

    move/from16 v19, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v19, 0x1

    goto :goto_0

    :cond_1
    move/from16 v15, v17

    :goto_1
    if-ge v15, v14, :cond_2

    int-to-float v1, v15

    mul-float v5, v1, v16

    iget-object v6, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mDividersPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v5

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v7, v1

    div-float/2addr v8, v1

    div-float/2addr v7, v10

    sub-float v2, v12, v7

    add-float v4, v12, v7

    div-float/2addr v8, v10

    sub-float v3, v13, v8

    add-float v5, v13, v8

    iget v1, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mInnerBorderStrokeWidth:I

    int-to-float v7, v1

    iget-object v8, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mCenterSquarePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v3, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderStrokeWidth:I

    int-to-float v3, v3

    iget v4, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mInnerBorderStrokeWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v4, v3

    sub-float v3, v11, v4

    iget-object v4, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v3, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderStrokeWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v11, v3

    iget-object v0, v0, Landroidx/picker/eyeDropper/SeslMagnifyingView;->mColorBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v11, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
