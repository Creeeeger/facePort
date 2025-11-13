.class public Landroidx/picker/widget/SeslAppPickerGridView;
.super Landroidx/picker/widget/SeslAppPickerView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslAppPickerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c96

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    new-instance p1, Landroidx/picker/adapter/HeaderFooterAdapter;

    new-instance p2, Landroidx/picker/adapter/GridAdapter;

    iget-object p3, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {p2, p3, v0}, Landroidx/picker/adapter/GridAdapter;-><init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-direct {p1, p2}, Landroidx/picker/adapter/HeaderFooterAdapter;-><init>(Landroidx/picker/adapter/AbsAdapter;)V

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt()V

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    iget-object p3, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    invoke-direct {p2, p3, v0}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c96

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    new-instance p3, Landroidx/picker/decorator/GridSpacingItemDecoration;

    invoke-direct {p3, p2}, Landroidx/picker/decorator/GridSpacingItemDecoration;-><init>(I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {p3}, Landroidx/picker/model/GroupTitleStyleData;->getBackgroundColorId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    new-instance p3, Landroidx/picker/decorator/RoundedCornerDecoration;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p1, p2}, Landroidx/picker/decorator/RoundedCornerDecoration;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;

    iget-object p2, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/picker/widget/SeslAppPickerGridView$1;

    invoke-direct {p2, p0, p1}, Landroidx/picker/widget/SeslAppPickerGridView$1;-><init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    iput-object p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object p1, p1, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iput-object p0, p1, Landroidx/picker/adapter/AbsAdapter;->mOnBindListener:Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslAppPickerGridView"

    return-object p0
.end method
