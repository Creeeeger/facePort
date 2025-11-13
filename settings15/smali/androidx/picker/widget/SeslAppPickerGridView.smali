.class public Landroidx/picker/widget/SeslAppPickerGridView;
.super Landroidx/picker/widget/SeslAppPickerView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/picker/widget/SeslAppPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mViewType:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslAppPickerView;->initialize()V

    return-void
.end method


# virtual methods
.method public final getAppPickerAdapter()Landroidx/picker/adapter/AbsAdapter;
    .locals 2

    new-instance v0, Landroidx/picker/adapter/GridAdapter;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-direct {v0, v1, p0}, Landroidx/picker/adapter/AbsAdapter;-><init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object v0
.end method

.method public final getLayoutManager$1$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance v0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/picker/widget/SeslAppPickerGridView$1;

    invoke-direct {v1, p0, v0}, Landroidx/picker/widget/SeslAppPickerGridView$1;-><init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslAppPickerGridView"

    return-object p0
.end method

.method public final setItemDecoration(ILandroidx/picker/adapter/HeaderFooterAdapter;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/picker/decorator/RecyclerViewCornerDecoration;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mSeslRoundedCorner:I

    invoke-direct {p1, v0, v1}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    new-instance v0, Landroidx/picker/decorator/GridSpacingItemDecoration;

    invoke-direct {v0, p1}, Landroidx/picker/decorator/GridSpacingItemDecoration;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerView;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {v0}, Landroidx/picker/model/GroupTitleStyleData;->getBackgroundColorId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    new-instance v0, Landroidx/picker/decorator/RoundedCornerDecoration;

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Landroidx/picker/decorator/RoundedCornerDecoration;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
