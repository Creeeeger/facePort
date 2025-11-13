.class public final Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final MOVEMENT:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/model/ReorderStructureModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->MOVEMENT:I

    return-void
.end method


# virtual methods
.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->MOVEMENT:I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 15

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a09bb

    invoke-virtual {v5, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object v6, p0

    iget-object v7, v6, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    iget-boolean v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    iget v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    if-ne v8, v9, :cond_0

    float-to-double v11, v1

    float-to-double v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v8, v11

    cmpg-float v8, v10, v8

    if-gez v8, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v8

    iput v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    goto :goto_0

    :cond_0
    iget-boolean v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    if-eqz v8, :cond_1

    cmpg-float v8, v1, v10

    if-nez v8, :cond_3

    cmpg-float v8, v2, v10

    if-nez v8, :cond_3

    :cond_1
    iget v8, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    if-eq v8, v9, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setElevation(F)V

    :cond_2
    iput v9, v7, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    :cond_3
    :goto_0
    cmpl-float v3, v3, v10

    if-lez v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_4

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :cond_4
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    if-gt v0, p1, :cond_1

    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;->this$0:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->isDragging:Z

    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
