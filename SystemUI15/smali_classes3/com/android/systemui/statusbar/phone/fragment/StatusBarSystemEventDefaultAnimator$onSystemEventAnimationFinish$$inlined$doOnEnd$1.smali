.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroidx/core/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->isAnimationRunning:Z

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
