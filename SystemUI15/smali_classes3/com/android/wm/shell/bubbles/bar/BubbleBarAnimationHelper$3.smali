.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$3;
.super Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$3;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$3;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
