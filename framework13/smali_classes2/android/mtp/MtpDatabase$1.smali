.class Landroid/mtp/MtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;

    .line 315
    iput-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    const-string v2, "scale"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V

    .line 321
    const-string v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 323
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2, v1}, Landroid/mtp/MtpDatabase;->-$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V

    .line 325
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/mtp/MtpServer;->sendDevicePropertyChanged(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    goto :goto_0

    .line 329
    :catch_0
    move-exception v2

    .line 330
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "newLevel":I
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_0
    return-void
.end method
