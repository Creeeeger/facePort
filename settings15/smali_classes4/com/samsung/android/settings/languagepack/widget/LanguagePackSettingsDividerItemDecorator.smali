.class public final Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;
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

    iput-object p2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mStartsPadding:I

    return-void
.end method

.method public static getDividerType(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 5

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a105d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-ge p0, v1, :cond_1

    add-int/2addr p0, v4

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0c2b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v3
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    iget p3, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mStartsPadding:I

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x10103bd

    const v2, 0x10103be

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sub-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    const/4 v6, 0x0

    :goto_0
    if-gt v6, p3, :cond_4

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v8

    iget-object v8, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v9

    invoke-static {v7, p2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->getDividerType(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v7

    if-eq v7, v1, :cond_2

    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v9, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v7

    if-ne v7, v1, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v9, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v9, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackSettingsDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    return-void

    :goto_5
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    throw p0
.end method
