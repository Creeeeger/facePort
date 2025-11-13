.class public Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->mType:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/widget/SecFlexibleSpacingLayout;->mType:I

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    sget-object v4, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x1e0

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-lt v0, v4, :cond_1

    const/16 v4, 0x24c

    if-gt v0, v4, :cond_1

    :goto_0
    move v1, v8

    goto :goto_1

    :cond_1
    const/16 v4, 0x24d

    if-lt v0, v4, :cond_3

    const/16 v4, 0x3bf

    if-gt v0, v4, :cond_3

    const/16 v4, 0x19b

    if-lt v1, v4, :cond_2

    const v1, 0x3f5c28f6    # 0.86f

    goto :goto_1

    :cond_2
    const v1, 0x3f1eb852    # 0.62f

    goto :goto_1

    :cond_3
    const/16 v1, 0x3c0

    if-lt v0, v1, :cond_4

    const/high16 v1, 0x44520000    # 840.0f

    int-to-float v4, v0

    div-float/2addr v1, v4

    const/high16 v6, 0x42000000    # 32.0f

    goto :goto_1

    :cond_4
    const/high16 v6, 0x41200000    # 10.0f

    goto :goto_0

    :goto_1
    mul-float/2addr v6, v7

    int-to-float v0, v0

    sub-float v4, v8, v1

    mul-float/2addr v4, v0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    div-float/2addr v6, v0

    sub-float v1, v8, v6

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(II)F

    move-result v1

    :cond_6
    :goto_2
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    const-string v0, "SecFlexibleSpacingLayout"

    const-string/jumbo v1, "should be contained start pane, end pane and content frame."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
