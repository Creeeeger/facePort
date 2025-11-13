.class Landroidx/apppickerview/widget/AppPickerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 0

    .line 312
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 315
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->getDataSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    .line 316
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->getDataSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isCustomViewItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->getDataSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getSpanCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$100(Landroidx/apppickerview/widget/AppPickerView;)I

    move-result p0

    return p0

    .line 320
    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getDataSet()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getSpanCount()I

    move-result p0

    return p0

    .line 322
    :cond_1
    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->access$000(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/apppickerview/widget/AbsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AbsAdapter;->getDataSet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isSeparator()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$1;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p0}, Landroidx/apppickerview/widget/AppPickerView;->access$100(Landroidx/apppickerview/widget/AppPickerView;)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method
