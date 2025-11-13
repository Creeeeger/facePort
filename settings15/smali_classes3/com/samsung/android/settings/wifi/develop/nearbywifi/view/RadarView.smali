.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCircle:Landroid/graphics/drawable/GradientDrawable;

.field public mRadarUnits:Ljava/util/List;

.field public mTextPaint:Landroid/graphics/Paint;

.field public mTextPaint2:Landroid/graphics/Paint;

.field public mTextSizeInPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method


# virtual methods
.method public final getPixelsFromDp(F)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public final init()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->getPixelsFromDp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->getPixelsFromDp(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->getPixelsFromDp(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint2:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->getPixelsFromDp(F)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v3, 0x2

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    if-le v2, v5, :cond_1

    int-to-double v2, v3

    div-double/2addr v2, v7

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    int-to-double v9, v3

    int-to-double v2, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v11

    sub-double/2addr v9, v2

    div-double/2addr v9, v11

    double-to-int v5, v9

    div-double/2addr v2, v7

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    iget-wide v11, v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    iget-wide v13, v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    mul-double/2addr v11, v13

    mul-double/2addr v11, v2

    int-to-double v6, v4

    add-double/2addr v11, v6

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v11, v6

    double-to-float v6, v11

    iget-wide v7, v10, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    sub-double v7, v10, v7

    mul-double/2addr v7, v2

    int-to-double v10, v5

    add-double/2addr v7, v10

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v7, v10

    double-to-float v7, v7

    const-wide v10, 0x4061600000000000L    # 139.0

    mul-double/2addr v10, v13

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v10, v10, v16

    const-wide/high16 v18, 0x405d000000000000L    # 116.0

    add-double v10, v10, v18

    double-to-int v8, v10

    const-wide v10, 0x4064c00000000000L    # 166.0

    mul-double/2addr v10, v13

    div-double v10, v10, v16

    const-wide v18, 0x4056400000000000L    # 89.0

    add-double v10, v10, v18

    double-to-int v10, v10

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double/2addr v13, v11

    div-double v13, v13, v16

    const-wide v11, 0x406f800000000000L    # 252.0

    add-double/2addr v13, v11

    double-to-int v11, v13

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    const-string v10, "#6149D2"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v6, v6

    neg-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    goto/16 :goto_1

    :cond_2
    const-string v6, "-51"

    const-string v7, "-63"

    const-string v8, "-75"

    const-string v9, "-87"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Best"

    const-string v8, "Good"

    const-string v9, "Bad"

    const-string v10, "Worst"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    int-to-double v10, v9

    mul-double/2addr v10, v2

    int-to-double v12, v4

    add-double/2addr v10, v12

    double-to-float v10, v10

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    mul-double v13, v2, v11

    int-to-double v11, v5

    add-double/2addr v13, v11

    iget v11, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    float-to-double v11, v11

    add-double/2addr v13, v11

    double-to-float v11, v13

    aget-object v8, v6, v8

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v8, v9

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_4

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-int/lit8 v8, v6, 0x1

    int-to-double v14, v8

    mul-double/2addr v12, v14

    mul-double/2addr v12, v2

    int-to-double v9, v4

    add-double/2addr v12, v9

    double-to-float v9, v12

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    mul-double/2addr v10, v2

    int-to-double v12, v5

    add-double/2addr v10, v12

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->getPixelsFromDp(F)F

    move-result v12

    float-to-double v12, v12

    add-double/2addr v10, v12

    double-to-float v10, v10

    rsub-int/lit8 v6, v6, 0x3

    aget-object v6, v7, v6

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v6, v8

    const/4 v9, 0x4

    goto :goto_3

    :cond_4
    return-void
.end method
