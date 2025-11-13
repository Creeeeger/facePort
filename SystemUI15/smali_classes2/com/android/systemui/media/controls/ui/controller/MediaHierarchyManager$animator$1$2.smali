.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->cancelled:Z

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->cancelled:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->cancelled:Z

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    return-void
.end method
