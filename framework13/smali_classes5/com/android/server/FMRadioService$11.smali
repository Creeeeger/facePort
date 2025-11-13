.class Lcom/android/server/FMRadioService$11;
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

    .line 1093
    iput-object p1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist off()V
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    const-string v0, "Powering off : stop FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 1109
    :goto_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_1

    .line 1111
    :cond_1
    const-string v0, "Powering off : remove audiofocus: FM"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService$11;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioFocusListener(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1114
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1095
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/android/server/FMRadioService$11;->off()V

    .line 1099
    :cond_0
    return-void
.end method
