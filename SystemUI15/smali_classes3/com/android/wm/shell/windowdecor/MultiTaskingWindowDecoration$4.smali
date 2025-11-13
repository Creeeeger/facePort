.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$4;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowElevation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method
