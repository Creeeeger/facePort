.class Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;
.super Landroid/os/Handler;
.source "GetJumpToAppResultAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Landroid/os/Looper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    invoke-static {}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$misIndexingComplete(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$fgetmKeyword(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$mstartSearch(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$fputmResult(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction$1;->this$0:Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;->-$$Nest$fgetmLatch(Lcom/samsung/android/settings/bixby/target/GetJumpToAppResultAction;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
