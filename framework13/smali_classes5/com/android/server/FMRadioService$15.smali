.class Lcom/android/server/FMRadioService$15;
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

    .line 1229
    iput-object p1, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1232
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1233
    const-string v0, "mDNDStatusReceiver onReceive : DND Enable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_0

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsMute(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1240
    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1242
    .local v0, "volume":I
    if-eqz v0, :cond_2

    .line 1243
    iget-object v1, p0, Lcom/android/server/FMRadioService$15;->this$0:Lcom/android/server/FMRadioService;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 1245
    .end local v0    # "volume":I
    :cond_2
    const-string v0, "mDNDStatusReceiver onReceive : DND Disable "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1247
    :cond_3
    :goto_0
    return-void
.end method
