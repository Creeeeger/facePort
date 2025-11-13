.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator$collectionListener$1;

.field private final loggerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;->loggerOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator$collectionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator$collectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator$collectionListener$1;

    return-void
.end method

.method public static final synthetic access$getLoggerOptional$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotificationStatsLoggerCoordinator;->loggerOptional:Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "New code path expects com.android.systemui.notifications_live_data_store_refactor to be enabled."

    invoke-static {p0}, Lcom/android/systemui/flags/RefactorFlagUtils;->assertOnEngBuild(Ljava/lang/String;)V

    return-void
.end method
