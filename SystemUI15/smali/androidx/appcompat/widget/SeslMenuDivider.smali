.class public Landroidx/appcompat/widget/SeslMenuDivider;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDiameter:I

.field public final mInterval:I

.field public final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslMenuDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslMenuDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x3fc00000    # 1.5f

    const/4 v0, 0x1

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mDiameter:I

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mInterval:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f06079d

    goto :goto_0

    :cond_0
    const p1, 0x7f06079c

    :goto_0
    sget-object p3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mDiameter:I

    sub-int v3, v0, v2

    iget v4, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mInterval:I

    add-int/2addr v4, v2

    div-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v6

    add-int/2addr v6, v2

    iget v2, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mDiameter:I

    sub-int/2addr v0, v2

    iget v7, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mInterval:I

    add-int/2addr v7, v2

    mul-int/2addr v7, v3

    sub-int/2addr v0, v7

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v2, 0x0

    if-lez v3, :cond_1

    div-int v7, v0, v3

    rem-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    move v7, v0

    :goto_0
    move v3, v2

    :goto_1
    if-ge v2, v4, :cond_3

    add-int v8, v6, v3

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v9, v5

    iget v10, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mDiameter:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    iget-object v11, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v8, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mDiameter:I

    iget v9, p0, Landroidx/appcompat/widget/SeslMenuDivider;->mInterval:I

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v8, v3

    if-ge v2, v0, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    move v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
