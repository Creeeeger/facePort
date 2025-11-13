.class public final Lcom/android/systemui/qs/QSImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl$1;->this$0:Lcom/android/systemui/qs/QSImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl$1;->this$0:Lcom/android/systemui/qs/QSImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl$1;->this$0:Lcom/android/systemui/qs/QSImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void
.end method
