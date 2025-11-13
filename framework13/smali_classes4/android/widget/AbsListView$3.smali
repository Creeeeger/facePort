.class Landroid/widget/AbsListView$3;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AbsListView;

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 4707
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 4710
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V

    .line 4711
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4712
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4713
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4714
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmIsDetaching(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    .line 4715
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmForcedClick(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4716
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$3;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4718
    :cond_2
    return-void
.end method
