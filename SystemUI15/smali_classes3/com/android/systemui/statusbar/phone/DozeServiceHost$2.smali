.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPulseSupressed:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v3, v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onNotificationAlerted(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda2;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz p1, :cond_1

    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->hasNotifications()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->run()V

    :cond_2
    return-void
.end method
