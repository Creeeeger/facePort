.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final blacklist IS_DIVIDER:Ljava/lang/String; = "isDivider"

.field private static final blacklist PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private blacklist mAllowStacking:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mLastWidthSize:I

.field private blacklist mMinimumHeight:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200ef

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist getNextVisibleChildIndex(I)I
    .locals 3

    move v0, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Button;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist isStacked()Z
    .locals 2

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

    move v0, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "isDivider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist setDividerVisible(I)V
    .locals 4

    move v0, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "isDivider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist setStacked(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x10205e1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist getMinimumHeight()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->setDividerVisible(I)V

    :cond_0
    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_2

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v4, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    iget-boolean v6, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setDividerInvisible(I)V

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

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

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/internal/widget/ButtonBarLayout;->mIsDeviceDefault:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v7

    if-ltz v7, :cond_7

    int-to-float v8, v4

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v4, v8

    :cond_7
    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result v5

    if-eq v5, v4, :cond_a

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_a
    return-void
.end method

.method public blacklist setAllowStacking(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    :cond_1
    return-void
.end method
