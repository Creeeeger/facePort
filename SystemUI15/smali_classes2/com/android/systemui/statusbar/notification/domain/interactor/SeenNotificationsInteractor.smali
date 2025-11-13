.class public final Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final hasFilteredOutSeenNotifications:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final notificationListRepository:Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;->notificationListRepository:Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;->hasFilteredOutSeenNotifications:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;->hasFilteredOutSeenNotifications:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
