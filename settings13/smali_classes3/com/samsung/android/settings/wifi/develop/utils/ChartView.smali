.class public Lcom/samsung/android/settings/wifi/develop/utils/ChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;
    }
.end annotation


# static fields
.field private static final DIVIDER_COLOR:I


# instance fields
.field private mDividerHeight:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private final mIndent:Landroid/graphics/Rect;

.field private mLabelY:[Ljava/lang/String;

.field private mLevels:[I

.field private final mPercentageBounds:[Landroid/graphics/Rect;

.field private mTextPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimestamps:[Ljava/lang/String;

.field private final mTimestampsBounds:[Landroid/graphics/Rect;

.field private mTrapezoidColor:I

.field private mTrapezoidCount:I

.field mTrapezoidCurvePaint:Landroid/graphics/Paint;

.field private mTrapezoidHOffset:F

.field private mTrapezoidPaint:Landroid/graphics/Paint;

.field private mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

.field private mTrapezoidSolidColor:I

.field private mTrapezoidVOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#CDCCC5"

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLabelY:[Ljava/lang/String;

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array v1, p1, [Landroid/graphics/Rect;

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x4

    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x5

    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x6

    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x7

    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x8

    aput-object p1, v1, v2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x9

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLabelY:[Ljava/lang/String;

    .line 66
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/graphics/Rect;

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, p2

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    aput-object p2, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x5

    aput-object p2, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x6

    aput-object p2, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x7

    aput-object p2, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0x8

    aput-object p2, v0, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0x9

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->initializeColors(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setTrapezoidCount(I)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setClickable(Z)V

    const-wide/16 p1, 0x0

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setLatestTimestamp(J)V

    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;)V
    .locals 11

    .line 243
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 244
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    .line 246
    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v0, v0

    .line 247
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, v2

    move v8, v0

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 248
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 250
    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidVOffset:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 252
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 253
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    .line 254
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 256
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 257
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    .line 258
    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    return-void
.end method

.method private drawPercentage(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLabelY:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 265
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p2, v2, p2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 263
    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTrapezoids(Landroid/graphics/Canvas;)V
    .locals 9

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 309
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 312
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    .line 314
    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCount:I

    if-ge v3, v6, :cond_4

    .line 315
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->isValidToDraw(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 317
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v5, v4

    goto/16 :goto_2

    .line 322
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    aget v6, v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 325
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 326
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 327
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 328
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 337
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_3

    if-nez v5, :cond_2

    .line 339
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 340
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 342
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 347
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_5

    if-eqz v5, :cond_5

    .line 348
    invoke-virtual {p1, v5, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 273
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCount:I

    add-int/lit8 v3, v2, 0x1

    .line 274
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    mul-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v1, v1

    sub-float/2addr v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 277
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    int-to-float v4, v4

    sub-float v10, v2, v4

    .line 278
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidHOffset:F

    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v6, v5

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v6, v11

    add-float v12, v4, v6

    int-to-float v4, v5

    mul-float/2addr v4, v11

    const/4 v13, 0x0

    move v14, v4

    move v15, v13

    :goto_0
    if-ge v15, v3, :cond_1

    .line 282
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v14

    move v6, v10

    move v7, v14

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v14

    add-float/2addr v4, v1

    .line 284
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    array-length v6, v5

    if-ge v15, v6, :cond_0

    .line 285
    aget-object v5, v5, v15

    add-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mLeft:F

    .line 286
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    aget-object v5, v5, v15

    sub-float v6, v4, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;->mRight:F

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move v14, v4

    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    new-array v3, v2, [F

    .line 292
    iget v0, v0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v4, v0

    mul-float/2addr v4, v11

    int-to-float v0, v0

    add-float/2addr v0, v1

    :goto_1
    if-ge v13, v2, :cond_2

    int-to-float v1, v13

    mul-float/2addr v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 296
    aput v1, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/4 v3, 0x1

    .line 362
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 363
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x0

    .line 364
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method private initializeColors(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 215
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSolidColor:I

    .line 216
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidColor:I

    .line 218
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 219
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    .line 220
    sget v0, Lcom/android/settings/R$dimen;->chartview_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChartView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDividerHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidHOffset:F

    .line 230
    sget v0, Lcom/android/settings/R$dimen;->chartview_trapezoid_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidVOffset:F

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    .line 232
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    sget v2, Lcom/android/settings/R$dimen;->chartview_trapezoid_radius:I

    .line 237
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 239
    sget v0, Lcom/android/settings/R$dimen;->chartview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPadding:I

    return-void
.end method

.method private isValidToDraw(I)Z
    .locals 2

    .line 353
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    aget v1, p0, p1

    if-eqz v1, :cond_0

    add-int/2addr p1, v0

    aget p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateClickableState()V
    .locals 2

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setClickable(Z)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mDividerWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawHorizontalDividers(Landroid/graphics/Canvas;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawVerticalDividers(Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->drawTrapezoids(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->updateClickableState()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLabelY:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v0, v0, p1

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    .line 159
    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    if-eqz p1, :cond_2

    move p1, p2

    move v0, p1

    :goto_1
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, p1

    .line 169
    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestampsBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIndent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 178
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTextPaint:Landroid/graphics/Paint;

    :goto_0
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLabelY([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 369
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLabelY:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLatestTimestamp(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 145
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTimestamps:[Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    rsub-int/lit8 v5, v2, 0x9

    int-to-long v5, v5

    const-wide/32 v7, 0x6ddd00

    mul-long/2addr v5, v7

    sub-long v5, p1, v5

    .line 146
    invoke-static {v4, v5, v6, v0}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setLevels([I)V
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLevels() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    return-void

    .line 109
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setClickable(Z)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    if-nez v0, :cond_3

    return-void

    .line 115
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mLevels:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_5

    .line 116
    aget v1, v0, p1

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->setClickable(Z)V

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public setTrapezoidCount(I)V
    .locals 4

    .line 95
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidCount:I

    .line 96
    new-array v0, p1, [Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/utils/ChartView;->mTrapezoidSlots:[Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    new-instance v2, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot;-><init>(Lcom/samsung/android/settings/wifi/develop/utils/ChartView$TrapezoidSlot-IA;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
