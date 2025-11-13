.class public final Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field public final mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

.field public mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

.field public final mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;-><init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    return-void
.end method


# virtual methods
.method public final expireNotiLighting(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string/jumbo v2, "turnToHeadsUp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "expiredNotiLighting: remove="

    const-string v4, "NotificationLightingScheduler"

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " turn to heads up"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->stopNotification(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    invoke-virtual {p0, v5}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->stopNotification(Z)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expiredNotiLighting: invalid expire="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cur="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    invoke-virtual {p0, v5}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->stopNotification(Z)V

    :goto_1
    return-void
.end method

.method public final extendLightingDuration(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result p2

    if-ge p2, p1, :cond_1

    :cond_0
    const-string p2, "NotificationLightingScheduler"

    const-string v0, "extendLightingDuration for verification"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p2, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final flushNotiNow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
