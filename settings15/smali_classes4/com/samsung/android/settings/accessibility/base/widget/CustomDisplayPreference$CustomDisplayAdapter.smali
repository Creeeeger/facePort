.class public final Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAdapter;
.super Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAdapter;->onBindViewHolder(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->onBindViewHolder(Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->defaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    invoke-interface {p0}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;->getDefaultKey()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    iget-boolean p0, p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->defaultItem:Z

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$ViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;

    invoke-direct {v0, p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAccessibilityDelegate;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method
