.class Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->mLastOffset:I

    sub-int v1, v0, v1

    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v1, v2

    :cond_1
    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iput v0, v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->mLastOffset:I

    return-void
.end method
