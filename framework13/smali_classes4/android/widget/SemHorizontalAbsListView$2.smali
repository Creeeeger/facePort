.class Landroid/widget/SemHorizontalAbsListView$2;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 6211
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 6214
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fputmTouchModeReset(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)V

    .line 6215
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6216
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6217
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    .line 6218
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmIsDetaching(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6219
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    .line 6221
    :cond_1
    return-void
.end method
