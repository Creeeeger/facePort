.class public final Landroidx/leanback/widget/picker/Picker$1;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/Picker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->updateColumnAlpha(I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/picker/PickerColumn;

    iget p2, p2, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    :cond_0
    return-void
.end method
