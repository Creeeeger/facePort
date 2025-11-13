.class Lcom/samsung/android/widget/SemTipPopup$2;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V
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

    .line 383
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fputmState(Lcom/samsung/android/widget/SemTipPopup;I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmState(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsShowing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const-string v2, "onDismiss - BalloonPopup"

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$2;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdismissBubble(Lcom/samsung/android/widget/SemTipPopup;Z)V

    .line 393
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 395
    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$sfputmHandler(Landroid/os/Handler;)V

    .line 397
    :cond_1
    return-void
.end method
