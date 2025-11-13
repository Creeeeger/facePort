.class public final Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activeNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

.field public final bubbles:Ljava/util/Optional;

.field public final headsUpNotificationIconInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;

.field public final keyguardViewStateRepository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;",
            "Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->activeNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->bubbles:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->headsUpNotificationIconInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->keyguardViewStateRepository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;

    return-void
.end method

.method public static filteredNotifSet$default(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZI)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 11

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 p1, p4, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, p2

    :goto_2
    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_3

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    move v8, v0

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_5

    move v9, v0

    goto :goto_5

    :cond_5
    move v9, p3

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->activeNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->topLevelRepresentativeNotifications:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->headsUpNotificationIconInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;->isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->keyguardViewStateRepository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p4, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;

    const/4 v10, 0x0

    move-object v2, p4

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZZZZLkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    return-object p0
.end method
