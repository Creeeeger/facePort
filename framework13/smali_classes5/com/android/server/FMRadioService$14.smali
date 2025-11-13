.class Lcom/android/server/FMRadioService$14;
.super Landroid/content/BroadcastReceiver;
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
.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .line 1198
    iput-object p1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1200
    const-string v0, "mute"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1201
    .local v0, "AllSoundOff":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllSoundOffReceiver :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1203
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1204
    const-string v1, "FM chip mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1206
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    goto :goto_0

    .line 1209
    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1210
    const-string v2, "FM chip unmute"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, Lcom/android/server/FMRadioService$14;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1213
    :cond_1
    :goto_0
    return-void
.end method
