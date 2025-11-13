.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field public final synthetic val$animView:Landroid/view/View;

.field public final synthetic val$duration:J

.field public final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;Landroid/view/View;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$endRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$animView:Landroid/view/View;

    iput-wide p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$duration:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$animView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->val$duration:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    return-void
.end method
