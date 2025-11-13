.class public final Landroidx/picker/widget/SeslAppPickerGridView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerGridView;

.field public final synthetic val$manager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerGridView;Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->this$0:Landroidx/picker/widget/SeslAppPickerGridView;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v0, v0, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {v0, p1}, Landroidx/picker/adapter/HeaderFooterAdapter;->getItem(I)Landroidx/picker/model/viewdata/ViewData;

    move-result-object p1

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerGridView$1;->val$manager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    :cond_0
    return p1

    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
