.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic val$animationListener:Landroid/animation/AnimatorListenerAdapter;

.field public final synthetic val$delay:J

.field public final synthetic val$duration:J

.field public final synthetic val$isHeadsUpAnimation:Z

.field public final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;

.field public final synthetic val$onStartedRunnable:Ljava/lang/Runnable;

.field public final synthetic val$translationDirection:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;JJFZLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onStartedRunnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$duration:J

    iput-wide p5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$delay:J

    iput p7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$translationDirection:F

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$isHeadsUpAnimation:Z

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$animationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$duration:J

    iget-wide v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$delay:J

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$translationDirection:F

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$isHeadsUpAnimation:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$animationListener:Landroid/animation/AnimatorListenerAdapter;

    sget-object v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;->BOTTOM:Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$001(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JJFZLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onStartedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
