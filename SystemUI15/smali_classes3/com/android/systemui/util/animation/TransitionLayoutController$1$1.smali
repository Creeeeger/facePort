.class final Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/TransitionLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-static {p0}, Lcom/android/systemui/util/animation/TransitionLayoutController;->access$updateStateFromAnimation(Lcom/android/systemui/util/animation/TransitionLayoutController;)V

    return-void
.end method
