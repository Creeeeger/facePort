.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$2;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    sget v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method
