.class public final Lcom/android/systemui/keyguard/animator/ActionPointerDownHandler;
.super Lcom/android/systemui/keyguard/animator/ActionHandlerType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ActionHandlerType;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->parent:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->setMotionAborted()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    return v1
.end method
