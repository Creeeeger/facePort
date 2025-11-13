.class public abstract Lcom/android/systemui/globalactions/GlobalActionsLayout;
.super Lcom/android/systemui/MultiListLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackgroundsSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addToListView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;
    .locals 2

    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, v1, p0}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTint(I)V

    return-object v0
.end method

.method public getCurrentLayoutDirection()I
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public getCurrentRotation()I
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeparatedView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0a0afd

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayout;->mBackgroundsSet:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06015f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060165

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayout;->mBackgroundsSet:Z

    :cond_2
    return-void
.end method

.method public onUpdateList()V
    .locals 7

    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->onUpdateList()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->shouldBeSeparated(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v6, v3, v5, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v6, v3, v5, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->shouldReverseListItems()Z

    move-result v4

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract shouldReverseListItems()Z
.end method
