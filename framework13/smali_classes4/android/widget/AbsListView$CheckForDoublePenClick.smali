.class final Landroid/widget/AbsListView$CheckForDoublePenClick;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDoublePenClick"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field blacklist x:I

.field blacklist y:I


# direct methods
.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 9938
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 9943
    const/4 v0, 0x0

    .line 9945
    .local v0, "isNeedActionMode":Z
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsFirstPenClick(Landroid/widget/AbsListView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    .line 9946
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemDragSelectedItemSize(Landroid/widget/AbsListView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 9947
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v4, :cond_5

    .line 9949
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemDragSelectedItemArray(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 9950
    .local v3, "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9951
    const/4 v0, 0x1

    .line 9952
    goto :goto_1

    .line 9954
    .end local v3    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 9956
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v4, :cond_3

    .line 9957
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 9958
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v1, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9963
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsSemOnClickEnabled(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v1, :cond_5

    .line 9964
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemDragSelectedItemArray(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 9965
    .restart local v3    # "dragSelectedViewPosition":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9966
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 9967
    .end local v3    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_4
    goto :goto_2

    .line 9970
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    iget v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    invoke-static {v1, v3, v4}, Landroid/widget/AbsListView;->-$$Nest$msemToNotifyMultiSelectionEnded(Landroid/widget/AbsListView;II)V

    .line 9972
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemDragSelectedItemArray(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9973
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->-$$Nest$fputmSemDragSelectedItemSize(Landroid/widget/AbsListView;I)V

    .line 9975
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->-$$Nest$fputmIsFirstPenClick(Landroid/widget/AbsListView;Z)V

    .line 9976
    return-void
.end method
