.class Lcom/android/internal/app/MaintenanceModeIntroActivity$1;
.super Ljava/lang/Object;
.source "MaintenanceModeIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeIntroActivity;

    .line 202
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onClick$0$com-android-internal-app-MaintenanceModeIntroActivity$1(Ljava/lang/String;)V
    .locals 2
    .param p1, "backupStatus"    # Ljava/lang/String;

    .line 214
    const-string v0, "NOT_IN_PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$mshowDialogToConfirmRestart(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$mshowDialogToReconfirmCancelingBackup(Lcom/android/internal/app/MaintenanceModeIntroActivity;Ljava/lang/String;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmTurnOnButton(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 220
    return-void
.end method

.method synthetic blacklist lambda$onClick$1$com-android-internal-app-MaintenanceModeIntroActivity$1()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmContext(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/Context;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->getStatusOfBackupInProgress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "backupStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method synthetic blacklist lambda$onClick$2$com-android-internal-app-MaintenanceModeIntroActivity$1()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmContext(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "7066"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmUm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmUm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLowOnStorageForMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$mshowDialogToNotifyLowOnStorage(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmTurnOnButton(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmButtonExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;->this$0:Lcom/android/internal/app/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->-$$Nest$fgetmLoggingExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 224
    return-void
.end method
