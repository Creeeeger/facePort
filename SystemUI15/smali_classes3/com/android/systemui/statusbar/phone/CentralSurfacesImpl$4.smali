.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final expandedVisibleChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarterLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CentralSurfaces"

    const-string/jumbo p1, "showBouncerOrLockScreenIfKeyguard, showingBouncer"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    :cond_2
    :goto_0
    return-void
.end method
