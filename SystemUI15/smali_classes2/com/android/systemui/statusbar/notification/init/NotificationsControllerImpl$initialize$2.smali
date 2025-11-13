.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$2;->$listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerImpl$initialize$2;->$listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsLiveDataStoreRefactor;->$r8$clinit:I

    sget-object p1, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    :cond_0
    return-void
.end method
