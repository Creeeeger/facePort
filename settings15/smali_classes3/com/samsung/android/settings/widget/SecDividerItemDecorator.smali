.class public final Lcom/samsung/android/settings/widget/SecDividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDivider:Landroid/graphics/drawable/Drawable;

.field public final mStartsPadding:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mStartsPadding:I

    return-void
.end method

.method public static shouldDrawDividerBelow$4(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v0, v0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_1

    add-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    instance-of p1, p0, Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    iget-boolean p0, p0, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    if-eqz p0, :cond_0

    move v2, v1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    iget-object p3, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_4

    const v0, 0x10103bd

    const v1, 0x10103be

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mStartsPadding:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    :try_start_1
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    sub-int v3, v1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->shouldDrawDividerBelow$4(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_4

    :try_start_2
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_4

    :try_start_4
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :goto_3
    if-eqz p3, :cond_3

    :try_start_5
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return-void
.end method
