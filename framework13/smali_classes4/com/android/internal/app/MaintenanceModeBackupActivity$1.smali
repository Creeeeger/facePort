.class Lcom/android/internal/app/MaintenanceModeBackupActivity$1;
.super Ljava/util/TimerTask;
.source "MaintenanceModeBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeBackupActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeBackupActivity;

    .line 291
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$run$0$com-android-internal-app-MaintenanceModeBackupActivity$1()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->-$$Nest$mupdateCloudBackupStatusFromProvider(Lcom/android/internal/app/MaintenanceModeBackupActivity;)V

    .line 298
    return-void
.end method

.method public whitelist test-api run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->-$$Nest$fgetmIsCloudBackupSupported(Lcom/android/internal/app/MaintenanceModeBackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeBackupActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeBackupActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/android/internal/app/MaintenanceModeBackupActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MaintenanceModeBackupActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeBackupActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeBackupActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 303
    :cond_0
    :goto_0
    return-void
.end method
