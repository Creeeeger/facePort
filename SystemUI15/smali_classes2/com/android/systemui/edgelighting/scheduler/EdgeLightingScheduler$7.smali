.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v2, v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " mOneHandOperationObserver value = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingScheduler"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_1
    return-void
.end method
