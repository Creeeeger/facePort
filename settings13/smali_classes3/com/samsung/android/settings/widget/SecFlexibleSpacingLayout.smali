.class public Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;
.super Landroid/widget/LinearLayout;
.source "SecFlexibleSpacingLayout.java"


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->mType:I

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private measureContentFrame(IILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->getCardTypeContentFrameWidthRatio(Landroid/content/Context;II)F

    move-result p0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;II)F

    move-result p0

    .line 64
    :goto_0
    new-instance p1, Ljava/math/BigDecimal;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%.3f"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance p2, Ljava/math/BigDecimal;

    const-string v0, "1.0"

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    .line 75
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    mul-float/2addr p0, v1

    .line 82
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 83
    invoke-virtual {p4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v2, v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->measureContentFrame(IILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "SecFlexibleSpacingLayout"

    const-string v1, "should be contained start pane, end pane and content frame."

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->mType:I

    return-void
.end method
