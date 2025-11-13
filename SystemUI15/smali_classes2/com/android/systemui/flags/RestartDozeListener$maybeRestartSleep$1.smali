.class public final Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RestartDozeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->settings:Lcom/android/systemui/util/settings/SecureSettings;

    sget-object v1, Lcom/android/systemui/flags/RestartDozeListener;->Companion:Lcom/android/systemui/flags/RestartDozeListener$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/RestartDozeListener;->RESTART_SLEEP_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Restarting sleep state"

    const-string v1, "RestartDozeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iget-object v2, v0, Lcom/android/systemui/flags/RestartDozeListener;->powerManager:Landroid/os/PowerManager;

    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1$1;-><init>(Lcom/android/systemui/flags/RestartDozeListener;)V

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
