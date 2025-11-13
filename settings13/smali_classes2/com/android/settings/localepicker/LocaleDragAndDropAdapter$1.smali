.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dragFrom:I

.field dragTo:I

.field private mSelectionStatus:I

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragElevation:F


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput p4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    .line 157
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    .line 158
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    .line 211
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    return-void
.end method

.method private actuallyMoved(II)V
    .locals 0

    const-string p1, "LocaleDragAndDropAdapter"

    const-string p2, "actuallyMoved called"

    .line 179
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmAddLanguageBtnLayout(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 170
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 171
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    if-eq v0, p2, :cond_0

    if-eq p1, v0, :cond_0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->actuallyMoved(II)V

    .line 175
    :cond_0
    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmDragEnabled(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x3

    .line 165
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    .line 219
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    .line 220
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 223
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 230
    :cond_0
    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 231
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 232
    iget v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    .line 231
    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setElevation(F)V

    .line 233
    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_2
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 191
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 194
    iget v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 195
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragFrom:I

    .line 197
    :cond_0
    iput v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->dragTo:I

    .line 199
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 241
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 243
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
