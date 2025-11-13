.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;)V
    .locals 0

    .line 2248
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2251
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2252
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    .line 2254
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2255
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1502(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I

    .line 2256
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->val$forwardDistance:I

    neg-int v5, v5

    .line 2257
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x359

    goto :goto_0

    :cond_1
    const/16 v0, 0x22d

    :goto_0
    move v6, v0

    .line 2256
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2258
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;->this$2:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1;->this$1:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 2259
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1$1;

    invoke-direct {v1, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1$1;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$5$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
