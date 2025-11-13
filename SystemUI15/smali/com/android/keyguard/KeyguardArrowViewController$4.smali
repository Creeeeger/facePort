.class public final Lcom/android/keyguard/KeyguardArrowViewController$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iput v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {p1, v1, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->-$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget v1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    iput v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {p1, v3, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-static {p0, v3}, Lcom/android/keyguard/KeyguardArrowViewController;->-$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    const/4 p0, 0x0

    return p0
.end method
