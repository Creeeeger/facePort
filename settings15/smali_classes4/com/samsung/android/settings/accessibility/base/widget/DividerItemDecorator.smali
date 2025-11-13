.class public final Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDivider:Landroid/graphics/drawable/InsetDrawable;

.field public final mLeftInset:I

.field public final mRightInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0806c4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/InsetDrawable;

    iput p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mLeftInset:I

    iput p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mRightInset:I

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/InsetDrawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mLeftInset:I

    iget v5, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mRightInset:I

    if-eqz v0, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_1
    if-eqz v0, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v5

    :goto_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v9, v3, Landroid/graphics/Insets;->top:I

    iget v11, v3, Landroid/graphics/Insets;->bottom:I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v1

    move v3, v2

    :goto_3
    if-gt v3, p0, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    instance-of v6, v5, Landroidx/preference/PreferenceViewHolder;

    if-eqz v6, :cond_5

    check-cast v5, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v5, v5, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    if-eqz v5, :cond_5

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    instance-of v6, v5, Landroidx/preference/PreferenceViewHolder;

    if-eqz v6, :cond_5

    check-cast v5, Landroidx/preference/PreferenceViewHolder;

    iget-boolean v5, v5, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6, v5}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
