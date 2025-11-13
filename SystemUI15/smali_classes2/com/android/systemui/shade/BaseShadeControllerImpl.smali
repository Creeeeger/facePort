.class public abstract Lcom/android/systemui/shade/BaseShadeControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeController;


# instance fields
.field public final assistManagerLazy:Ldagger/Lazy;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final postCollapseActions:Ljava/util/ArrayList;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p3, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p4, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->assistManagerLazy:Ldagger/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->postCollapseActions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final animateExpandQs()V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->isShadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->expandToQs()V

    :cond_0
    return-void
.end method

.method public final animateExpandShade()V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->isShadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->expandToNotifications()V

    :cond_0
    return-void
.end method

.method public abstract expandToNotifications()V
.end method

.method public abstract expandToQs()V
.end method

.method public final onClosingFinished$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->runPostCollapseActions()V

    iget-object v0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    :cond_1
    return-void
.end method

.method public final runPostCollapseActions()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->postCollapseActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->postCollapseActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
