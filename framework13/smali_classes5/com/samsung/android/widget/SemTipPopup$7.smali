.class Lcom/samsung/android/widget/SemTipPopup$7;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 931
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 934
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fputmState(Lcom/samsung/android/widget/SemTipPopup;I)V

    .line 935
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopup(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopup(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v3}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmParentView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v4}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopupX(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup$7;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v5}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBalloonPopupY(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v5

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    .line 942
    :cond_1
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 943
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 945
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 947
    :cond_2
    return v2
.end method
