.class public final Landroidx/picker/widget/SeslAppPickerGridView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerGridView;

.field public final synthetic val$manager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v1, :cond_5

    if-ltz p1, :cond_5

    invoke-virtual {v1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {v0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v1

    if-gt v1, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v0, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    iget-object v0, v0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroidx/picker/adapter/HeaderFooterAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->footerViewInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    :goto_0
    instance-of v0, p1, Landroidx/picker/model/SpanData;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/picker/model/SpanData;

    invoke-interface {p1}, Landroidx/picker/model/SpanData;->getSpanCount()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    :cond_3
    return p1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
