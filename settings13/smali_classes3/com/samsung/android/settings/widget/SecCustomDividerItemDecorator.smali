.class public Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SecCustomDividerItemDecorator.java"


# instance fields
.field private final mAttr:Landroid/content/res/TypedArray;

.field private final mCustomFrameViewId:I

.field private final mCustomViewId:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private mStartsPadding:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 24
    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    .line 27
    iput p3, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mStartsPadding:I

    .line 28
    iput p4, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mCustomFrameViewId:I

    .line 29
    iput p5, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mCustomViewId:I

    return-void

    :array_0
    .array-data 4
        0x10103bd
        0x10103be
    .end array-data
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    .line 75
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 76
    instance-of v0, p0, Landroidx/preference/PreferenceViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 77
    invoke-virtual {p0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    .line 82
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    if-ge p0, p1, :cond_3

    add-int/2addr p0, v2

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 85
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 86
    instance-of p1, p0, Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 87
    invoke-virtual {p0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    move v2, v1

    :cond_3
    return v2
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 36
    iget-object p3, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 38
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mStartsPadding:I

    add-int/2addr v2, v3

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mStartsPadding:I

    sub-int/2addr v3, v4

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v4, :cond_4

    .line 45
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 46
    invoke-direct {p0, v6, p2}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 48
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    .line 49
    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v8

    const/4 v9, 0x0

    .line 53
    :try_start_0
    iget v10, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mCustomFrameViewId:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 55
    iget v10, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mCustomViewId:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v6

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v10, "SecCustomDividerItemDecorator"

    const-string v11, "get ImageView fail: "

    .line 58
    invoke-static {v10, v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    if-nez v9, :cond_1

    .line 61
    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v8, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 64
    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v8, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 66
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v8, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
