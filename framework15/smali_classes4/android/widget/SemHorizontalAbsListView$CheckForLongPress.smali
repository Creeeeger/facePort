.class Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
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

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$WindowRunnnable-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v3, v3, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v6, v6, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    :cond_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_2
    :goto_0
    return-void
.end method
