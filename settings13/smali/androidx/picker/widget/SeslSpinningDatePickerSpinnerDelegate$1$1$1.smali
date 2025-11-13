.class Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1817
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->this$1:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->this$1:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$700(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$600(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    .line 1820
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->this$1:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$802(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;I)I

    .line 1821
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->this$1:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->access$400(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->val$forwardDistance:I

    neg-int v5, v0

    const/16 v6, 0x22d

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1823
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;->this$2:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1;->this$1:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1824
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
