.class public Lcom/samsung/android/settings/widget/SecDividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SecDividerItemDecorator.java"


# instance fields
.field private final mAttr:Landroid/content/res/TypedArray;

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private mStartsPadding:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    .line 22
    iput p3, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mStartsPadding:I

    return-void

    :array_0
    .array-data 4
        0x10103bd
        0x10103be
    .end array-data
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    .line 59
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 60
    instance-of v0, p0, Landroidx/preference/PreferenceViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 61
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

    .line 66
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 67
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    if-ge p0, p1, :cond_3

    add-int/2addr p0, v2

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 69
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 70
    instance-of p1, p0, Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 71
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
    .locals 6

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 32
    iget-object p3, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mStartsPadding:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    iget v1, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mStartsPadding:I

    add-int/2addr p3, v1

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    sub-int/2addr v2, v0

    :goto_1
    if-gt v3, v2, :cond_2

    .line 45
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    .line 51
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 52
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
