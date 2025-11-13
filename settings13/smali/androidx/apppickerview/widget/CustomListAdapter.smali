.class public Landroidx/apppickerview/widget/CustomListAdapter;
.super Landroidx/apppickerview/widget/ListAdapter;
.source "CustomListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Landroidx/apppickerview/widget/ListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFilter()Landroid/widget/Filter;
    .locals 0

    .line 8
    invoke-super {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemCount()I
    .locals 0

    .line 8
    invoke-super {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/ListAdapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getPositionForSection(I)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getPositionForSection(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSectionForPosition(I)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getSectionForPosition(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-super {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, v1, v1}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/AbsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method

.method public bridge synthetic setOnSearchFilterListener(Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->setOnSearchFilterListener(Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    return-void
.end method

.method public bridge synthetic setOrder(I)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->setOrder(I)V

    return-void
.end method
