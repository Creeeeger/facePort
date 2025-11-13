.class Lcom/android/server/FMRadioService$8;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    .line 972
    iput-object p1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioFocusChange(I)V
    .locals 9
    .param p1, "focusChange"    # I

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const-wide/16 v1, 0x64

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, -0x2

    if-eqz v0, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v5, :cond_1

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v4, v0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    .line 977
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 978
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$msetDelay(Lcom/android/server/FMRadioService;J)V

    .line 980
    :cond_1
    const/4 v0, 0x0

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_5

    :cond_2
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 981
    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetFEATURE_INDIRECT_MODE(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 982
    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v6, v4}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 983
    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$minDirectModeBroadcast(Lcom/android/server/FMRadioService;)V

    .line 985
    :cond_3
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 986
    const-string v6, "onAudioFocusChange : set mute"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 987
    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v6, v4}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 989
    const-string/jumbo v6, "ro.board.platform"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "universal3830"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 991
    const-string/jumbo v6, "set 100ms delay for only universal3830 chipset"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 992
    iget-object v6, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6, v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$msetDelay(Lcom/android/server/FMRadioService;J)V

    .line 998
    :cond_4
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v1, v7, :cond_5

    .line 999
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v0}, Lcom/android/server/FMRadioService;->-$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V

    .line 1003
    :cond_5
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eq p1, v3, :cond_6

    if-ne p1, v5, :cond_8

    .line 1004
    :cond_6
    const-string v1, "OnAudioFocusChangeListener : mute FM before turn off"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1006
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    .line 1008
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1, v0}, Lcom/android/server/FMRadioService;->-$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->off()Z

    .line 1013
    :cond_7
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "g_fmradio_mute=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1015
    :cond_8
    if-ne p1, v4, :cond_9

    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioFocusHandler(Lcom/android/server/FMRadioService;)Lcom/android/server/FMRadioService$AudioFocusHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/FMRadioService$AudioFocusHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1016
    :cond_9
    iget-object v0, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$mclearMessageQueue(Lcom/android/server/FMRadioService;)V

    .line 1018
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1019
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1020
    iget-object v1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioFocusHandler(Lcom/android/server/FMRadioService;)Lcom/android/server/FMRadioService$AudioFocusHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1022
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch off mAudioFocusListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stored freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1025
    :cond_b
    return-void
.end method
