.class public final Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $after:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/util/Property;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->aodUiAnimationPlaying:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$after:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
