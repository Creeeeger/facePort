.class public final Lcom/android/wm/shell/common/split/DividerPanelView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final synthetic val$canAddToAppPair:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanelView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$2;->val$canAddToAppPair:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$2;->val$canAddToAppPair:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
