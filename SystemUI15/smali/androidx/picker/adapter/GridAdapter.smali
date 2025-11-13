.class public final Landroidx/picker/adapter/GridAdapter;
.super Landroidx/picker/adapter/AbsAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;-><init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    instance-of p1, p0, Landroidx/picker/model/viewdata/CustomViewData;

    if-eqz p1, :cond_0

    const/16 p0, 0x105

    return p0

    :cond_0
    instance-of p1, p0, Landroidx/picker/model/viewdata/GroupTitleViewData;

    if-eqz p1, :cond_1

    const/16 p0, 0x104

    return p0

    :cond_1
    instance-of p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 p0, 0x102

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    const/16 p0, 0x103

    return p0

    :cond_3
    const/16 p0, 0x101

    return p0
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/16 v0, 0x104

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;

    const v0, 0x7f0d02b8

    invoke-static {p2, v0, p2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {p1, p2, p0}, Landroidx/picker/adapter/viewholder/GroupTitleViewHolder;-><init>(Landroid/view/View;Landroidx/picker/model/GroupTitleStyleData;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x102

    const v0, 0x7f0d02ac

    if-ne p1, p0, :cond_1

    new-instance p1, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;

    invoke-static {p2, v0, p2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/picker/adapter/viewholder/GridCheckBoxViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x103

    if-ne p1, p0, :cond_2

    new-instance p1, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;

    const p0, 0x7f0d02ad

    invoke-static {p2, p0, p2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/picker/adapter/viewholder/GridRemoveViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/picker/adapter/viewholder/GridViewHolder;

    invoke-static {p2, v0, p2, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/picker/adapter/viewholder/GridViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method
