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

    .line 4335
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
    .locals 9

    .line 4342
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 4344
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4345
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4346
    .local v1, "motionPosition":I
    const/4 v2, 0x0

    .line 4347
    .local v2, "handledNotifykeyPress":Z
    const/4 v3, 0x0

    .line 4348
    .local v3, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v4, :cond_7

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    .line 4350
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4351
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v5, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4354
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_7

    .line 4356
    :try_start_0
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4358
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4359
    :cond_1
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v6

    move v2, v6

    .line 4363
    :cond_2
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_6

    .line 4365
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4366
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    goto :goto_0

    .line 4367
    :cond_4
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4368
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4369
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 4370
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v6, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V

    .line 4371
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_0

    .line 4373
    :cond_5
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$PerformClick;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v6

    invoke-static {v4, v6, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4381
    :cond_6
    :goto_0
    goto :goto_1

    .line 4379
    :catch_0
    move-exception v4

    .line 4380
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 4384
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    :goto_1
    return-void
.end method
