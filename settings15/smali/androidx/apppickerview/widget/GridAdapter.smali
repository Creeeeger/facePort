.class public final Landroidx/apppickerview/widget/GridAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x103

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    if-eqz p0, :cond_1

    const/16 p0, -0xa

    return p0

    :cond_1
    const/16 p0, 0x101

    return p0
.end method

.method public final onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
    .locals 3

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v1, 0x7

    const-string v2, "accessibility"

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0x103

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d005c

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    invoke-direct {p1, p0}, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_0
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0058

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 p2, 0x7

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0a030d

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p0, 0x7f0a1041

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v2, p2, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, p2

    mul-float/2addr v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v2, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_3
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object p1, p0

    :goto_2
    return-object p1
.end method
