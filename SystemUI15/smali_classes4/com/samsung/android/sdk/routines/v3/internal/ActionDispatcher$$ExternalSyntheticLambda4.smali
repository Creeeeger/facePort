.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/edgelighting/routine/EdgelightingRoutineActionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda4;->f$6:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v4, "EdgelightingRoutineActionHandler"

    if-nez v0, :cond_0

    const-string v0, "effect_key"

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getParameterLabel param="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mTitleStrID:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_0
    const-string v0, "getLabelParam text is empty"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1305a9

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->CONFIG_LABEL_PARAMS:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
