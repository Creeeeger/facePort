.class public final Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v3, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    invoke-interface {v1}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeViewController;->updateTouchableRegion()V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v3, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    invoke-interface {v1}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isTracking()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpAnimatingAway(Z)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    goto :goto_2

    :cond_3
    :goto_1
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v4, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    if-eqz p1, :cond_4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method
