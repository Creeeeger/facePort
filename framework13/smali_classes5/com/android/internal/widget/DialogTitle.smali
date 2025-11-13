.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 55
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 57
    .local v1, "lineCount":I
    if-lez v1, :cond_4

    .line 58
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 59
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_4

    .line 60
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 61
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 63
    iget-object v4, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/R$styleable;->TextAppearance:[I

    const v7, 0x1010041

    const v8, 0x1030044

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 69
    .local v4, "a":Landroid/content/res/TypedArray;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200b9

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    move v6, v8

    .line 74
    .local v6, "mIsDeviceDefault":Z
    if-eqz v6, :cond_2

    .line 75
    iget-object v7, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10503c9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 76
    .local v7, "textSize":I
    const v8, 0x3fa66666    # 1.3f

    .line 77
    .local v8, "maxScale":F
    iget-object v9, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 78
    .local v9, "currentFontScale":F
    int-to-float v10, v7

    .line 79
    .local v10, "scaleBase":F
    const v11, 0x3fa66666    # 1.3f

    cmpl-float v12, v9, v11

    if-lez v12, :cond_1

    .line 80
    int-to-float v12, v7

    div-float/2addr v12, v9

    mul-float v10, v12, v11

    .line 82
    :cond_1
    invoke-virtual {p0, v3, v10}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 83
    .end local v8    # "maxScale":F
    .end local v9    # "currentFontScale":F
    .end local v10    # "scaleBase":F
    goto :goto_1

    .line 84
    .end local v7    # "textSize":I
    :cond_2
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 85
    .restart local v7    # "textSize":I
    if-eqz v7, :cond_3

    .line 87
    int-to-float v8, v7

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 90
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 96
    .end local v1    # "lineCount":I
    .end local v2    # "ellipsisCount":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "mIsDeviceDefault":Z
    .end local v7    # "textSize":I
    :cond_4
    return-void
.end method
