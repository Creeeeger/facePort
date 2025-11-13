.class public final Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic val$onAnimationEnded:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;->val$onAnimationEnded:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;->val$onAnimationEnded:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;->mCancelled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
