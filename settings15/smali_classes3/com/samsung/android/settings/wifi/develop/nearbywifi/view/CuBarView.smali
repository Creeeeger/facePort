.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isYaxis:Z

.field public final mChannel:Landroid/widget/TextView;

.field public final mCuBar:Landroid/widget/TextView;

.field public final mCuValue:Landroid/widget/TextView;

.field public final mFreq:Landroid/widget/TextView;

.field public final mPaintLines:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mPaintLines:[Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0a6b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a0455

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuValue:Landroid/widget/TextView;

    const v1, 0x7f0a0454

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    const v1, 0x7f0a02f7

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    const v1, 0x7f0a02f5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, p1

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v1, v0, p1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const v5, -0x777778

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v1, v0, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mChannel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mFreq:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v8, 0x1

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-static {v8, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v8, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->isYaxis:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/16 v2, 0xb

    if-ge v11, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mPaintLines:[Landroid/graphics/Paint;

    rem-int/lit8 v3, v11, 0x5

    if-nez v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v10

    :goto_1
    aget-object v7, v2, v3

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v0

    move v5, v1

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float/2addr v0, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/CuBarView;->mCuBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method
