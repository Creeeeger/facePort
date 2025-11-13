.class Lcom/samsung/android/allshare/ViewControllerImpl$2;
.super Ljava/lang/Object;
.source "ViewControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewControllerImpl;

    .line 687
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$2;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist controlEvent(Lcom/samsung/android/allshare/EventSync;)V
    .locals 2
    .param p1, "event"    # Lcom/samsung/android/allshare/EventSync;

    .line 690
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$2;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$2;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 693
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 694
    iget v1, p1, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 695
    iget v1, p1, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 696
    iget v1, p1, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 697
    iget-object v1, p1, Lcom/samsung/android/allshare/EventSync;->mStr:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 699
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$2;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v1}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/allshare/ViewControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
