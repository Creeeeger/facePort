.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)V
    .locals 0

    .line 1797
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iput p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1800
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1801
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$202(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$302(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Z)Z

    .line 1806
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$500(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$402(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 1807
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 1808
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$100(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x401599999999999aL    # 5.4

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 1809
    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(II)V

    .line 1810
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1811
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    invoke-direct {v2, p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;I)V

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->val$delay:I

    int-to-long v3, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
