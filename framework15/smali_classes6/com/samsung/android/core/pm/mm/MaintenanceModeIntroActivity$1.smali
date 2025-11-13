.class Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;
.super Ljava/util/TimerTask;
.source "MaintenanceModeIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$z-V7TY-Twv9SnVjXJPhIYfa3naI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->lambda$run$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$run$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$mupdateCloudBackupStatusFromProvider(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmIsCloudBackupSupported(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
