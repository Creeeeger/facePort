.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$1;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->SWIPE_DISMISS:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, v0, p1}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V

    return-void
.end method
