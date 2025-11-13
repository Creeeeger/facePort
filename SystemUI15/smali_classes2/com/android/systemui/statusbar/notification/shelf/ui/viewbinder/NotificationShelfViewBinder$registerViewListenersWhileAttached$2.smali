.class public final Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$registerViewListenersWhileAttached$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$registerViewListenersWhileAttached$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$registerViewListenersWhileAttached$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;->interactor:Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->powerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    const-string v0, "SHADE_CLICK"

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpIfDozing(ILjava/lang/String;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->countOpenNotificationPanelFromLockscreen()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->keyguardTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "NotificationShelfInteractor"

    const-string v0, "goToLockedShadeFromShelf - collapse shade"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/domain/interactor/NotificationShelfInteractor;->shadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1005"

    const-string v0, "Tap more strip"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
