.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public dragFrom:I

.field public dragTo:I

.field public mSelectionStatus:I

.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field public final synthetic val$dragElevation:F


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    return-void
.end method


# virtual methods
.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    if-eq v0, p2, :cond_1

    if-eq p1, v0, :cond_1

    const-string p1, "LocaleDragAndDropAdapter"

    const-string v0, "actuallyMoved called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v0, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mAddLanguageBtnLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    return-void
.end method

.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :cond_0
    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setElevation(F)V

    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_2
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iput v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    :cond_0
    iput v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p3

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/16 p0, 0x29

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onSelectedChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method
