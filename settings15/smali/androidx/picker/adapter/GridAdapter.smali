.class public final Landroidx/picker/adapter/GridAdapter;
.super Landroidx/picker/adapter/AbsAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    instance-of p1, p0, Landroidx/picker/model/viewdata/GroupTitleViewData;

    if-eqz p1, :cond_0

    const/16 p0, 0x104

    return p0

    :cond_0
    instance-of p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p0, 0x102

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    const/16 p0, 0x103

    return p0

    :cond_2
    const/16 p0, 0x101

    return p0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/16 v0, 0x104

    if-ne p2, v0, :cond_0

    new-instance p2, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    const v0, 0x7f0d04fc

    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {p2, p1, p0}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;-><init>(Landroid/view/View;Landroidx/picker/model/GroupTitleStyleData;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x102

    const v0, 0x7f0d04f0

    if-ne p2, p0, :cond_1

    new-instance p2, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x103

    if-ne p2, p0, :cond_2

    new-instance p2, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;

    const p0, 0x7f0d04f1

    invoke-static {p1, p0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroidx/picker/adapter/viewholder/GridViewHolder;

    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/picker/adapter/viewholder/GridViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
