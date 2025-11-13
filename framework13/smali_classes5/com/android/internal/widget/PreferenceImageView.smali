.class public Lcom/android/internal/widget/PreferenceImageView;
.super Landroid/widget/ImageView;
.source "PreferenceImageView.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/PreferenceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 51
    .local v0, "widthMode":I
    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 53
    .local v3, "widthSize":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PreferenceImageView;->getMaxWidth()I

    move-result v4

    .line 54
    .local v4, "maxWidth":I
    if-eq v4, v1, :cond_2

    if-lt v4, v3, :cond_1

    if-nez v0, :cond_2

    .line 56
    :cond_1
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 60
    .end local v3    # "widthSize":I
    .end local v4    # "maxWidth":I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 61
    .local v3, "heightMode":I
    if-eq v3, v2, :cond_3

    if-nez v3, :cond_5

    .line 62
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 63
    .local v4, "heightSize":I
    invoke-virtual {p0}, Lcom/android/internal/widget/PreferenceImageView;->getMaxHeight()I

    move-result v5

    .line 64
    .local v5, "maxHeight":I
    if-eq v5, v1, :cond_5

    if-lt v5, v4, :cond_4

    if-nez v3, :cond_5

    .line 66
    :cond_4
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 70
    .end local v4    # "heightSize":I
    .end local v5    # "maxHeight":I
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 71
    return-void
.end method
