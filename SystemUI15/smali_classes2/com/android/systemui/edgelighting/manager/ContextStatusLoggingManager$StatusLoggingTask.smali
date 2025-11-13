.class public final Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTaskContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->sendEdgeLightingSettingsLogging(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->mTaskContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->-$$Nest$msendEdgeLightingStatusLogging(Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextStatusLoggingManager.doInBackground() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendEdgeLightingSettingsLogging(Landroid/content/Context;)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    const-string v3, "EL01"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "1000"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "0"

    invoke-static {v3, v1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, -0x2

    const-string v6, "edge_lighting_show_condition"

    invoke-static {v2, v6, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v3, "EL02"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Off"

    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Always"

    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-ne v2, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "When screen is on"

    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "When screen is off"

    invoke-static {v3, v0, v1}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->makeLoggingContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager$StatusLoggingTask;->this$0:Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->sendStatusContextLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    nop

    :cond_5
    return-void
.end method
