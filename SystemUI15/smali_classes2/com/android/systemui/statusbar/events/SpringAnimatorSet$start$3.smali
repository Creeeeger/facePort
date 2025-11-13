.class public final Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;->this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;->this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->access$checkIfAllAnimationsEnded(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    return-void
.end method

.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet$start$3;->this$0:Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->access$checkIfAllAnimationsEnded(Lcom/android/systemui/statusbar/events/SpringAnimatorSet;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method
