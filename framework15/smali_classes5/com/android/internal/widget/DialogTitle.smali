.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 13

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    iget-object v4, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/R$styleable;->TextAppearance:[I

    const v6, 0x1010041

    const v7, 0x1030044

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200ef

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    move v6, v8

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050444

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x3fa66666    # 1.3f

    iget-object v9, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v10, v7

    const v11, 0x3fa66666    # 1.3f

    cmpl-float v12, v9, v11

    if-lez v12, :cond_1

    int-to-float v12, v7

    div-float/2addr v12, v9

    mul-float v10, v12, v11

    :cond_1
    invoke-virtual {p0, v3, v10}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-eqz v7, :cond_3

    int-to-float v8, v7

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_4
    return-void
.end method
