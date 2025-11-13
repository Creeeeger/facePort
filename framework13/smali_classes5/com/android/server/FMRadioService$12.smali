.class Lcom/android/server/FMRadioService$12;
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

    .line 1130
    iput-object p1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1138
    .local v1, "mLowBatteryWarningLevel":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRadioService:mLowBatteryReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Low batteryWarning Level :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1141
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1142
    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1144
    .local v2, "battStatus":I
    const/16 v4, 0x64

    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1145
    .local v4, "battScale":I
    const-string v5, "level"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1146
    .local v5, "battLevel":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1149
    if-gt v5, v1, :cond_2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    .line 1151
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsBatteryLow(Lcom/android/server/FMRadioService;Z)V

    .line 1152
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1153
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 1154
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1155
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v6}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_0

    .line 1156
    :cond_0
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSeeking(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1157
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v6}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 1160
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    const/4 v7, 0x7

    invoke-static {v6, v7, v3}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_1

    .line 1163
    :cond_2
    iget-object v3, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsBatteryLow(Lcom/android/server/FMRadioService;Z)V

    .line 1166
    .end local v2    # "battStatus":I
    .end local v4    # "battScale":I
    .end local v5    # "battLevel":I
    :cond_3
    :goto_1
    return-void
.end method
