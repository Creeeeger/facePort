.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-wide p5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-wide v3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$4:J

    iget-object v5, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v6, "toggle_config_key"

    invoke-virtual {v2, v6, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "isSatisfied() - instanceId : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", apStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", paramVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiApConditionHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget v0, v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->a:I

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->RESULT_INT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    iget v0, v0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->a:I

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
