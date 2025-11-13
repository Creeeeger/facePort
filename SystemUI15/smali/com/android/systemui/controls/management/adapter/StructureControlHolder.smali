.class public final Lcom/android/systemui/controls/management/adapter/StructureControlHolder;
.super Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final controlAdapter:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

.field public final structureLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/SecStructureViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c27

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->structureLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c2a

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    invoke-direct {v2, v1, p3, p4, p2}, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;I)V

    iput-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/DefaultItemAnimator;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070254

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p4, 0x7f070240

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    if-eqz v0, :cond_1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p2, p0, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/StructureElementWrapper;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->structureLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-boolean v2, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->context:Landroid/content/Context;

    const v3, 0x7f080725

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    iput-object p1, v0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StructureControlHolder;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    iput-object v1, p1, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method
