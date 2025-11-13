.class Landroid/widget/SemHorizontalAbsListView$PerformClick;
.super Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field blacklist mClickMotionPosition:I

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v3, v3, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v3, :cond_7

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v5, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    :try_start_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    :cond_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, v5, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5, v1, v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    if-ne v5, v3, :cond_5

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5, v1, v3}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    invoke-static {v3, v5, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
