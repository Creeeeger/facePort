.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;
    }
.end annotation


# static fields
.field public static final DIVIDER_COLOR:I


# instance fields
.field public mAccessibilityNodeProvider:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

.field public final mAxisLabelsBounds:Ljava/util/List;

.field public mDefaultTextColor:I

.field public final mDividerHeight:I

.field public final mDividerPaint:Landroid/graphics/Paint;

.field public final mDividerWidth:I

.field public mHoveredIndex:I

.field public final mIndent:Landroid/graphics/Rect;

.field public final mLabelDrawnIndexes:Ljava/util/Set;

.field public final mLayoutDirection:I

.field public mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

.field public final mPercentageBounds:[Landroid/graphics/Rect;

.field public final mPercentages:[Ljava/lang/String;

.field public final mTextPadding:I

.field public mTextPaint:Landroid/graphics/Paint;

.field mTouchUpEventX:F

.field public mTransomIcon:Landroid/graphics/drawable/Drawable;

.field public mTransomIconSize:I

.field public mTransomLineDefaultColor:I

.field public mTransomLinePaint:Landroid/graphics/Paint;

.field public mTransomLineSelectedColor:I

.field public mTransomPadding:F

.field public mTransomSelectedSlotPaint:Landroid/graphics/Paint;

.field public mTransomTop:I

.field public final mTransomViewHeight:I

.field public final mTrapezoidColor:I

.field public final mTrapezoidHOffset:F

.field public final mTrapezoidHoverColor:I

.field public final mTrapezoidPaint:Landroid/graphics/Paint;

.field mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

.field public final mTrapezoidSolidColor:I

.field public final mTrapezoidVOffset:F

.field public mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#CDCCC5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLayoutDirection:I

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLayoutDirection:I

    const/4 p2, -0x2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const p2, 0x1010435

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    const p2, 0x11200c5

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070245

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    const p2, 0x7f070244

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mDividerWidth:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryChartView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "mDividerHeight:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f07024e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    const p2, 0x7f07024d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    const v2, 0x7f07024f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const p2, 0x7f070247

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    const p2, 0x7f070249

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomViewHeight:I

    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 5

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-static {v3, v4, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v8, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v1, v2

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v2, v9

    add-float v10, v2, v1

    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    sub-float/2addr v0, v10

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v11, 0x40800000    # 4.0f

    div-float v12, v0, v11

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    const/4 v0, 0x5

    if-ge v14, v0, :cond_3

    int-to-float v0, v14

    mul-float/2addr v0, v12

    add-float v15, v0, v10

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v15

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    rem-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_2

    add-int/lit8 v0, v14, 0x1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDefaultTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    sub-int/2addr v2, v3

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    add-int/2addr v2, v3

    goto :goto_2

    :goto_3
    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v15

    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v2, v1

    const/4 v8, 0x1

    add-int/lit8 v10, v2, 0x1

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    mul-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    array-length v1, v1

    int-to-float v1, v1

    div-float v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v14, v0

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v0, v0

    sub-float v15, v14, v0

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float v16, v1, v0

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v8, :cond_5

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    mul-float v3, v2, v9

    add-float/2addr v3, v0

    add-float v4, v2, v12

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_5
    move/from16 v18, v5

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v3, v12, v9

    add-float/2addr v3, v0

    int-to-float v0, v2

    add-float v4, v0, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_4

    :goto_5
    array-length v0, v2

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    aget-object v0, v2, v13

    move/from16 v5, v18

    invoke-virtual {v6, v7, v13, v0, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    aget-object v0, v2, v4

    invoke-virtual {v6, v7, v4, v0, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    :cond_6
    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    move/from16 v17, v0

    move v5, v13

    :goto_6
    if-ge v5, v10, :cond_a

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    if-ne v0, v1, :cond_7

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v11

    add-float/2addr v0, v14

    move v4, v0

    goto :goto_7

    :cond_7
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v4, v14

    :goto_7
    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v15

    move-object/from16 v18, v3

    move/from16 v3, v17

    move v11, v5

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v0, v0

    add-float v0, v17, v0

    add-float/2addr v0, v12

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v1, v1

    if-ge v11, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v1, v1

    sub-int/2addr v1, v11

    add-int/lit8 v5, v1, -0x1

    goto :goto_8

    :cond_8
    move v5, v11

    :goto_8
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v1, v1, v5

    add-float v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v1, v1, v5

    sub-float v2, v0, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    :cond_9
    add-int/lit8 v5, v11, 0x1

    move/from16 v17, v0

    const/high16 v11, 0x40800000    # 4.0f

    goto :goto_6

    :cond_a
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_b

    goto/16 :goto_e

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float v2, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move v3, v13

    :goto_9
    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v4, v4

    if-ge v3, v4, :cond_12

    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v4, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_d

    :cond_c
    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v5, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    if-eq v5, v3, :cond_e

    const/4 v10, -0x1

    if-ne v5, v10, :cond_d

    goto :goto_a

    :cond_d
    iget v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    goto :goto_b

    :cond_e
    :goto_a
    iget v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    :goto_b
    iget v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-ne v10, v3, :cond_f

    invoke-static {v4, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v8

    goto :goto_c

    :cond_f
    move v4, v13

    :goto_c
    iget-object v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_10

    iget v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    :cond_10
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    add-int/lit8 v10, v3, 0x1

    iget-object v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v10

    if-eqz v10, :cond_11

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    :cond_11
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v10, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v10, v10, v3

    iget v10, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    :cond_12
    :goto_e
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_16

    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomSelectedSlotPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    goto/16 :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07024b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v2, v9

    iput v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomPadding:F

    const v3, 0x7f07024a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomTop:I

    iget-object v3, v6, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v3

    iput v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLineDefaultColor:I

    const v3, 0x7f0600da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLineSelectedColor:I

    iget-object v4, v6, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v3

    const v4, 0x7f070248

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIconSize:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomSelectedSlotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomSelectedSlotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomSelectedSlotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080372

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIcon:Landroid/graphics/drawable/Drawable;

    :goto_f
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLineDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    add-float/2addr v2, v1

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomPadding:F

    add-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v1, v4

    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float v8, v1, v4

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    add-float/2addr v3, v2

    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomTop:I

    int-to-float v4, v4

    add-int/2addr v1, v0

    int-to-float v0, v1

    sub-float v5, v0, v2

    iget-object v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    move v3, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIconSize:I

    sub-int/2addr v0, v1

    goto :goto_10

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    add-int/2addr v0, v1

    :goto_10
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIcon:Landroid/graphics/drawable/Drawable;

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomTop:I

    iget v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIconSize:I

    div-int/lit8 v4, v3, 0x2

    sub-int v5, v2, v4

    add-int/2addr v3, v0

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_11
    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    iget v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLineSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v0, v1, v0

    iget v9, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v10, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomPadding:F

    add-float v1, v9, v0

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomTop:I

    int-to-float v4, v2

    sub-float v3, v10, v0

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomTop:I

    int-to-float v2, v0

    iget-object v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomSelectedSlotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v9

    move v3, v10

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_16
    return-void
.end method

.method public final drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V
    .locals 9

    sub-int v0, p4, p3

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v4, v0

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v1, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v0, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLabelDrawnIndexes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, v1

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v6, v1

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    return-object p0
.end method

.method public final getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;
    .locals 7

    new-array v0, p1, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p5, :cond_1

    if-nez v1, :cond_0

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    :cond_0
    add-int/lit8 v5, p1, -0x1

    if-ne v1, v5, :cond_1

    mul-float v5, v2, v4

    sub-float/2addr v3, v5

    :cond_1
    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, p4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v6, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getTrapezoidIndex(F)I
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    iget v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final hasOverlap([Landroid/graphics/Rect;II)Z
    .locals 1

    aget-object p2, p1, p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float p0, p0

    const v0, 0x40133333    # 2.3f

    mul-float/2addr p0, v0

    add-float/2addr p0, p2

    aget-object p1, p1, p3

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRTL$1()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string p0, "BatteryChartView"

    const-string p1, "invalid motion event for onClick() callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    return-void
.end method

.method public final onHoverChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    :cond_1
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result p1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    :cond_4
    return v2
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move p1, p2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTransomViewHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isRTL$1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz p1, :cond_3

    move p1, p2

    move v0, p1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setIndent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTrapezoidClicked(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    if-ne p2, p0, :cond_1

    const/4 p2, -0x1

    :cond_1
    invoke-interface {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;->onSelect(I)V

    :cond_2
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public final sendAccessibilityEvent(II)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDefaultTextColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    return-void
.end method

.method public setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setViewModel(): size: %d, selectedIndex: %d, getHighlightSlotIndex: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_4

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
