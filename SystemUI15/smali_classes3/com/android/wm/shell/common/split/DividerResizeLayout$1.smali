.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string p1, "onAnimationFinished"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    return-void
.end method
