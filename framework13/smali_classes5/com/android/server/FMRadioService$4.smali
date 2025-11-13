.class Lcom/android/server/FMRadioService$4;
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

    .line 648
    iput-object p1, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 650
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    const-string v0, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 653
    .local v0, "isFromBT":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AUDIO_BECOMING_NOISE , Its from BT :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 655
    const-string v2, "DISCONNECT_DOCK"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 656
    .local v1, "isFromDock":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AUDIO_BECOMING_NOISE , Its from Dock :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 659
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 663
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/PlayerExternalChipsetBase;->init(Landroid/hardware/usb/UsbDevice;)V

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 667
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_0

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$4;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    .line 674
    .end local v0    # "isFromBT":Z
    .end local v1    # "isFromDock":Z
    :cond_3
    return-void
.end method
