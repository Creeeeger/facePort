.class Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudBackupReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$nMPZgTXPb-EYMZb6lP6FpKgzZoY(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$mupdateCloudBackupStatusFromReceiver(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
