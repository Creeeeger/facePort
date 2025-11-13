.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    const-string p1, "VisibilityTransition"

    const-string v0, "onTransitionCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->$view:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->access$endAction(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    const-string p1, "VisibilityTransition"

    const-string v0, "onTransitionEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;->$view:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->access$endAction(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V

    return-void
.end method
