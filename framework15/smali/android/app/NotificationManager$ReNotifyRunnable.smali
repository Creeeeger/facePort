.class final Landroid/app/NotificationManager$ReNotifyRunnable;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReNotifyRunnable"
.end annotation


# instance fields
.field private blacklist mId:I

.field private blacklist mNotification:Landroid/app/Notification;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mUpdateTime:J

.field private blacklist mUser:Landroid/os/UserHandle;

.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    iput-object p5, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    iput-object p6, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    iput-wide p7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    iget-object v0, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    iget-object v0, v0, Landroid/app/NotificationManager;->mNMLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    iget-object v2, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v2}, Landroid/app/NotificationManager;->-$$Nest$fgetmOverflowNotiUpdateTimeMap(Landroid/app/NotificationManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-wide v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received notification posted with delay. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update lastUpdateTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUpdateTime:J

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetFORMATTER()Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    invoke-static {v3}, Landroid/app/NotificationManager;->-$$Nest$fgetmContext(Landroid/app/NotificationManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mTag:Ljava/lang/String;

    iget v5, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mId:I

    iget-object v6, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->this$0:Landroid/app/NotificationManager;

    iget-object v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mNotification:Landroid/app/Notification;

    invoke-static {v6, v7}, Landroid/app/NotificationManager;->-$$Nest$mfixNotification(Landroid/app/NotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Landroid/app/NotificationManager$ReNotifyRunnable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
