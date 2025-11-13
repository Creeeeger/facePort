.class Lcom/android/server/FMRadioService$9;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist currentVolume:J

.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1027
    iput-object p1, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler(g.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1032
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 1033
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 1034
    iget-wide v4, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 1035
    iget-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    .line 1036
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 1037
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/FMRadioService;->-$$Nest$mqueueUpdate(Lcom/android/server/FMRadioService;IJ)V

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    .line 1040
    iget-object v4, p0, Lcom/android/server/FMRadioService$9;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 1041
    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    goto :goto_0

    .line 1044
    :cond_1
    iput-wide v2, p0, Lcom/android/server/FMRadioService$9;->currentVolume:J

    .line 1047
    :cond_2
    :goto_0
    return-void
.end method
