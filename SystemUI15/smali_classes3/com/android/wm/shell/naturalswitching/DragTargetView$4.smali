.class public final Lcom/android/wm/shell/naturalswitching/DragTargetView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;->this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$4;->this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
