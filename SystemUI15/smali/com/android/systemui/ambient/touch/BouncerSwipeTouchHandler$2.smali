.class public final Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, v3, p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, v0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p4, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    invoke-interface {p3}, Lcom/android/systemui/ambient/touch/scrim/ScrimController;->show()V

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCapture:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_3

    return v1

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-nez p3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p4, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p3, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p3

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCentralSurfaces:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->awakenDreams()V

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    iget-object p2, p2, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mTouchSession:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    iget-object p2, p2, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentExpansion:F

    new-instance p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    iget-object p3, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p1, p2, p3, v1}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FZZ)V

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/BouncerSwipeTouchHandler;->mCurrentScrimController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    invoke-interface {p0, p1}, Lcom/android/systemui/ambient/touch/scrim/ScrimController;->expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    return v1
.end method
