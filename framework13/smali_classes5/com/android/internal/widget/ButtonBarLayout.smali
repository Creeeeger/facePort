.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final blacklist PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private blacklist mAllowStacking:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mLastWidthSize:I

.field private blacklist mMinimumHeight:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    .line 58
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 59
    .local v1, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 60
    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 61
    iput-boolean v3, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    .line 65
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 67
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private blacklist getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 167
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Button;

    if-nez v2, :cond_0

    .line 171
    goto :goto_1

    .line 174
    :cond_0
    return v0

    .line 167
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist isStacked()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist setDividerInvisible(I)V
    .locals 4
    .param p1, "index"    # I

    .line 187
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Button;

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private blacklist setDividerVisible(I)V
    .locals 4
    .param p1, "index"    # I

    .line 195
    move v0, p1

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Button;

    if-nez v2, :cond_0

    .line 197
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Button;

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private blacklist setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 207
    if-eqz p1, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    .line 211
    return-void

    .line 214
    :cond_1
    const v0, 0x10205cf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 216
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 222
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x2

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 223
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 222
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 225
    .end local v2    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist getMinimumHeight()I
    .locals 2

    .line 182
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 84
    .local v0, "widthSize":I
    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 85
    iget v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 90
    :cond_0
    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 93
    :cond_1
    const/4 v1, 0x0

    .line 99
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2

    .line 100
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    .local v3, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_2
    move v3, p1

    .line 108
    .restart local v3    # "initialWidthMeasureSpec":I
    :goto_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    iget-boolean v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    .line 112
    .local v4, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    .line 113
    .local v5, "measuredWidthState":I
    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_4

    .line 114
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 116
    iget-boolean v6, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v6, :cond_3

    .line 117
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setDividerInvisible(I)V

    .line 118
    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 123
    :cond_3
    const/4 v1, 0x1

    .line 127
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredWidthState":I
    :cond_4
    if-eqz v1, :cond_5

    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 133
    :cond_5
    const/4 v4, 0x0

    .line 134
    .local v4, "minHeight":I
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    .line 135
    .local v2, "firstVisible":I
    if-ltz v2, :cond_a

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "firstButton":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    .local v6, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 140
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 142
    iget-boolean v7, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v7, :cond_6

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 145
    :cond_6
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    .line 146
    .local v7, "secondVisible":I
    if-ltz v7, :cond_7

    .line 147
    int-to-float v8, v4

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x41800000    # 16.0f

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 150
    .end local v7    # "secondVisible":I
    :cond_7
    goto :goto_1

    .line 153
    :cond_8
    iget-boolean v7, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v7, :cond_9

    .line 154
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setDividerVisible(I)V

    .line 157
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 161
    .end local v5    # "firstButton":Landroid/view/View;
    .end local v6    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v5

    if-eq v5, v4, :cond_b

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 164
    :cond_b
    return-void
.end method

.method public blacklist setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .line 71
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 72
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 73
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    .line 78
    :cond_1
    return-void
.end method
