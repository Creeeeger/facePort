.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;
.super Landroid/view/View;
.source "RadarView.java"


# static fields
.field private static DARK_GRAY_LEVEL:I = 0xee

.field private static LIGHT_GRAY_LEVEL:I = 0x22


# instance fields
.field private mCircle:Landroid/graphics/drawable/Drawable;

.field private mRadarUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizeInPx:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->init()V

    return-void
.end method

.method private drawLegend(Landroid/graphics/Canvas;DII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "-51"

    const-string v3, "-63"

    const-string v4, "-75"

    const-string v5, "-87"

    .line 123
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Best"

    const-string v4, "Good"

    const-string v5, "Bad"

    const-string v6, "Worst"

    .line 124
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p4

    int-to-float v4, v4

    .line 126
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    move/from16 v6, p5

    int-to-float v6, v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v5, v7

    sub-float/2addr v6, v5

    float-to-int v5, v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    const-wide v9, 0x4004f1a6c638d03fL    # 2.6179938779914944

    .line 130
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    add-int/lit8 v13, v8, 0x1

    int-to-double v14, v13

    mul-double/2addr v11, v14

    mul-double v11, v11, p2

    int-to-double v6, v4

    add-double/2addr v11, v6

    double-to-float v6, v11

    .line 131
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v14

    mul-double v9, v9, p2

    int-to-double v11, v5

    add-double/2addr v9, v11

    double-to-float v7, v9

    .line 133
    aget-object v8, v2, v8

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v8, v13

    const/high16 v7, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    int-to-float v2, v4

    .line 136
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v7, v4, v6

    add-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v5, v5

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    float-to-int v4, v5

    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_1

    .line 140
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-int/lit8 v8, v7, 0x1

    int-to-double v12, v8

    mul-double/2addr v10, v12

    mul-double v10, v10, p2

    int-to-double v14, v2

    add-double/2addr v10, v14

    double-to-float v10, v10

    .line 141
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    mul-double v14, v14, p2

    int-to-double v11, v4

    add-double/2addr v14, v11

    double-to-float v11, v14

    .line 143
    aget-object v7, v3, v7

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v7, v8

    goto :goto_1

    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_wifi_circle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mTextSizeInPx:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 81
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 89
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v5, v2

    int-to-double v2, v3

    const-wide v7, 0x3ffbb645a1cac083L    # 1.732

    mul-double v9, v2, v7

    cmpl-double v9, v5, v9

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    if-lez v9, :cond_1

    const/4 v5, 0x0

    div-double/2addr v2, v10

    goto :goto_0

    :cond_1
    div-double/2addr v5, v7

    sub-double/2addr v2, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v7

    double-to-int v2, v2

    div-double/2addr v5, v10

    move-wide/from16 v19, v5

    move v5, v2

    move-wide/from16 v2, v19

    .line 105
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    .line 106
    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->x()D

    move-result-wide v8

    mul-double/2addr v8, v2

    int-to-double v12, v4

    add-double/2addr v8, v12

    double-to-float v8, v8

    .line 107
    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->y()D

    move-result-wide v12

    mul-double/2addr v12, v2

    int-to-double v14, v5

    add-double/2addr v12, v14

    double-to-float v9, v12

    .line 109
    sget v12, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->LIGHT_GRAY_LEVEL:I

    int-to-double v13, v12

    sget v15, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->DARK_GRAY_LEVEL:I

    sub-int/2addr v15, v12

    int-to-double v10, v15

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->getRadius()D

    move-result-wide v17

    mul-double v10, v10, v17

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v15

    add-double/2addr v13, v10

    double-to-int v7, v13

    .line 110
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 114
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v7, v8

    neg-float v8, v9

    .line 116
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move-wide v10, v15

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->drawLegend(Landroid/graphics/Canvas;DII)V

    return-void
.end method

.method public setRadarUnit(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/RadarView;->mRadarUnits:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
