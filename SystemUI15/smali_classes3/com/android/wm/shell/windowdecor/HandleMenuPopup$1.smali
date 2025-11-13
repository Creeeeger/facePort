.class public final Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsHandleMenuShowing:Z

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mOnTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionButtonPolicy:Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;

    invoke-interface {p1}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->getMenuAnimation()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRootPopupView:Landroid/view/View;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;->this$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->setHandleViewVisibilityIfNeeded(Z)V

    return-void
.end method
