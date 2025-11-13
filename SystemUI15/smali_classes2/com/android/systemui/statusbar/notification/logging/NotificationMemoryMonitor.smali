.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final notificationMemoryDumper:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;

.field public final notificationMemoryLogger:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->notificationMemoryDumper:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->notificationMemoryLogger:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    const-string v0, "NotificationMemoryMonitor initialized."

    const-string v1, "NotificationMemory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->notificationMemoryDumper:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v3, "NotificationMemoryDumper"

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    const-string v0, "Registered dumpable."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMonitor;->notificationMemoryLogger:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->statsManager:Landroid/app/StatsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->backgroundExecutor:Ljava/util/concurrent/Executor;

    const/16 v2, 0x27be

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method
