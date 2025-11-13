.class public final Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$start$1$1;->this$0:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$start$1$1;->this$0:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->windowRootViewVisibilityRepository:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    iget-object p2, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/StatusBarState;->SHADE_LOCKED:Lcom/android/systemui/keyguard/shared/model/StatusBarState;

    if-ne p2, v0, :cond_2

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    move-result p0

    move v1, p0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->onLockscreenOrShadeInteractive(IZ)V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->windowRootViewVisibilityRepository:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    invoke-virtual {p0}, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->onLockscreenOrShadeNotInteractive()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
