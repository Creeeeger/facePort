.class Lcom/android/server/FMRadioService$10;
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

    .line 1050
    iput-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist off()V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    const-string v0, "mSystemReceiver1 force stop : making off FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 1085
    :goto_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_1

    .line 1087
    :cond_1
    const-string v0, "mSystemReceiver1 : remove audiofocus"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioFocusListener(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1090
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1052
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.DONT_KILL_APP"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1055
    .local v1, "extraDontKillApp":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1056
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    .line 1058
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1059
    :cond_0
    const-string v5, "com.sec.android.app.fm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1060
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportSamsungFMRadioLib"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "jp.radiko.plusfm.player"

    .line 1061
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "jp.radiko.radio.player"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1062
    :cond_1
    iget-object v5, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsForcestop(Lcom/android/server/FMRadioService;Z)V

    .line 1063
    iget-object v5, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    iput-boolean v2, v5, Lcom/android/server/FMRadioService;->mIsAudioFocusAlive:Z

    .line 1064
    invoke-direct {p0}, Lcom/android/server/FMRadioService$10;->off()V

    .line 1065
    iget-object v5, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1066
    iget-object v5, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputvolumeLock(Lcom/android/server/FMRadioService;Z)V

    .line 1067
    iget-object v2, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$mreleaseAudioSystemMute(Lcom/android/server/FMRadioService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    nop

    .line 1075
    return-void

    .line 1071
    :catch_0
    move-exception v2

    .line 1072
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException in mSystemReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FMRadioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method
