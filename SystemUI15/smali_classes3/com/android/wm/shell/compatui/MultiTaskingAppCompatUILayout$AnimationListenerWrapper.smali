.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final mAnimation:Landroid/view/animation/Animation;

.field public mCancel:Z

.field public final mView:Landroid/view/View;

.field public final mVisibility:I

.field public final synthetic this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;Landroid/view/animation/Animation;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mView:Landroid/view/View;

    iput p4, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mVisibility:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mCancel:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mView:Landroid/view/View;

    iget v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object p1, p1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper$1;-><init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$AnimationListenerWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
