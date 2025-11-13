.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mTouchDown:Landroid/view/MotionEvent;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    instance-of v3, v2, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isTouchOnTheOtherSideOfSecurity(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->avoidGesture()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->mTouchDown:Landroid/view/MotionEvent;

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
