.class public final Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$animations:Ljava/util/ArrayList;

.field public final synthetic val$animator:Landroid/animation/ValueAnimator;

.field public final synthetic val$onAnimFinish:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$animations:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$animator:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$onAnimFinish:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$animations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$1;->val$onAnimFinish:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
