.class public final Landroidx/apppickerview/widget/AppPickerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/apppickerview/widget/AppPickerView;I)V
    .locals 0

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    iget v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-boolean v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-boolean p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    if-eqz p1, :cond_2

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    :cond_2
    :goto_0
    return v1

    :pswitch_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-boolean v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mSpanCount:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView;->mAdapter:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object v0, v0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-boolean p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    if-eqz p1, :cond_5

    iget v1, p0, Landroidx/apppickerview/widget/AppPickerView;->mSpanCount:I

    :cond_5
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
