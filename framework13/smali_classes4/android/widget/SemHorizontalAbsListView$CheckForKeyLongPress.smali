.class Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 1

    .line 4411
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 4414
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_4

    .line 4415
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 4416
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4418
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 4419
    return-void

    .line 4422
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v2, v2, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 4423
    const/4 v2, 0x0

    .line 4424
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4425
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v5, v4, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-wide v6, v6, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 4427
    :cond_1
    if-eqz v2, :cond_2

    .line 4428
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 4429
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4431
    .end local v2    # "handled":Z
    :cond_2
    goto :goto_0

    .line 4432
    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 4433
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4436
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    :goto_0
    return-void
.end method
