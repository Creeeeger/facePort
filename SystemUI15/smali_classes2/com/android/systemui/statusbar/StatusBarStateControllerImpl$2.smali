.class public final Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0x17

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :goto_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    sget-object p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->sComparator:Ljava/util/Comparator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    goto :goto_0

    :cond_1
    const/16 p0, 0x17

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    sget-object p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->sComparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->beginInteractionJankMonitor()V

    return-void
.end method
