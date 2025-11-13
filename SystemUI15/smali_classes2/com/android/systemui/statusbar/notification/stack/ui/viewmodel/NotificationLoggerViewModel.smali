.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationLoggerViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activeNotificationRanks:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;

.field public final activeNotifications:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationLoggerViewModel$special$$inlined$map$1;

.field public final isLockscreenOrShadeInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->allRepresentativeNotifications:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$2;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationLoggerViewModel$special$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationLoggerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->activeNotificationRanks:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;

    iget-object p0, p3, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->isLockscreenOrShadeVisibleAndInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
