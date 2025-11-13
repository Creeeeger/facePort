.class public final Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mRunWithoutInterruptions:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final synthetic val$isAppearing:Z

.field public final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;

.field public final synthetic val$onStartedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onStartedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mRunWithoutInterruptions:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startAppearAnim end"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivatableNotificationView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mRunWithoutInterruptions:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    sget v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mRunWithoutInterruptions:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onStartedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mRunWithoutInterruptions:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method
