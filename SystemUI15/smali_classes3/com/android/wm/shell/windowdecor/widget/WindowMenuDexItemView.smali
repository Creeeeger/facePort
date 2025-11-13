.class public Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f88

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070f89

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p2, v0, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p2, 0x10

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p0, v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTooltipNull(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final setTextView(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const p1, 0x7f060647

    goto :goto_1

    :cond_1
    const p1, 0x7f060648

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f070f86

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setVerticalPadding(Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f8b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDexItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
