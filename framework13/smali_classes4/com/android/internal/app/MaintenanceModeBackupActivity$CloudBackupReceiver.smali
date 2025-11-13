.class Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MaintenanceModeBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudBackupReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReceive$0$com-android-internal-app-MaintenanceModeBackupActivity$CloudBackupReceiver(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->-$$Nest$mupdateCloudBackupStatusFromReceiver(Lcom/android/internal/app/MaintenanceModeBackupActivity;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/android/internal/app/MaintenanceModeBackupActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity$CloudBackupReceiver;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 418
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method
