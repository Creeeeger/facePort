.class public final Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 10

    const-string v0, "SNPC"

    const-string v1, "Package "

    const-string v2, "SNPC.onProjectionStart"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->updateProjectionStateAndNotifyListeners(Landroid/media/projection/MediaProjectionInfo;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v2

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger$logProjectionStart$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger$logProjectionStart$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result p0

    const/4 v8, 0x1

    xor-int/2addr p0, v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;

    invoke-direct {v3, v1, v2, p1, p0}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;-><init>(JIZ)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mActiveMediaProjectionSession:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mSessionId:J

    iget v6, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mProjectionAppUid:I

    iget-boolean v7, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mExempt:Z

    const/4 v9, 0x1

    const/16 v3, 0x33e

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 11

    const-string p1, "SNPC.onProjectionStop"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mLogger:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger$logProjectionStop$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger$logProjectionStop$2;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "SNPC"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mActiveMediaProjectionSession:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mSessionId:J

    iget v7, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mProjectionAppUid:I

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;->mExempt:Z

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/16 v4, 0x33e

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIZII)V

    iput-object v3, p1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mActiveMediaProjectionSession:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$SensitiveNotificatioMediaProjectionSession;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->updateProjectionStateAndNotifyListeners(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
